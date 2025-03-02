<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Register - EduCanvas</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="styles/main.css" />
    </head>
    <body>
        <!-- Header -->
        <nav class="navbar navbar-expand-lg bg-white">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">EduCanvas</a>
            </div>
        </nav>


        <!-- Register Section -->
        <div class="container d-flex align-items-center justify-content-center mt-5 mb-5" style="min-height: calc(100vh - 76px)">
            <div class="form-card">
                <h2 class="text-center mb-4">Welcome to EduCanvas</h2>
                <p class="text-center text-muted mb-4">Please register an account</p>

                <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <%= request.getAttribute("error") %>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                <% } %>

                <form action="RegisterServlet" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Full Names</label>
                        <input type="text" class="form-control" id="name" name="name" required />
                    </div>
                    
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" required />
                    </div>
                    
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required />
                    </div>
                    
                    <div class="mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select class="form-control" id="role" name="role" required>
                            <option value="STUDENT">Student</option>
                            <option value="INSTRUCTOR">Instructor</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 mb-3">Register</button>

                    <p class="text-center mb-0">
                        Already have an account?
                        <a href="login.jsp" class="link-primary text-decoration-none">Login here</a>
                    </p>
                </form>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
