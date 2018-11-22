
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
  <head>
  	<title>Список продуктов</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="container">
      <div class="navbar">
        <div class="navbar-inner">
          <ul class="nav">
            <li>
              <a href="/">
                Список продуктов
              </a>
            </li>
          </ul>
        </div>
      </div>
      <h1>Список продуктов</h1>
      <div class="container">
      <div class="pull-right">
        <a href="/form">Добавить продукт</a>
       </div>


            <table class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <td>Название</td>
                        <td>Цена</td>
                        <td>Валюта</td>
                      </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="lp" items="${listProduct}">
                      <tr>

                            <td>${lp.name}</td>
                            <td>${lp.price}</td>
                            <td>${lp.currency}</td>
                        </td>
                      </tr>

        </c:forEach>
        </tbody>
        </table>

    </body>
  </html>
