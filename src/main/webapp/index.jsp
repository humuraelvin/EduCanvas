<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>EduCanvas - Online Learning Management System</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="styles/main.css" />
    </head>
    <body>
        <!-- Header -->
        <nav class="navbar navbar-expand-lg bg-white sticky-top">
            <div class="container">
                <a class="navbar-brand" href="#">EduCanvas</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#features">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#cta">CTA</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#testimonials">Testimonials</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-primary ms-2" href="register.jsp">Get Started</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <!-- Hero Section -->
            <div class="row min-vh-100 align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <h1 class="display-4 fw-bold mb-4">Welcome to EduCanvas</h1>
                    <p class="lead mb-4">Your comprehensive platform for seamless assignment submission and classroom management. Join your class, access assignments, and submit work - all in one place.</p>
                    <div class="d-flex gap-3 justify-content-center justify-content-md-start">
                        <a href="register.jsp" class="btn btn-primary btn-lg">Get Started</a>
                        <a href="login.jsp" class="btn btn-outline-primary btn-lg">Sign In</a>
                    </div>
                </div>
                <div class="col-md-6 text-center">
                    <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original-wordmark.svg" alt="Education Illustration" class="img-fluid" style="max-width: 80%" />
                </div>
            </div>

            <!-- Features Section -->
            <div class="row py-5 g-4" id="features">
                <h2 class="text-center mb-5">Why Choose EduCanvas?</h2>

                <div class="col-md-4 text-center">
                    <div class="feature-icon">📚</div>
                    <h3>Easy Class Registration</h3>
                    <p>Join your classes with a simple registration process and access all your course materials instantly.</p>
                </div>

                <div class="col-md-4 text-center">
                    <div class="feature-icon">✍️</div>
                    <h3>Assignment Management</h3>
                    <p>View, track, and submit assignments with ease. Never miss a deadline with our intuitive interface.</p>
                </div>

                <div class="col-md-4 text-center">
                    <div class="feature-icon">📊</div>
                    <h3>Progress Tracking</h3>
                    <p>Monitor your academic progress and get instant feedback on your submissions.</p>
                </div>
            </div>

            <!-- Call to Action Sections -->
            <div class="row py-5" id="cta">
                <div class="col-md-6 mb-4">
                    <div class="bg-white p-4 rounded-3 h-100">
                        <h3 class="text-center mb-4">For Teachers</h3>
                        <ul class="list-unstyled">
                            <li class="mb-3">✓ Create and manage multiple classes</li>
                            <li class="mb-3">✓ Easy assignment creation and grading</li>
                            <li class="mb-3">✓ Track student progress and performance</li>
                            <li class="mb-3">✓ Automated plagiarism detection</li>
                        </ul>
                        <div class="text-center mt-4">
                            <a href="register.jsp?role=teacher" class="btn btn-primary">Join as Teacher</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="bg-white p-4 rounded-3 h-100">
                        <h3 class="text-center mb-4">For Students</h3>
                        <ul class="list-unstyled">
                            <li class="mb-3">✓ Access all course materials in one place</li>
                            <li class="mb-3">✓ Submit assignments with ease</li>
                            <li class="mb-3">✓ Receive instant feedback</li>
                            <li class="mb-3">✓ Track your academic progress</li>
                        </ul>
                        <div class="text-center mt-4">
                            <a href="register.jsp?role=student" class="btn btn-primary">Join as Student</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Testimonials Section -->
            <div class="row py-5" id="testimonials">
                <h2 class="text-center mb-5">What Our Users Say</h2>
                <div class="col-md-4 mb-4">
                    <div class="testimonial-card">
                        <img src="https://i.pravatar.cc/150?img=1" alt="User Avatar" class="testimonial-avatar mb-3" />
                        <h4>Sarah Johnson</h4>
                        <p class="text-muted">Mathematics Teacher</p>
                        <p>"EduCanvas has transformed how I manage my classes. The automated grading features save me hours each week!"</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="testimonial-card">
                        <img src="https://i.pravatar.cc/150?img=2" alt="User Avatar" class="testimonial-avatar mb-3" />
                        <h4>Mike Peters</h4>
                        <p class="text-muted">Computer Science Student</p>
                        <p>"The interface is intuitive, and submitting assignments has never been easier. Great platform!"</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="testimonial-card">
                        <img src="https://i.pravatar.cc/150?img=3" alt="User Avatar" class="testimonial-avatar mb-3" />
                        <h4>Emily Chen</h4>
                        <p class="text-muted">Biology Professor</p>
                        <p>"The ability to provide instant feedback has greatly improved student engagement in my courses."</p>
                    </div>
                </div>
            </div>

            <!-- Final CTA Section -->
            <div class="row py-5 text-center">
                <div class="col-12">
                    <h2 class="mb-4">Ready to Transform Your Learning Experience?</h2>
                    <p class="lead mb-4">Join thousands of teachers and students who are already using EduCanvas</p>
                    <a href="register.jsp" class="btn btn-primary btn-lg">Get Started Now</a>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-white py-4 mt-5">
            <div class="container text-center">
                <p class="mb-0">© 2024 EduCanvas. All rights reserved.</p>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
