<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to Spring Web MVC Project</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .content-wrapper {
            flex: 1;
        }
        .jumbotron-custom {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            padding: 3rem 0;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 1rem 0;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">My Spring MVC Project</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="ajaxCall('careers.fin?cmdAction=loadAbout', '#root')">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="ajaxCall('careers.fin?cmdAction=loadLife', '#root')">Life at NJ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="ajaxCall('careers.fin?cmdAction=loadOpenings', '#root')">Job Opportunity</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="ajaxCall('careers.fin?cmdAction=loadAddVacancy', '#root')">Add Vacancy</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content Section -->
    <div class="content-wrapper">
        <div id="root" class="container mt-5">
            <div class="jumbotron jumbotron-custom text-center">
                <h1 class="display-4 mb-4">Welcome to Spring Web MVC Project</h1>
                <p class="lead mb-4">This is a simple home page template built with Bootstrap for a Spring Web MVC application.</p>
                <hr class="my-4">
                <p class="mb-4">To display a different welcome page, modify <code>index.jsp</code> or update the redirection in <code>redirect.jsp</code> and <code>web.xml</code>.</p>
                <a class="btn btn-light btn-lg" href="#" role="button">Learn more</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer text-center py-3">
        <div class="container">
            <p class="mb-0">&copy; 2024 My Spring MVC Project. All rights reserved.</p>
            <div class="mt-2">
                <a href="#" class="text-white mx-2">Privacy Policy</a>
                <a href="#" class="text-white mx-2">Terms of Service</a>
                <a href="#" class="text-white mx-2">Contact</a>
            </div>
        </div>
    </footer>

    <!-- Bootstrap 5 JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="js/validation.js"></script>
    <script src="js/common.js"></script>
    
</body>
</html>