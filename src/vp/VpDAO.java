package vp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VpDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public VpDAO() {
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
	public ResultSet BringVpData(){
		String SQL = "SELECT id, name, price, img FROM vp";
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
	public int GetVpcount() {
        int count = 2;
        String SQL = "SELECT id, name, price, img FROM vp";
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
	 public ResultSet GetlineVp(String line) {
		 String SQL = "SELECT id, name, price, img FROM vp WHERE id='";
		 SQL = SQL + line +"'";	// 채소 db 중 라인번호와 일치하는 id 값을 가진 db정보만 딱 한줄 가져옴
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
