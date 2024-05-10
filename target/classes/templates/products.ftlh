<!DOCTYPE html>
<html>
<head>
    <title>BILET</title>
</head>
<body style="font-family: Arial, sans-serif; padding: 20px;">
<h1>BILET | <a href="/login" style="color: #007bff; text-decoration: none;">Войти</a></h1>
<hr>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Выйти" style="padding: 10px; border: none; border-radius: 4px; background-color: #dc3545; color: #fff; cursor: pointer; transition: background-color 0.3s ease;">
</form>
<h4>Товары</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
    <input type="submit" value="Поиск" style="padding: 10px; border: none; border-radius: 4px; background-color: #007bff; color: #fff; cursor: pointer; transition: background-color 0.3s ease;">
</form>
<#list products as product>
    <div style="margin-bottom: 20px;">
        <p><b>${product.title}</b> ${product.price} тг. | <a href="/product/${product.id}" style="color: #007bff; text-decoration: none;">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название объявления: <input type="text" name="title" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
    Описание объявления: <input type="text" name="description" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
    Цена: <input type="number" name="price" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
    Город: <input type="text" name="city" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
    Имя: <input type="text" name="author" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
    Фотография: <input type="file" name="file" style="padding: 10px; margin-bottom: 10px;"><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить товар" style="padding: 10px; border: none; border-radius: 4px; background-color: #007bff; color: #fff; cursor: pointer; transition: background-color 0.3s ease;">
</form>
</body>
</html>
