-- Modificar a venta
-- Actualizar nombres
CREATE OR REPLACE PROCEDURE miscompras.pc_registrar_nuevo_cliente(p_nombre VARCHAR(100), p_apellido VARCHAR(80), p_email VARCHAR(70))
LANGUAGE plpgsql AS
$$
BEGIN
    INSERT INTO miscompas.cliente(nombre, apellidos, celular, direccion, correo_electronico)
    VALUES(INITCAP(TRIM(p_nombre)), INITCAP(TRIM(p_apellido), p_celular, TRIM(p_direccion), TRIM(p_email)));
    RAISE NOTICE 'Se registro el usuario % exitosmente', p_email;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Error al registrar el nuevo usuario, el usuario ya
        se encuentra registrado';
END;
$$;