<?php
require_once("Modelo/index.php");
class modeloController{
    private $model;
    public function __construct(){
        $this->model = new Modelo();
    }
    // mostrar
    static function index(){
        $usuario   = new Modelo();
        $dato       =   $usuario->mostrar("usuario","10");
        require_once("Vista/usuarios/index.php");
    }
    //nuevo
    static function nuevo(){        
        require_once("Vista/usuarios/nuevo.php");
    }
    //guardar
    static function guardar(){

        $tipoDocUsuario= $_REQUEST['tipoDocUsuario'];
        $numdocUsuario= $_REQUEST['numdocUsuario'];
        $nombreUsuario= $_REQUEST['nombreUsuario'];
        $apellidoUsuario= $_REQUEST['apellidoUsuario'];
        $direccionUsuario= $_REQUEST['direccionUsuario'];
        $telefonoUsuario= $_REQUEST['telefonoUsuario'];
        $correoUsuario= $_REQUEST['correoUsuario'];
        $passwordUsuario= $_REQUEST['passwordUsuario'];
        $estadoUsuario= $_REQUEST['estadoUsuario'];

        $data = "'".$tipoDocUsuario."','".$numdocUsuario."','".$nombreUsuario."','".$apellidoUsuario."',
        '".$direccionUsuario."','".$telefonoUsuario."','".$correoUsuario."','".$passwordUsuario."',".$estadoUsuario;

        $usuario = new Modelo();
        $dato = $usuario->insertar("usuario",$data);
        header("location:".urlsite);
    }



    //editar
    static function editar(){    
        $idUsuario = $_REQUEST['idUsuario'];
        $usuario = new Modelo();
        $dato = $usuario->mostrar("usuario","idUsuario=".$idUsuario);        
        require_once("Vista/usuarios/editar.php");
    }
    //actualizar
    static function actualizar(){

        $idUsuario = $_REQUEST['idUsuario'];
        $tipoDocUsuario= $_REQUEST['tipoDocUsuario'];
        $numdocUsuario= $_REQUEST['numdocUsuario'];
        $nombreUsuario= $_REQUEST['nombreUsuario'];
        $apellidoUsuario= $_REQUEST['apellidoUsuario'];
        $direccionUsuario= $_REQUEST['direccionUsuario'];
        $telefonoUsuario= $_REQUEST['telefonoUsuario'];
        $correoUsuario= $_REQUEST['correoUsuario'];
        $passwordUsuario= $_REQUEST['passwordUsuario'];
        $estadoUsuario= $_REQUEST['estadoUsuario'];

        $data = "tipoDocUsuario='".$tipoDocUsuario."', numdocUsuario='".$numdocUsuario."',
        nombreUsuario='".$nombreUsuario."',apellidoUsuario='".$apellidoUsuario."',
        direccionUsuario='".$direccionUsuario."',telefonoUsuario='".$telefonoUsuario."',
        tipoDocUsuario='".$correoUsuario."',passwordUsuario='".$passwordUsuario."',estadoUsuario=".$estadoUsuario;
        $usuario = new Modelo();
        $dato = $usuario->actualizar("usuario",$data,"idUsuario=".$idUsuario);
        header("location:".urlsite);
    }
 
    //eliminar
    static function eliminar(){    
        $idUsuario = $_REQUEST['idUsuario'];
        $usuario = new Modelo();
        $dato = $usuario->eliminar("usuario","idUsuario=".$idUsuario);
        header("location:".urlsite);
    }
 
}

