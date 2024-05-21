<!DOCTYPE html>
<html>
<head>
    <title>Tamagochi</title>
</head>
<body>
<h1>Tamagochi</h1>
<h4>Лучшие предложения</h4>
<form action="/" method="get">
    Поиск по названию пиццы: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as products>
    <div>
        <p><b>${products.title}</b> ${products.price} руб. | <a href="/product/${products.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Пиццы нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название пиццы: <input type="text" name="title"/><br><br>
    Описание пиццы: <input type="text" name="description"/><br><br>
    Цена пиццы: <input type="number" name="price"/><br><br>
    Первая фотография: <input type="file" name="file1"/><br><br>
    Вторая фотография: <input type="file" name="file2"/><br><br>
    Третья фотография: <input type="file" name="file3"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>