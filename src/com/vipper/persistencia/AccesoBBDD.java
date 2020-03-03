package com.vipper.persistencia;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccesoBBDD extends Conexion {

	public String verificarPassword(String usuario) throws ClassNotFoundException, SQLException {
		// Declarar las variables
		String sql = "call abogados.verificarPassword(?);";
		CallableStatement st;
		ResultSet rs;
		String password = null;

		// abrir la conexión
		abrirConexion();

		// obtener el comando
		st = miConexion.prepareCall(sql);

		// asignar parámetros
		st.setString(1, usuario);

		// ejecutar el comnado
		rs = st.executeQuery();

		if (rs.next()) {
			password = rs.getString("password");

		}
		// cerra la conexión
		cerrarConexion();
		return password;
	}

}
