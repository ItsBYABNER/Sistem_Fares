<?php 
require_once 'conexionf2.php';
require_once 'fclases.php';

class modificarcliente extends datospersona
{
    const TABLA = 'clientes';

    public function guardar()
    {
        $conexion = new Conexion();
        $nombre = $this->get_nombre();
        $direccion = $this->get_direccion();
        $telresidencial = $this->get_telresi();
        $telcelular = $this->get_telcel();
        $email = $this->get_email();

        $consulta = $conexion->prepare(
            'INSERT INTO ' . self::TABLA . ' (nomcli, direccli, telres_cli, telcel_cli, email_cli) VALUES (:nombre, :direccion, :telresidencial, :telcelular, :email)'
        );
        $consulta->bindParam(':nombre', $nombre);
        $consulta->bindParam(':direccion', $direccion);
        $consulta->bindParam(':telresidencial', $telresidencial);
        $consulta->bindParam(':telcelular', $telcelular);
        $consulta->bindParam(':email', $email);
        $consulta->execute();
        $conexion = null;
    }
}
