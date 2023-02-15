<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Admin!</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
 <%
   
    String a[] = new String[100];
 	for(int i=0;i<100;i++){
 		a[i]="0";
 	}
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingdb","root","minu2899");
	
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as votecount from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as votecount from vote group by party");
	
    int i=0;
    while(rs.next()){
    	if(rs.getString("party").equals("Aam Aadmi Party"))
        a[0] = rs.getString("votecount");
    	if(rs.getString("party").equals("BJP"))
        a[1] = rs.getString("votecount");
    	if(rs.getString("party").equals("BSP"))
        a[2] = rs.getString("votecount");
    	if(rs.getString("party").equals("Congress"))
        a[3] = rs.getString("votecount");
    	if(rs.getString("party").equals("CPI"))
        a[4] = rs.getString("votecount");
    }
    %>
</head>
<%@ include file="adminNavbar.jsp"%> 
<body>

<div class="checkTable">
<table >
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img src="https://smedia2.intoday.in/indiatoday/images/stories/2015April/aap-logo_650_040815073952.jpg" alt="AAP">
</td>
<td>Aam Aadmi Party</td>
<td><%=a[0]%></td>
</tr>

<tr>
<td>
<img src="https://m.media-amazon.com/images/I/61ENKey5QHL._SL1181_.jpg" alt="BJP">
</td>
<td>BJP</td>
<td><%=a[1]%></td>
</tr>

<tr>
<td>
<img src="party_img" alt="bsp" src="https://n4.sdlcdn.com/imgs/i/b/g/MAHALAXMI-ART-CRAFT-BSP-Logo-SDL687949465-1-5e451.jpg" alt="BSP">
</td>
<td>BSP</td>
<td><%=a[2]%></td>
</tr>

<tr>
<td>
<img src="https://m.media-amazon.com/images/I/41cz2oWpyWL.jpg" alt="Congress">
</td>
<td>Congress</td>
<td><%=a[3]%></td>
</tr>

<tr>
<td>
<img src="https://www.shutterstock.com/image-vector/cpim-election-logo-symbol-vector-260nw-1856593438.jpg" alt="CPI">
</td>
<td>CPI</td>
<td><%=a[4]%></td>
</tr>

</table>
</div>
</body>