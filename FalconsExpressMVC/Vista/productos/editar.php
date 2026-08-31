<?php
require_once("Vista/layouts/productos/header.php");
?>
<h1 class="text-center">EDITAR</h1>
<form action="" method="get">
    <?php
    foreach($dato as $key => $value):
        foreach($value as $v):
        ?>
        
        <input type="text" value="<?php echo $v['descripProducto'] ?>" name="descripProducto"> <br>
        <input type="text" value="<?php echo $v['precioProducto'] ?>" name="precioProducto"> <br>
        <input type="text" value="<?php echo $v['categoriaProducto'] ?>" name="categoriaProducto"> <br>
        <input type="text" value="<?php echo $v['estadoProducto'] ?>" name="estadoProducto"> <br>

        <input type="hidden" value="<?php echo $v['idProducto'] ?>" name="idProducto"> <br>
        <input type="submit" class="btn" name="btn" value="ACTUALIZAR"> <br>
        <input type="hidden" name="m" value="actualizar">
        <?php
        endforeach;
    endforeach;
    ?>
</form>
 
<?php
require_once("Vista/layouts/productos/footer.php");