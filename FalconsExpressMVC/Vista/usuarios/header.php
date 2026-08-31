<?php
require_once("layouts/usuarios/header.php");
?>
<h1 class="text-center">EDITAR</h1>
<form action="" method="get">
    <?php
    foreach($dato as $key => $value):
        foreach($value as $v):
        ?>
        
        <input type="text" value="<?php echo $v['tipoDocUsuario'] ?>" name="tipoDocUsuario"> <br>
        <input type="text" value="<?php echo $v['numdocUsuario'] ?>" name="numdocUsuario"> <br>
        <input type="text" value="<?php echo $v['nombreUsuario'] ?>" name="nombreUsuario"> <br>
        <input type="text" value="<?php echo $v['apellidoUsuario'] ?>" name="apellidoUsuario"> <br>
        <input type="text" value="<?php echo $v['direccionUsuario'] ?>" name="direccionUsuario"> <br>
        <input type="text" value="<?php echo $v['telefonoUsuario'] ?>" name="telefonoUsuario"> <br>
        <input type="text" value="<?php echo $v['correoUsuario'] ?>" name="correoUsuario"> <br>
        <input type="text" value="<?php echo $v['passwordUsuario'] ?>" name="passwordUsuario"> <br>
        <input type="text" value="<?php echo $v['estadoUsuario'] ?>" name="estadoUsuario"> <br>
        
        <input type="hidden" value="<?php echo $v['idUsuario'] ?>" name="idUsuario"> <br>

        <input type="submit" class="btn" name="btn" value="ACTUALIZAR"> <br>
        <input type="hidden" name="m" value="actualizar">
        <?php
        endforeach;
    endforeach;
    ?>
</form>
 
<?php
require_once("layouts/usuarios/footer.php");

