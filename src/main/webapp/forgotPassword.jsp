<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Forgot Password - EduCanvas</title>
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

        <!-- Login Section -->
        <div class="container d-flex align-items-center justify-content-center" style="min-height: calc(100vh - 76px)">
            <div class="form-card">
                <h2 class="text-center mb-4">Forgot Password</h2>
                <p class="text-center text-muted mb-4">Please enter your email address and we'll send you a link to reset your password.</p>

                <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <%= request.getAttribute("error") %>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                <% } %>

                <% if(request.getAttribute("message") != null) { %>
                    <div class="alert alert-success">
                        <%= request.getAttribute("message") %>
                    </div>
                    <% } %>
                    
                <form action="forgotPassword" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" required />
                        <small class="form-text text-muted">Enter your email address and we'll send you a link to reset your password.</small>
                    </div>

                    <div class="d-flex justify-content-between mb-4">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <a href="login.jsp" class="btn btn-link">Back to Login</a>
                    </div>
                </form>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html> 