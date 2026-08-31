<?php
require_once("Modelo/index.php");
class modeloController{
    private $model;
    public function __construct(){
        $this->model = new Modelo();
    }
    // mostrar
    static function index(){
        $producto   = new Modelo();
        $dato       =   $producto->mostrar("producto","1");
        require_once("Vista/productos/index.php");
    }
    //nuevo
    static function nuevo(){        
        require_once("Vista/productos/nuevo.php");
    }
    //guardar
    static function guardar(){

        $descripProducto= $_REQUEST['descripProducto'];
        $precioProducto= $_REQUEST['precioProducto'];
        $categoriaProducto= $_REQUEST['categoriaProducto'];
        $estadoProducto= $_REQUEST['estadoProducto'];

        $data = "'".$descripProducto."','".$precioProducto."','".$categoriaProducto."',
        ".$estadoProducto;
        $producto = new Modelo();
        $dato = $producto->insertar("producto",$data);
        header("location:".urlsite);
    }



    //editar
    static function editar(){    
        $idProducto = $_REQUEST['idProducto'];
        $producto = new Modelo();
        $dato = $producto->mostrar("producto","idProducto=".$idProducto);        
        require_once("Vista/productos/editar.php");
    }
    //actualizar
    static function actualizar(){

        $idProducto = $_REQUEST['idProducto'];
        $descripProducto= $_REQUEST['descripProducto'];
        $precioProducto= $_REQUEST['precioProducto'];
        $categoriaProducto= $_REQUEST['categoriaProducto'];
        $estadoProducto= $_REQUEST['estadoProducto'];

        $data = "descripProducto='".$descripProducto."', precioProducto='".$precioProducto."',
        categoriaProducto='".$categoriaProducto."',estadoProducto=".$estadoProducto;
        $producto = new Modelo();
        $dato = $producto->actualizar("producto",$data,"idProducto=".$idProducto);
        header("location:".urlsite);
    }
 
    //eliminar
    static function eliminar(){    
        $idProducto = $_REQUEST['idProducto'];
        $producto = new Modelo();
        $dato = $producto->eliminar("producto","idProducto=".$idProducto);
        header("location:".urlsite);
    }
 
}
