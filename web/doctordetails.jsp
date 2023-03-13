
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.exavalu.models.Doctor"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--        <link href="css/header.css" rel="stylesheet">-->
        <!--        <link rel="stylesheet" href="css/all.min.css">
                <link rel="stylesheet" href="css/reset-min.css">
                <link rel="stylesheet" href="css/algolia-min.css">
                <link rel="stylesheet" href="css/header.css">
                <link rel="stylesheet" href="css/docs.min.css">
                <link rel="stylesheet" href="css/index.css">-->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu_css.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/product.css" rel="stylesheet">

        <title>Doctor</title>
    </head>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!<!-- I want to check my session before showing any content to the user -->




    <%--<jsp:include page="doctormenu.jsp"></jsp:include>--%>

    <div id="example">
        <script>
            init({
                title: 'Large data',
                desc: 'Use `virtualScroll` to enable the virtual scroll to play with large data sets (10000 rows).',
                links: ['bootstrap-table.min.css'],
                scripts: ['bootstrap-table.min.js']
            })
        </script>

        <!--            <script>
        
        
                        function fetchEmployee(employeeId) {
                            $.ajax({
                                url: 'ShowAllEmployees',
                                method: 'GET',
                                data: {id: employeeId},
                                dataType: 'json',
                                success: function (data) {
                                    // Do something with the retrieved employee data
                                    console.log(data);
                                },
                                error: function (jqXHR, textStatus, errorThrown) {
                                    // Handle any errors that occur during the AJAX request
                                    console.error(textStatus, errorThrown);
                                }
                            });
                        }
        
                    </script>-->


        <form class="form-inline"action="ShowDoctor" method="get">
            <div class="bootstrap-table bootstrap5">
                <div class="fixed-table-toolbar"><div class="bs-bars float-left">

                    </div><div class="columns columns-right btn-group float-right"><div class="keep-open btn-group" title="Columns">
                            <div class="dropdown-menu dropdown-menu-right" style=""><label class="dropdown-item dropdown-item-marker"><input type="checkbox" data-field="id" value="0" checked="checked"> <span>ID</span></label><label class="dropdown-item dropdown-item-marker"><input type="checkbox" data-field="name" value="1" checked="checked"> <span>Item Name</span></label><label class="dropdown-item dropdown-item-marker"><input type="checkbox" data-field="price" value="2" checked="checked"> <span>Item Price</span></label></div></div></div></div>

                <div class="fixed-table-container fixed-height" style="height: 542px; padding-bottom: 50.5px;">

                    <div class="fixed-table-body">
                        <table id="table" data-height="400" data-virtual-scroll="true" class="table table-bordered table-hover" style="margin-top: -9.5px;">
                            <thead>
                                <c:choose>
                                    <c:when test = "${requestScope.noData != null}">
                                        <tr>
                                            <td colspan="5">
                                                <h2 style="border:2px solid rgb(255, 99, 71); background-color:rgba(255, 99, 71, 0.5); font-size:15px;">
                                                    <c:out value="${requestScope.noData}"> </c:out>
                                                    </h2>
                                                </td>
                                            </tr>
                                    </c:when>
                                </c:choose>
                                <tr>
                                    <th>Doctor Id</th>
                                    <th>First Name </th>
                                    <th>Last Name</th>
                                    <th>Phone Number</th>
                                    <th>Email </th>
                                    <th>specialty</th>
                                    <th>experience </th>
                                    <th>schedule </th>
                                    <th>fees</th>
                                    <th>Book Appointment</th>



                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach items='${DoctorList}' var="doctor">
                                    <tr>
                                        <td>${doctor.doctorId}</td>
                                        <td>${doctor.firstName}</td>
                                        <td>${doctor.lastName}</td>
                                        <td>${doctor.phoneNumber}</td>
                                        <td>${doctor.email}</td>
                                        <td>${doctor.speciality}</td>
                                        <td>${doctor.experience}</td>
                                        <td>${doctor.schedule}</td>
                                        <td>${doctor.fees}</td>
                                        <td><a class="btn btn-warning btn-sm active" role="button" aria-pressed="true" href="MakeAppointment?doctorId=${doctor.doctorId}">Book</a></td>

                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                        <div class="fixed-table-footer" style="display: none;"></div>
                    </div>
                    <div class="fixed-table-pagination" style="display: none;"></div>
                </div>
                <div class="clearfix"></div>


                <!--            <div class="form-floating">
                                <select name="stateCode" class="form-select" id="stateCode" onchange="fetchContent('stateCode', 'distCode')" required name="stateCode">
                                    <option value="">Select State</option>
                
                                </select>
                            </div>-->

                <!--            <script>
                                var $table = $('#table')
                                var total = 0
                
                                function getData(number, isAppend) {
                                    if (!isAppend) {
                                        total = 0
                                    }
                                    var data = []
                                    for (var i = total; i < total + number; i++) {
                                        data.push({
                                            'id': i,
                                            'name': 'Item ' + i,
                                            'price': '$' + i
                                        })
                                    }
                                    if (isAppend) {
                                        total += number
                                    } else {
                                        total = number
                                    }
                                    $('#total').text(total)
                                    return data
                                }
                
                                function mounted() {
                                    $table.bootstrapTable({data: getData(20)})
                
                                    $('#load').click(function () {
                                        $table.bootstrapTable('load', getData(10000))
                                    })
                
                                    $('#append').click(function () {
                                        $table.bootstrapTable('append', getData(10000, true))
                                    })
                                }
                            </script>-->

                </html>
