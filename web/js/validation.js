/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function validate_number(val) {
   const regex = /^[1-9]\d*$/gi;
   return regex.test(val);
}

function isEmpty(val) {
    return (val.trim().length > 4);
}

function validate_text(val) {
    const regex = /^[a-zA-Z ]{3,20}$/gi;
    return regex.test(val.trim());
}