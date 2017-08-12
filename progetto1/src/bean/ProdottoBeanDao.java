package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Collection;

public class ProdottoBeanDao implements ProdottoBeanDaoInterface {

	private static final String TABLE_NAME = "Prodotto";

	@Override
	public void doSave(ProdottoBean data) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		String insertSQL = "INSERT INTO " + ProdottoBeanDao.TABLE_NAME
				+ " (nome, Tipo, Desc, Prezzo, Disp, Venduti) VALUES (?, ?, ?, ?, ?, ?)";

		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, data.getNome());
			preparedStatement.setString(2, data.getTipo());
			preparedStatement.setString(3, data.getDesc());
			preparedStatement.setDouble(4, data.getPrezzo());
			preparedStatement.setInt(5, data.getDisp());
			preparedStatement.setInt(6, data.getVenduti());
			preparedStatement.executeUpdate();

			connection.commit();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				DriverManagerConnectionPool.releaseConnection(connection);
			}
		}
	}

	@Override
	public ProdottoBean doRetrieveByKey(String nome) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<ProdottoBean> doRetrieveAll(String order) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	@Override
	public void doDelete(ProdottoBean data) throws SQLException {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		String selectSQL = "DELETE FROM " + ProdottoBeanDao.TABLE_NAME + " WHERE nomeprodotto= ?";
		
		try {
			connection = DriverManagerConnectionPool.getConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(selectSQL);
			preparedStatement.setString(1, data.getNome());
			preparedStatement.executeUpdate(); 
			connection.commit();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
			} finally {
				DriverManagerConnectionPool.releaseConnection(connection);
			}
		}
	}

}
