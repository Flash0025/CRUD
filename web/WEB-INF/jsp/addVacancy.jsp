<%-- 
    Document   : login
    Created on : Nov 14, 2024, 4:49:00 PM
    Author     : Krishna
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container">
    <div class="form-container">
        <h2 class="text-center">Job Application</h2>
        <form onsubmit="handleAddVacancy()" >
            <div class="mb-3">
                <label for="title" class="form-label">Job Title</label>
                <input type="text" class="form-control" id="title" placeholder="Enter job title" required>
            </div>
            <div class="mb-3">
                <label for="vacancyCount" class="form-label">Vacancy Count</label>
                <input type="text" class="form-control" id="vacancyCount" placeholder="Enter vacancy count" required>
            </div>
            <div class="text-center mt-3">
                <button id="themeToggle" type="submit" class="btn btn-outline-secondary">
                    Submit
                </button>
            </div>
        </form>

    </div>
</div>