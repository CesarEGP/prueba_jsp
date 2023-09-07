package hola_jsp;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {

	public Connection crearCnx() {
		Connection con = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = null;
			ds = (DataSource) ctx.lookup("java:/jdbc/dbprueba");
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}