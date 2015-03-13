<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>main page</title>
	 <style type="text/css" media="screen">
  #horizontalmenu ul {
   padding:10; margin:10; list-style:none;
   }
   
   #horizontalmenu li { 
   float:left; position:relative; 
   padding-right:100; font-size:40px;
    display:block; border:10px solid #BB55LL;
     border-style:inset;
      }
      
    #horizontalmenu li ul {
     display:none; position:absolute;
      }
    
     #horizontalmenu li:hover ul{
      display:block; background:skyblue;
      height:auto; width:4em;
       }
      
      #horizontalmenu li ul li{ 
      clear:both; border-style:none;
      }
       
  </style>

<body>
<%if(session.getAttribute("currentSessionUser")==null)
			response.sendRedirect("Login.jsp") ;%>
		<%String name=request.getParameter("username");%>
		
		<h1>
			welcome
			<%=name%>
			
			<h2>Language categories</h2>

<div id="horizontalmenu"> 
<ul> <li><a href="#">Java</a>
 <ul> <li><a href="#">Java EE</a></li>
  <li><a href="#">Java SE</a></li> 
  <li><a href="#">Android</a></li>
 </ul> 
 </li>
 
 
  <li> <a href="#">JavaScript</a>
 <ul> <li><a href="#">JS</a></li>
 <li><a href="#">JQuery</a></li>
     </ul>
  </li> 
 
 
 <li> <a href="#">C</a>
  <ul>
   <li><a href="#">CPP</a></li>
 <li><a href="#">C#</a></li>
 
   </ul> 
   </li>
   
    <li> <a href="#">CSS</a>
    
 <ul> <li><a href="#">CSS</a></li>
 
 </ul> 
 </li>
 
 
  </ul>
   </div> 
   </body>
</html>