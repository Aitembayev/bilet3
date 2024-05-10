<!DOCTYPE html>
<html>
<head>
    <title>BILET</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f2f2f2; padding: 20px;">
<h1 style="text-align: center;">BILET</h1>
<hr>
<h4 style="margin-top: 0;">Подробная информация о билете</h4>
<#list product.images as img>
    <img src="/images/${img.id}" height="60px" style="margin-bottom: 10px;"><br><br>
</#list>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Удалить товар" style="padding: 10px; border: none; border-radius: 4px; background-color: #dc3545; color: #fff; cursor: pointer; transition: background-color 0.3s ease;">
</form>
</body>
</html>
