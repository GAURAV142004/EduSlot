<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Time Table Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
         body {
            font-family: 'Roboto', sans-serif;
        }
        .carousel-inner img {
            height: 400px;
            object-fit: cover;
        }
        .btn-primary, .btn-success {
            transition: transform 0.3s ease;
        }
        .btn-primary:hover, .btn-success:hover {
            transform: scale(1.1);
        }
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        footer {
            background-color: #343a40;
            color: white;
        }
        footer a {
            color: #f8f9fa;
        }
        .faculty-img {
            width: 150px; 
            height: 150px; 
            object-fit: cover; 
            border-radius: 10%; 
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">Time Table Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#faculty-sec">Faculty</a></li>
                    <li class="nav-item"><a class="nav-link" href="#timetable">Timetable</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="assets/img/class.jpg" class="d-block w-100" alt="Lab">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Advanced Classrooms</h5>
                    <p>Experience seamless learning environments</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="assets/img/lab4.jpg" class="d-block w-100" alt="Classroom">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Advanced Labs</h5>
                    <p>Equipped with modern technology to support learning.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <!-- Login Buttons -->
    <div class="text-center mt-4">
        <button id="teacherLoginBtn" class="btn btn-primary btn-lg me-2" data-bs-toggle="modal" data-bs-target="#teacherModal">Teacher Login</button>
        <button id="adminLoginBtn" class="btn btn-success btn-lg" data-bs-toggle="modal" data-bs-target="#adminModal">Admin Login</button>
    </div>

    <!-- Teacher Login Modal -->
    <div class="modal fade" id="teacherModal" tabindex="-1" aria-labelledby="teacherModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="teacherModalLabel">Teacher Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="facultyformvalidation.php" method="POST">
                        <div class="mb-3">
                            <label for="facultyNo" class="form-label">Faculty No.</label>
                            <input type="text" class="form-control" id="facultyNo" name="FN" placeholder="Enter Faculty No.">
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Admin Login Modal -->
    <div class="modal fade" id="adminModal" tabindex="-1" aria-labelledby="adminModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="adminModalLabel">Admin Login</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="adminFormvalidation.php" method="POST">
                        <div class="mb-3">
                            <label for="adminUsername" class="form-label">Username</label>
                            <input type="text" class="form-control" id="adminUsername" name="UN" placeholder="Enter Username">
                        </div>
                        <div class="mb-3">
                            <label for="adminPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="adminPassword" name="PASS" placeholder="Enter Password">
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Timetable Form -->
    <div class="card mx-auto mt-4" style="max-width: 500px;">
        <div class="card-header bg-info text-white text-center">Semester Selection</div>
        <div class="card-body">
            <form action="studentvalidation.php" method="post">
                <div class="mb-3">
                    <select id="select_semester" name="select_semester" class="form-select">
                        <option selected disabled>Select Semester</option>
                        <option value="3">B.Tech II Year (Semester III)</option>
                        <option value="4">B.Tech II Year (Semester IV)</option>
                        <option value="5">B.Tech III Year (Semester V)</option>
                        <option value="6">B.Tech III Year (Semester VI)</option>
                        <option value="7">B.Tech IV Year (Semester VII)</option>
                        <option value="8">B.Tech IV Year (Semester VIII)</option>
                    </select>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Download</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Faculty Section -->
<div id="faculty-sec" class="container text-center mt-5">
    <h2 class="mb-4">Our Faculty</h2>
    <div class="row">
        <div class="col-md-4 d-flex justify-content-center align-items-center">
            <div class="card shadow text-center">
                <div class="d-flex justify-content-center mt-3">
                    <img src="assets/img/faculty/dean1.jpg" class="faculty-img" alt="Dean">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Prof. Bhushan Nandwalkar</h5>
                    <p class="card-text">Acadmic Coordinator, Department of Computer Engineering</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex justify-content-center align-items-center">
            <div class="card shadow text-center">
                <div class="d-flex justify-content-center mt-3">
                    <img src="assets/img/faculty/principal1.jpg" class="faculty-img" alt="Principal">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Dr. Makrand Shahade</h5>
                    <p class="card-text">Head of Department, Department of Computer Engineering</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex justify-content-center align-items-center">
            <div class="card shadow text-center">
                <div class="d-flex justify-content-center mt-3">
                    <img src="assets/img/faculty/chairman.jpg" class="faculty-img" alt="Chairman">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Prof. Umakant Mandawkar</h5>
                    <p class="card-text">Asst. Professor, Department of Computer Engineering</p>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Footer -->
    <footer class="text-center py-3 mt-5 bg-dark text-white">
        <p>&copy; 2024 Time Table Management System. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
