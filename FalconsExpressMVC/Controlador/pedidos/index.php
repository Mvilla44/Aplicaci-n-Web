<?php
require_once("Modelo/index.php");
class modeloController{
    private $model;
    public function __construct(){
        $this->model = new Modelo();
    }
    // mostrar
    static function index(){
        $pedido   = new Modelo();
        $dato       =   $pedido->mostrar("pedido","10");
        require_once("Vista/pedidos/index.php");
    }
    //nuevo
    static function nuevo(){        
        require_once("Vista/pedidos/nuevo.php");
    }
    //guardar
    static function guardar(){

        $fechaPedido= $_REQUEST['fechaPedido'];
        $horaPedido= $_REQUEST['horaPedido'];
        $totalPedido= $_REQUEST['totalPedido'];
        $estadoPedido= $_REQUEST['estadoPedido'];
        $pedidoaDomicilio= $_REQUEST['pedidoaDomicilio'];

        $data = "'".$fechaPedido."','".$horaPedido."','".$totalPedido."',
        '".$estadoPedido."',".$pedidoaDomicilio;

        $pedido = new Modelo();
        $dato = $pedido->insertar("pedido",$data);
        header("location:".urlsite);
    }



    //editar
    static function editar(){    
        $idPedido = $_REQUEST['idPedido'];
        $pedido = new Modelo();
        $dato = $pedido->mostrar("pedido","idPedido=".$idPedido);        
        require_once("Vista/pedidos/editar.php");
    }
    //actualizar
    static function actualizar(){

        $idPedido = $_REQUEST['idPedido'];
        $fechaPedido= $_REQUEST['fechaPedido'];
        $horaPedido= $_REQUEST['horaPedido'];
        $totalPedido= $_REQUEST['totalPedido'];
        $estadoPedido= $_REQUEST['estadoPedido'];
        $pedidoaDomicilio= $_REQUEST['pedidoaDomicilio'];

        $data = "fechaPedido='".$fechaPedido."', horaPedido='".$horaPedido."',
        totalPedido='".$totalPedido."',estadoPedido='".$estadoPedido."',pedidoaDomicilio=".$pedidoaDomicilio;
        $pedido = new Modelo();
        $dato = $pedido->actualizar("pedido",$data,"idPedido=".$idPedido);
        header("location:".urlsite);
    }
 
    //eliminar
    static function eliminar(){    
        $idPedido = $_REQUEST['idPedido'];
        $pedido = new Modelo();
        $dato = $pedido->eliminar("pedido","idPedido=".$idPedido);
        header("location:".urlsite);
    }
 
}