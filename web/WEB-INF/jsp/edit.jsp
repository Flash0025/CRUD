<%-- 
    Document   : edit
    Created on : Dec 4, 2024, 9:15:06 PM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h2 class="card-title text-center mb-4">Job Form</h2>
                    <form onsubmit="handleEdit()" >
                        <!-- Job ID Field -->
                        <div class="mb-3">
                            <label for="job_id" class="form-label">Job ID</label>
                            <input type="text" class="form-control" id="job_id"
                                   value="${data.get('job_id')}" placeholder="Enter Job ID" required>
                        </div>

                        <!-- Title Field -->
                        <div class="mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" id="title"
                                   value="${data.get('title')}" placeholder="Enter Job Title" required>
                        </div>

                        <!-- Vacancy Count Field -->
                        <div class="mb-3">
                            <label for="vacancyCount" class="form-label">Vacancy Count</label>
                            <input type="text" class="form-control" id="vacancyCount"
                                   value="${data.get('vacancyCount')}" placeholder="Enter Vacancy Count" required>
                        </div>

                        <!-- Submit Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>