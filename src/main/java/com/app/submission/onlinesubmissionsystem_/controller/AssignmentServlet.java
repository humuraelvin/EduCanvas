package com.app.submission.onlinesubmissionsystem_.controller;

import com.app.submission.onlinesubmissionsystem_.dao.AssignmentDAO;
import com.app.submission.onlinesubmissionsystem_.model.Assignment;
import com.app.submission.onlinesubmissionsystem_.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.File;
import java.time.LocalDate;
import java.nio.file.Paths;
import java.util.UUID;

@WebServlet("/createAssignment")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024, // 1 MB
    maxFileSize = 10 * 1024 * 1024,  // 10 MB
    maxRequestSize = 15 * 1024 * 1024 // 15 MB
)
public class AssignmentServlet extends HttpServlet {
    private static final String UPLOAD_DIRECTORY = "assignment_files";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null || user.getRole() != com.app.submission.onlinesubmissionsystem_.model.Role.INSTRUCTOR) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Create upload directory if it doesn't exist
        String applicationPath = request.getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIRECTORY;
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
        
        // Get form parameters
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String deadline = request.getParameter("deadline");
        String classId = request.getParameter("classId");
        
        // Handle file upload
        String filePath = null;
        Part filePart = request.getPart("assignmentFile");
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            // Generate unique filename to prevent conflicts
            String uniqueFileName = UUID.randomUUID().toString() + "_" + fileName;
            filePath = uploadPath + File.separator + uniqueFileName;
            filePart.write(filePath);
        }

        // Create and save assignment
        Assignment assignment = new Assignment();
        assignment.setTitle(title);
        assignment.setDescription(description);
        assignment.setDeadline(LocalDate.parse(deadline));
        assignment.setInstructor(user);
        assignment.setCreatedBy(user);
        assignment.setFilePath(filePath); // Assuming Assignment class has this field
        
        // Set class ID if provided
        if (classId != null && !classId.isEmpty()) {
            assignment.setClassId(Integer.parseInt(classId)); // Assuming Assignment class has this field
        }

        AssignmentDAO assignmentDAO = new AssignmentDAO();
        assignmentDAO.saveAssignment(assignment);

        response.sendRedirect("instructorDashboard.jsp");
    }
}
