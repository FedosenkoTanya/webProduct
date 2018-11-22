
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
  <head>
  	<title>Добавить продукт</title>
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
      <h1>Добавить продукт</h1>
      <div class="container">
      <form id="messageForm" action="/form" method="post">

        <div class="pull-right">
          <a href="/">
            Список продуктов
          </a>
        </div>
        <label for="name">Название продукта</label>
        <input type="text" id="name" name="name" value="" />
        <label for="price">Цена</label>
        <input type="number" id="price" name="price" value="" />
        <label for="currency">Выберите валюту</label>
        <p><select  id="currency"  name="currency" value="" />
            <option value="USD">USD</option>
            <option selected value="RUB">RUB</option>
            <option value="EUR">EUR</option>
            </select></p>
</textarea>
        <div class="form-actions">
          <input type="submit" value="Добавить" />
        </div>
      </form>
    </div>
    </div>
  </body>
</html>

