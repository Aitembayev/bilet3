<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BILET</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f2f2f2; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
<div style="background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); width: 300px;">
    <h1 style="text-align: center; margin-top: 0;">Bilet</h1>
    <hr>
    <h4 style="margin-top: 0;">Регистрация</h4>
    <form action="/registration" method="post">
        Имя: <input type="text" name="name" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
        Почта: <input type="email" name="email" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
        Номер телефона: <input type="text" name="phoneNumber" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
        Пароль: <input type="password" name="password" style="width: calc(100% - 10px); padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 4px;"><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Зарегистрироваться" style="width: 100%; padding: 10px; border: none; border-radius: 4px; background-color: #007bff; color: #fff; cursor: pointer; transition: background-color 0.3s ease;">
        <a href="/login" style="display: block; text-align: center; margin-top: 10px; color: #007bff; text-decoration: none;">Войти</a>
    </form>
    <#if errorMessage??>
        <h2 style="color: red; text-align: center; margin-top: 10px;">${errorMessage}</h2>
    </#if>
</div>
</body>
</html>
