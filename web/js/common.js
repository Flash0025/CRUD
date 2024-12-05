/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function ajaxCall(url, root, method="GET", data="" ,syncFlag=true ) {
    const xhr = new XMLHttpRequest();
    xhr.open(method, url, syncFlag);
    xhr.onload = function() {
        const rootElement = document.querySelector(root);
        rootElement.innerHTML = this.responseText;
    }
    
    xhr.onerror = function() {
        console.log("an error occurred in ajax call ");
    }
    
    if(method === "POST") {
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.send(data);
        return;
    }
    
    xhr.send();
}


function handleAddVacancy() {
    const title = document.getElementById('title').value;
    const vacancyCount = document.getElementById('vacancyCount').value;
    
    if(!validate_text(title)) {
        alert("text must be greater than 4");
        return;
    }
    
    if(!validate_number(vacancyCount)) {
        alert("only number is required");
        return;
    }
    
    const data = `title=${title}&vacancyCount=${vacancyCount}`;
    ajaxCall("careers.fin?cmdAction=addVacancy", "#root", "POST", data);
}


function loadEdit(id) {
    ajaxCall("careers.fin?cmdAction=loadEdit", "#root", "POST", `id=${id}`);
}


function handleEdit() {
    const id = document.getElementById('job_id').value;
    const title = document.getElementById('title').value;
    const vacancyCount = document.getElementById('vacancyCount').value;
    const data = `id=${id}&title=${title}&vacancyCount=${vacancyCount}`
    
    ajaxCall("careers.fin?cmdAction=updateRole", "#root", "POST", data);
}

function handleDelete(id) {
    ajaxCall("careers.fin?cmdAction=deleteRole", "#root", "POST", `id=${id}`);
}