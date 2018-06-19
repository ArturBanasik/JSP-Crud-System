package pl.arturbanasik.addCustomer;

/**
 * Book.java This is a model class represents a book entity
 * 
 * @author www.codejava.net
 *
 */
public class Book {
	protected int customerid;
	protected String imie;
	protected String nazwisko;
	protected String adres;
	protected String telefon;

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getImie() {
		return imie;
	}

	public void setImie(String imie) {
		this.imie = imie;
	}

	public String getNazwisko() {
		return nazwisko;
	}

	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}

	public String getAdres() {
		return adres;
	}

	public void setAdres(String adres) {
		this.adres = adres;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public Book() {
	}

	public Book(int customerid) {
		this.customerid = customerid;
	}

	public Book(int customerid, String imie, String nazwisko, String adres, String telefon) {
		this(imie, nazwisko, adres, telefon);
		this.customerid = customerid;
	}

	public Book(String imie, String nazwisko, String adres, String telefon) {
		this.imie = imie;
		this.nazwisko = nazwisko;
		this.adres = adres;
		this.telefon = telefon;
	}

}
