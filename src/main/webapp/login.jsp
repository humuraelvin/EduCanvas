<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login - EduCanvas</title>
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
                <h2 class="text-center mb-4">Welcome Back</h2>
                <p class="text-center text-muted mb-4">Please login to your account</p>

                <% if (request.getAttribute("error") != null) { %>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <%= request.getAttribute("error") %>
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                <% } %>

                <form action="login" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" required />
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required />
                    </div>

                    <div class="d-flex justify-content-between mb-4">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="remember" />
                            <label class="form-check-label" for="remember">Remember me</label>
                        </div>
                        <a href="login?action=forgotPassword" class="link-primary text-decoration-none">Forgot Password?</a>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 mb-3">Login</button>

                    <p class="text-center mb-0">
                        Don't have an account?
                        <a href="register.jsp" class="link-primary text-decoration-none">Register here</a>
                    </p>
                </form>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
