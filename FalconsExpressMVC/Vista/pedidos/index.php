<?php
require_once("Vista/layouts/pedidos/header.php");
?>
<a href="index.php?m=nuevo" class="btn">NUEVO</a>
<table>
    <tr>
        <td>ID</td>
        <td>FECHA DEL PEDIDO</td>
        <td>HORA DEL PEDIDO</td>
        <td>TOTAL DEL PEDIDO</td>
        <td>ESTADO DEL PEDIDO</td>
        <td>¿PEDIDO A DOMICILIO?</td>
        <td>ACCIÓN</td>        
    </tr>
    <tbody>
        <?php
            if(!empty($dato)):
                foreach($dato as $key => $value)
                    foreach($value as $v):?>
                    <tr>
                        
                        <td><?php echo $v['idPedido'] ?> </td>
                        <td><?php echo $v['fechaPedido'] ?> </td>
                        <td><?php echo $v['horaPedido'] ?> </td>
                        <td><?php echo $v['totalPedido'] ?> </td>
                        <td><?php echo $v['estadoPedido'] ?> </td>
                        <td><?php echo $v['pedidoaDomicilio'] ?> </td>

                        <td>
                            <a class="btn" href="index.php?m=editar&idPedido=<?php echo $v['idPedido']?>">EDITAR</a>
                            <a class="btn" href="index.php?m=eliminar&idPedido=<?php echo $v['idPedido']?>" onclick="return confirm('ESTA SEGURO'); false">ELIMINAR</a>
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
require_once("Vista/layouts/pedidos/footer.php");
