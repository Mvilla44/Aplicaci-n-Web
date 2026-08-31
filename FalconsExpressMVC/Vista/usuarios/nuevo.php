<?php
require_once("Vista/layouts/usuarios/header.php");
?>
<h1 class="text-center">NUEVO</h1>
<form action="" method="get">
    
    <input type="text" placeholder="Ingrese Tipo De Documento:" name="tipoDocUsuario"> <br>
    <input type="text" placeholder="Ingrese Numero De Documento:" name="numdocUsuario"> <br>
    <input type="text" placeholder="Ingrese Nombre:" name="nombreUsuario"> <br>
    <input type="text" placeholder="Ingrese Apellido:" name="apellidoUsuario"> <br>
    <input type="text" placeholder="Ingrese Dirección:" name="direccionUsuario"> <br>
    <input type="text" placeholder="Ingrese Telefono:" name="telefonoUsuario"> <br>
    <input type="text" placeholder="Ingrese Correo:" name="correoUsuario"> <br>
    <input type="text" placeholder="Ingrese Contraseña:" name="passwordUsuario"> <br>
    <input type="text" placeholder="Ingrese Estado:" name="estadoUsuario"> <br>

    <input type="submit" class="btn" name="btn" value="GUARDAR"> <br>
    <input type="hidden" name="m" value="guardar">
</form>
 
<?php
 require_once("Vista/layouts/usuarios/footer.php");
 