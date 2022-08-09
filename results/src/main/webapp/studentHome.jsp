   <%@page import="java.sql.*"%>
      <%@page import="Project.ConnectionProvider"%>
      <%
      try{
    	  String rollNo=request.getParameter("rollNo");
    	  Connection con=ConnectionProvider.getCon();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery("select * from student inner join result where student.rollNo=result.rollNo and student.rollNo='"+rollNo
    			  +"'");
    	  if(rs.next()){
    		  
    	  %>
 


<img src="logo.png"  align="left"width="150" height="150">
<center><img src="data:image/png;base64,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" width="150" height="150">
<img src="https://yt3.ggpht.com/9e3ByLbxA75Znw4-JxauPUhw0B8lSUrUXlLbrKKVrcyGPUTNem3cQGuDlg074_BhO_esff6N=s900-c-k-c0x00ffffff-no-rj" align="right"  width="150" height="150"></center>
    <a href="dgiOneView.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: AKALAVYA'S</th>
          <th>Course Name:<%=rs.getString(1) %></th>
          <th>Branch Name:<%=rs.getString(2) %></th>
          <th><center>RollNo:<%=rs.getString(3) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(4) %></th>
          <th>Father Name:<%=rs.getString(5) %></th>
          <th>Gender: <%=rs.getString(6) %></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>NAS101</td>
        <td colspan="2">Engg. Physics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(8) %></td>
      </tr>
      <tr>
        <td>NAS102</td>
        <td colspan="2">Engg. Chemistry</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(9) %> </td>
      </tr>
      <tr>
        <td>NAS103</td>
        <td colspan="2">Engg. Mathematics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(10) %></td>
      </tr>
      <tr>
        <td>NEE101</td>
        <td colspan="2">Basic Electrical Engg. </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(11) %></td>
      </tr>
      <tr>
        <td>NEC101</td>
        <td colspan="2">Electronic Engg.</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(12) %> </td>
      </tr>
      <tr>
        <td>NAS152</td>
        <td colspan="2">Engg. Chemistry Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td> <%=rs.getString(13) %> </td>
      </tr>
      <tr>
        <td>NAS151</td>
        <td colspan="2">Engg. Physics Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td> <%=rs.getString(14) %> </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>560</td>
        <td>180</td>
        <td><%int sum =rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14); out.println(sum); %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/560); %></td>
      </tr>
  </table>
    <hr class="new1">
  <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.
Designed & Developed by BTech Days Team</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @ BTech Days :: 2021-2023</h6></center> 
  <hr class="new1">
</body>

<%}
else
{
response.sendRedirect("errorDgiOneView.html");
}
}
    	  catch(Exception e)
      {}
  
%>

