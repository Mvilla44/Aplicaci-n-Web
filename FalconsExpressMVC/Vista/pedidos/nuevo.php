<?php
require_once("Vista/layouts/pedidos/header.php");
?>
<h1 class="text-center">NUEVO</h1>
<form action="" method="get">
    
    <input type="date" placeholder="Ingrese La Fecha Del Pedido:" name="fechaPedido"> <br>
    <input type="time" placeholder="Ingrese La Hora Del Pedido:" name="horaPedido"> <br>
    <input type="double" placeholder="Ingrese El Total Del Pedido:" name="totalPedido"> <br>
    <input type="text" placeholder="Ingrese El Estado Del Pedido:" name="estadoPedido"> <br>
    <input type="text" placeholder="¿Es Un Pedido A Domicilio?:" name="pedidoaDomicilio"> <br>

    <input type="submit" class="btn" name="btn" value="GUARDAR"> <br>
    <input type="hidden" name="m" value="guardar">
</form>
 
<?php
 require_once("Vista/layouts/pedidos/footer.php");
 