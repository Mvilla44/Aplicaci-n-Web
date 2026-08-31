<?php
require_once("Vista/layouts/pedidos/header.php");
?>
<h1 class="text-center">EDITAR</h1>
<form action="" method="get">
    <?php
    foreach($dato as $key => $value):
        foreach($value as $v):
        ?>

        <input type="date" value="<?php echo $v['fechaPedido'] ?>" name="fechaPedido"> <br>
        <input type="time" value="<?php echo $v['horaPedido'] ?>" name="horaPedido"> <br>
        <input type="double" value="<?php echo $v['totalPedido'] ?>" name="totalPedido"> <br>
        <input type="text" value="<?php echo $v['estadoPedido'] ?>" name="estadoPedido"> <br>
        <input type="text" value="<?php echo $v['pedidoaDomicilio'] ?>" name="pedidoaDomicilio"> <br>

        <input type="hidden" value="<?php echo $v['idPedido'] ?>" name="idPedido"> <br>
        
        <input type="submit" class="btn" name="btn" value="ACTUALIZAR"> <br>
        <input type="hidden" name="m" value="actualizar">
        <?php
        endforeach;
    endforeach;
    ?>
</form>
 
<?php
require_once("Vista/layouts/pedidos/footer.php");