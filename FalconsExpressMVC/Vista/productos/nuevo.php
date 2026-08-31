<?php
require_once("Vista/layouts/productos/header.php");
?>
<h1 class="text-center">NUEVO</h1>
<form action="" method="get">
    
    <input type="text" placeholder="Ingrese El Nombre Del Producto:" name="descripProducto"> <br>
    <input type="text" placeholder="Ingrese El Precio Del Producto:" name="precioProducto"> <br>
    <input type="text" placeholder="Ingrese La Categoria Del Producto:" name="categoriaProducto"> <br>
    <input type="text" placeholder="Ingrese El Estado Del Producto:" name="estadoProducto"> <br>

    <input type="submit" class="btn" name="btn" value="GUARDAR"> <br>
    <input type="hidden" name="m" value="guardar">
</form>
 
<?php
 require_once("Vista/layouts/productos/footer.php");