package pl.arturbanasik.addCustomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table book in the database.
 * 
 * @author www.codejava.net
 *
 */
public class BookDAO {
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;

	public BookDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		this.jdbcURL = jdbcURL;
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
	}

	protected void connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
	}

	protected void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}

	public boolean insertBook(Book book) throws SQLException {
		String sql = "INSERT INTO book (imie, nazwisko, adres, telefon) VALUES (?, ?, ? , ?)";
		connect();

		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setString(1, book.getImie());
		statement.setString(2, book.getNazwisko());
		statement.setString(3, book.getAdres());
		statement.setString(4, book.getTelefon());

		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowInserted;
	}

	public List<Book> listAllBooks() throws SQLException {
		List<Book> listBook = new ArrayList<>();

		String sql = "SELECT * FROM book";

		connect();

		Statement statement = jdbcConnection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			int customerid = resultSet.getInt("customerid");
			String imie = resultSet.getString("imie");
			String nazwisko = resultSet.getString("nazwisko");
			String adres = resultSet.getString("adres");
			String telefon = resultSet.getString("telefon");

			Book book = new Book(customerid, imie, nazwisko, adres, telefon);
			listBook.add(book);
		}

		resultSet.close();
		statement.close();

		disconnect();

		return listBook;
	}

	public boolean deleteBook(Book book) throws SQLException {
		String sql = "DELETE FROM book where customerid = ?";

		connect();

		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, book.getCustomerid());

		boolean rowDeleted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowDeleted;
	}

	public boolean updateBook(Book book) throws SQLException {
		String sql = "UPDATE book SET imie = ?, nazwisko = ?, adres = ?, telefon = ? ";
		sql += " WHERE customerid = ?";
		connect();

		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setString(1, book.getImie());
		statement.setString(2, book.getNazwisko());
		statement.setString(3, book.getAdres());
		statement.setString(4, book.getTelefon());
		statement.setInt(5, book.getCustomerid());

		boolean rowUpdated = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowUpdated;	
	}

	public Book getBook(int customerid) throws SQLException {
		Book book = null;
		String sql = "SELECT * FROM book WHERE customerid = ?";

		connect();

		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, customerid);

		ResultSet resultSet = statement.executeQuery();

		if (resultSet.next()) {
			String imie = resultSet.getString("imie");
			String nazwisko = resultSet.getString("nazwisko");
			String adres = resultSet.getString("adres");
			String telefon = resultSet.getString("telefon");

			book = new Book(customerid, imie, nazwisko, adres, telefon);
		}

		resultSet.close();
		statement.close();

		return book;
	}
}
