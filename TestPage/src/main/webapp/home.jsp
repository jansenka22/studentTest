<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import ="test.Student" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
/* Popup container - can be anything you want */
.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 160px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 100%;
  left: 50%;
  margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}
</style>
</head>
<body>

<script>
function myPopUp(param) {
	
	var x = "F" + param;
 	 var popup = document.getElementById(x);
 	 popup.classList.toggle("show");
}
</script>

<% 
	if(session.getAttribute("userid")==null){
	response.sendRedirect("loginPage.jsp");
	}
%>

<h1>Welcome <%= session.getAttribute("userid") %></h1>
<br>

<% 
ArrayList<Student> list1 = new ArrayList<Student>();
Student s1 = new Student("Dep 1","S1","Andy",35);
Student s2 = new Student("Dep 1","S2","Budy",70);
Student s3 = new Student("Dep 1","S3","Candy",60);
Student s4 = new Student("Dep 1","S4","Dudley",90);


ArrayList<Student> list2 = new ArrayList<Student>();
Student s5 = new Student("Dep 2","S5","Edy",30);

ArrayList<Student> list3 = new ArrayList<Student>();
Student s6 = new Student("Dep 3","S6","Fanny",32);
Student s7 = new Student("Dep 3","S7","Garry",70);
Student s8 = new Student("Dep 3","S8","Henny",20);

list1.add(s1);
list1.add(s2);
list1.add(s3);
list1.add(s4);

list2.add(s5);
list3.add(s6);
list3.add(s7);
list3.add(s8);

int pass = 0;
double result = 0;
%>


<table border="1">
<thead>
<tr style="background-color:blue">
<td >Department</td>
<td>Student ID</td>
<td>Marks</td>
<td>Pass %</td>
</tr>
</thead>
<tbody>
<tr >
	<td style="text-align:center" rowspan="<%= list1.size()%>"> <% out.println(list1.get(1).getDepartment());%> </td>
	<% for (Student st: list1){ %>
	
	<td>
	<div class="popup" style="color:blue" onclick="myPopUp('<%= st.getStudentID() %>')"><b><% out.println(st.getStudentID());%></b>
  	<span class="popuptext" id="F<%= st.getStudentID() %>"><% out.println(st.getStudentName());%></span>
	</div> 
	</td>
	<td style="text-align:right"><% out.println(st.getMark()); %></td>
	<% 
	%>
	
	<td><%
	if(st.getMark() >= 40){pass = pass + 1;}
	out.println( pass * 100 / list1.size()  );
	%>
	</td>
	
	</tr>
	<% }  %>
</tr>

<tr >
	<td style="text-align:center" rowspan="1"> <% out.println(s5.getDepartment());%> </td>
	
	
	<td>
	<div class="popup" style="color:blue" onclick="myPopUp('<%= s5.getStudentID() %>')"><b><% out.println(s5.getStudentID());%></b>
  	<span class="popuptext" id="F<%= s5.getStudentID() %>"><% out.println(s5.getStudentName());%></span>
	</div> 
	</td>
	<td style="text-align:right"><% out.println(s5.getMark()); %></td>
		<td><%
     pass = 0;
	if(s5.getMark() >= 40){pass = pass + 1;}
	out.println( pass * 100 / list2.size()  );
	%>
	</td>
	</tr>
	
</tr>

	
	<tr >
	<td style="text-align:center" rowspan="<%= list3.size() %>"> <% out.println(list3.get(1).getDepartment());%> </td>
	<% for (Student st: list3){ %>
	
	<td>
	<div class="popup" style="color:blue" onclick="myPopUp('<%= st.getStudentID() %>')"><b><% out.println(st.getStudentID());%></b>
  	<span class="popuptext" id="F<%= st.getStudentID() %>"><% out.println(st.getStudentName());%></span>
	</div> 
	</td>
	<td style="text-align:right"><% out.println(st.getMark()); %></td>
		
<td><%
     pass = 0;
	if(st.getMark() >= 40){pass = pass + 1;}
	out.println( pass * 100 / list3.size()  );
	%>
	</td>
	</tr>
	<% }  %>
</tr>
</tbody>
</table>

<br>
<form action=logout.jsp>
<input type=submit value=Logout>
</form>
</body> 
</html>