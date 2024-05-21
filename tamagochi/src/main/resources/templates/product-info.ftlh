<!DOCTYPE html>
<html>
<head>
    <title>Tamagochi</title>
</head>
<body>
<h1>Tamagochi</h1>
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название пиццы: </b>${product.title}<br>
<b>Описание пиццы: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<hr>
<form action ="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>