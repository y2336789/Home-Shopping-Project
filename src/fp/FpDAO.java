package fp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FpDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public FpDAO() {
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
	public ResultSet BringFpData(){
		String SQL = "SELECT id, name, price, img FROM fp";
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
	 public int GetFpcount() {
	        int count = 2;
	        String SQL = "SELECT id, name, price, img FROM fp";
	        //SQL = SQL + "'" + memberID + "'";
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
	 public ResultSet GetlineFp(String line) {
		 String SQL = "SELECT id, name, price, img FROM fp WHERE id='";
		 SQL = SQL + line +"'";	//
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
