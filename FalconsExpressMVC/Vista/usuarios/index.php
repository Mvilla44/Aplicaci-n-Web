<?php
require_once("Vista/layouts/usuarios/header.php");
?>
<a href="index.php?m=nuevo" class="btn">NUEVO</a>
<table>
    <tr>
        <td>ID</td>
        <td>TIPO DOCUMENTO</td>
        <td>NUMERO DOCUMENTO</td>
        <td>NOMBRE USUARIO</td>
        <td>APELLIDO USUARIO</td>
        <td>DIRECCION USUARIO</td>
        <td>TELEFONO USUARIO</td>
        <td>CORREO USUARIO</td>
        <td>CONTRASEÑA USUARIO</td>
        <td>ESTADO USUARIO</td>
        <td>ACCIÓN</td>        
    </tr>
    <tbody>
        <?php
            if(!empty($dato)):
                foreach($dato as $key => $value)
                    foreach($value as $v):?>
                    <tr>
                        
                        <td><?php echo $v['idUsuario'] ?> </td>
                        <td><?php echo $v['tipoDocUsuario'] ?> </td>
                        <td><?php echo $v['numdocUsuario'] ?> </td>
                        <td><?php echo $v['nombreUsuario'] ?> </td>
                        <td><?php echo $v['apellidoUsuario'] ?> </td>
                        <td><?php echo $v['direccionUsuario'] ?> </td>
                        <td><?php echo $v['telefonoUsuario'] ?> </td>
                        <td><?php echo $v['correoUsuario'] ?> </td>
                        <td><?php echo $v['passwordUsuario'] ?> </td>
                        <td><?php echo $v['estadoUsuario'] ?> </td>

                        <td>
                            <a class="btn" href="index.php?m=editar&idUsuario=<?php echo $v['idUsuario']?>">EDITAR</a>
                            <a class="btn" href="index.php?m=eliminar&idUsuario=<?php echo $v['idUsuario']?>" onclick="return confirm('ESTA SEGURO'); false">ELIMINAR</a>
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
require_once("Vista/layouts/usuarios/footer.php");
