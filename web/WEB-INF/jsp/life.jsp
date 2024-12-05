<%-- 
    Document   : life
    Created on : Nov 14, 2024, 4:45:35 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <div class="jumbotron jumbotron-fluid text-center bg-info text-white">
        <div class="container">
            <h1 class="display-4">Life at NJ</h1>
            <p class="lead">Experience a vibrant campus life, surrounded by opportunities to learn, grow, and connect.</p>
        </div>
    </div>

    <!-- Campus Highlights Section -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Campus Highlights</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="campus1.jpg" alt="Library">
                    <div class="card-body">
                        <h5 class="card-title">Library</h5>
                        <p class="card-text">Our state-of-the-art library is a hub of resources and a quiet place for students to focus.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="campus2.jpg" alt="Sports Complex">
                    <div class="card-body">
                        <h5 class="card-title">Sports Complex</h5>
                        <p class="card-text">Stay active and participate in a range of sports in our top-notch facilities.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="campus3.jpg" alt="Cafeteria">
                    <div class="card-body">
                        <h5 class="card-title">Cafeteria</h5>
                        <p class="card-text">Enjoy a wide variety of meals and snacks at our on-campus cafeteria.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials Section -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Student Testimonials</h2>
        <div id="testimonialsCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="d-flex justify-content-center">
                        <blockquote class="blockquote text-center">
                            <p class="mb-0">"Life at NJ is amazing! The campus has everything a student could want, from great facilities to a supportive community."</p>
                            <footer class="blockquote-footer">Jane Doe, <cite title="Source Title">Class of 2025</cite></footer>
                        </blockquote>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="d-flex justify-content-center">
                        <blockquote class="blockquote text-center">
                            <p class="mb-0">"NJ provided me with the best college experience. I've made friends for life and had the chance to explore my interests."</p>
                            <footer class="blockquote-footer">John Smith, <cite title="Source Title">Class of 2023</cite></footer>
                        </blockquote>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#testimonialsCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#testimonialsCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>