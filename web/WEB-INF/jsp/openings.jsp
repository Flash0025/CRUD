<%-- 
    Document   : openings
    Created on : Nov 15, 2024, 7:13:26 AM
    Author     : Krishna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="table-responsive">
    <table class="table table-striped table-hover table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Job ID</th>
                <th>Job Title</th>
                <th>Job Vacancies</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${openings}" >
                <tr>
                    <td>${item.get("job_id")}</td>
                    <td>${item.get("title")}</td>
                    <td>${item.get("vacancyCount")}</td>
                    <td>
                        <button
                            onclick="loadEdit(${item.get('job_id')})"
                            class="btn btn-primary btn-sm me-2" data-bs-toggle="modal" data-bs-target="#editModal">
                            Edit
                        </button>
                        <button
                            onclick="handleDelete(${item.get('job_id')})"
                            class="btn btn-danger btn-sm">
                            Delete
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>