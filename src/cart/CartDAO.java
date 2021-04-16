package cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CartDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public CartDAO() {
		try {
			System.out.println("1");
			String dbURL = "jdbc:mysql://localhost:3306/jsp_ch05?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
			String dbID = "root";
			String dbPassword = "1234";		
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			System.out.println("2");
			e.printStackTrace();
		}
	}
	public ResultSet BringData(){
		String SQL = "SELECT cartid, userid, tag, productid, price FROM cart";
		try {
			pstmt = conn.prepareStatement(SQL); // pstmt에 받아오고
			rs = pstmt.executeQuery(); // SQL 결과 값을 받와서 rs에 저장!
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("버그");
		}
		System.out.println("버그");
		return rs;
	}
	public int InsertCart(String userID, String tag, String itemID, String itemPrice) {
		String SQL = "INSERT INTO cart (userid, tag, productid, price) VALUES (?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL); // pstmt에 받아오고
			
			pstmt.setString(1, userID);
			pstmt.setString(2, tag);
			pstmt.setString(3, itemID);
			pstmt.setString(4, itemPrice);
			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("버그");
			return 0;
		}
	}
	public int GetCartcount(String userID) {
        int count = 2;
        String SQL = "SELECT tag, productid, price FROM cart WHERE userid='";
        SQL = SQL + userID + "'";
        try {
        pstmt = conn.prepareStatement(SQL, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        rs = pstmt.executeQuery();
        rs.last();
        count = rs.getRow();

        return count;
        }catch(Exception e) {
            e.printStackTrace();
            System.out.println("GetBasketcount 버그있음");
        }
        System.out.println("GetBasketcount DB 버그있음");
        return count;
    }
	public ResultSet BringCartData(String userID) {
		String SQL = "SELECT tag, productid, price FROM cart WHERE userid='";
        SQL = SQL + userID + "'";
		try {
			pstmt = conn.prepareStatement(SQL); // pstmt에 받아오고
			rs = pstmt.executeQuery(); // SQL 결과 값을 받와서 rs에 저장!
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("버그");
		}
		System.out.println("버그");
		return rs;
	}
	public ResultSet DeleteCartData(String price) {
		String SQL = "DELETE FROM cart WHERE name=wkwk";
		
		try {
			pstmt = conn.prepareStatement(SQL); // pstmt에 받아오고
			rs = pstmt.executeQuery(); // SQL 결과 값을 받와서 rs에 저장!
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("버그");
		}
		System.out.println("버그");
		return rs;
	}
	
	
	
}
