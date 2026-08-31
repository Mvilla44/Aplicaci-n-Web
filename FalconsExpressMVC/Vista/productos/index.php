<?php
require_once("Vista/layouts/productos/header.php");
?>
<a href="index.php?m=nuevo" class="btn">NUEVO</a>
<table>
    <tr>
        <td>ID</td>
        <td>NOMBRE PRODUCTO</td>
        <td>PRECIO PRODUCTO</td>
        <td>CATEGORIA PRODUCTO</td>
        <td>ESTADO PRODUCTO</td>
        <td>ACCIÓN</td>        
    </tr>
    <tbody>
        <?php
            if(!empty($dato)):
                foreach($dato as $key => $value)
                    foreach($value as $v):?>
                    <tr>
                        
                        <td><?php echo $v['idProducto'] ?> </td>
                        <td><?php echo $v['descripProducto'] ?> </td>
                        <td><?php echo $v['precioProducto'] ?> </td>
                        <td><?php echo $v['categoriaProducto'] ?> </td>
                        <td><?php echo $v['estadoProducto'] ?> </td>

                        <td>
                            <a class="btn" href="index.php?m=editar&idProducto=<?php echo $v['idProducto']?>">EDITAR</a>
                            <a class="btn" href="index.php?m=eliminar&idProducto=<?php echo $v['idProducto']?>" onclick="return confirm('ESTA SEGURO'); false">ELIMINAR</a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="11">NO HAY REGISTROS</td>
                </tr>
            <?php endif ?>
    </tbody>
</table>
<?php
require_once("Vista/layouts/productos/footer.php");
