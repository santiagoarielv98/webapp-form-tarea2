<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Buscar producto</title>
</head>
<body>
<h3>Buscar producto</h3>
<form action="${pageContext.request.contextPath}/buscar-producto" method="post">
    <div>
        <label for="producto">Buscar Producto:</label>
        <div>
            <input type="text" name="producto" id="producto">
        </div>
    </div>
    <div>
        <input type="submit" value="buscar">
    </div>
</form>
</body>
</html>