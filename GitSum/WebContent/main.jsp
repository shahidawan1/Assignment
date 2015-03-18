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
      
      
     
table, th, td {
    border: 2px solid black;
}

       
  </style>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#javaEe").click(function(){
      
});
});

$(document).ready(function(){
    $("#javaEe").click(function(){
        $.get("https://api.github.com/search/repositories?q=javaEE+language:JavaEE&sort=stars&order=desc", function(data, status){
        	
        	for(var i = 0; i <= data.items.length ; i++ ){
        		
        		
        		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
        			  var commits=0;
        			  for(var j=0; j<=ownerData.all.length ; j++)
        				  {
        				  	commits = commits+ownerData.all[i];
        				  }
        			  $("#commiturl").prepend("<div>"+commits+"</div>");
        		    });
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
        	
            console.log(data);
        });
    });
});
$(document).ready(function(){
    $("#javaSe").click(function(){
        $.get("https://api.github.com/search/repositories?q=javaSE+language:JavaSE&sort=stars&order=desc", function(data, status){
        	
        	for(var i = 0; i <= data.items.length ; i++ ){

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var commit=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	commit = commit+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+commit+"</div>");
      		    });
        		
        		
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
        
            console.log(data);
        });
    });
});
$(document).ready(function(){
    $("#javaAnd").click(function(){
        $.get("https://api.github.com/search/repositories?q=javaAndroid+language:javaAndroid&sort=stars&order=desc", function(data, status){
        	
        	for(var i = 0; i <= data.items.length ; i++ ){
        		

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var comm=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	comm = comm+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+comm+"</div>");
      		    });
        		
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
            console.log(data);
            system.out.print(data);
        });
    });
});

$(document).ready(function(){
    $("#JS").click(function(){
        $.get("https://api.github.com/search/repositories?q=javaScript+language:javaScript&sort=stars&order=desc", function(data, status){
        	
        	for(var i = 0; i <= data.items.length ; i++ ){

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var commitsjs=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	commitsjs = commitsjs+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+commitsjs+"</div>");
      		    });
        		
        		
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
            console.log(data);
        });
    });
});

$(document).ready(function(){
    $("#JQ").click(function(){
        $.get("https://api.github.com/search/repositories?q=JQuery+language:JQuery&sort=stars&order=desc", function(data, status){
            
        	
        	for(var i = 0; i <= data.items.length ; i++ ){
        		

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var com=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	com = com+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+com+"</div>");
      		    });
        		
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
        	console.log(data);
        });
    });
});

$(document).ready(function(){
    $("#Cpp").click(function(){
        $.get("https://api.github.com/search/repositories?q=Cplusplus+language:Cplusplus&sort=stars&order=desc", function(data, status){
            
            for(var i = 0; i <= data.items.length ; i++ ){
        		

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var co=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	co = co+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+co+"</div>");
      		    });
        		
            	
       		 
        		$("#login").prepend("<div class = 'row'>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div class = 'row'>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div class = 'row'>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div class = 'row'>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div class = 'row'>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
            console.log(data);
        });
    });
});

$(document).ready(function(){
    $("#javaAnd").click(function(){
        $.get("https://api.github.com/search/repositories?q=javaAndroid+language:javaAndroid&sort=stars&order=desc", function(data, status){
        	
        	for(var i = 0; i <= data.items.length ; i++ ){
        		

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var cm=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	cm = cm+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+cm+"</div>");
      		    });	
        		
        	
        		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
        	//alert("Data: " + data + "\nStatus: " + status);
            console.log(data);
        });
    });
});

$(document).ready(function(){
    $("#Chash").click(function(){
        $.get("https://api.github.com/search/repositories?q=C#+language:C#&sort=stars&order=desc", function(data, status){
            
            for(var i = 0; i <= data.items.length ; i++ ){
        		
        		

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var commitsc=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	commitsc = commitsc+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+commitsc+"</div>");
      		    });
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
            console.log(data);
        });
    });
});

$(document).ready(function(){
    $("#CSS").click(function(){
        $.get("https://api.github.com/search/repositories?q=CSS+language:CSS&sort=stars&order=desc", function(data, status){
            
        	
        	for(var i = 0; i <= data.items.length ; i++ ){
        		
        		

      		  $.get("https://api.github.com/repos/"+data.items[i].owner.login+"/"+data.items[i].name+"/stats/participation", function(ownerData, status){
      			  var commitss=0;
      			  for(var j=0; j<=ownerData.all.length ; j++)
      				  {
      				  	commitss = commitss+ownerData.all[i];
      				  }
      			  $("#commiturl").prepend("<div>"+commitss+"</div>");
      		    });
            	
       		 
        		$("#login").prepend("<div>"+data.items[i].owner.login+"</div>");
          		$("#id").prepend("<div>"+data.items[i].id+"</div>");
          		$("#fullname").prepend("<div>"+data.items[i].name+"</div>");
          		$("#branchesurl").prepend("<div>"+data.items[i].contributors_url+"</div>");
          		$("#contributors").prepend("<div>"+data.items[i].branches_url+"</div>");
        		
        		
        	}
        	console.log(data);
        });
    });
});

</script>
  </head>

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
 <ul> <li><a id ="javaEe" href="#">Java EE</a></li>
  <li><a  id ="javaSe"href="#">Java SE</a></li> 
  <li><a  id ="javaAnd"href="#">Android</a></li>
 </ul> 
 </li>
 
 
  <li> <a href="#">JavaScript</a>
 <ul> <li><a  id ="JS"href="#">JS</a></li>
 <li><a  id ="JQ"href="#">JQuery</a></li>
     </ul>
  </li> 
 
 
 <li> <a href="#">C</a>
  <ul>
   <li><a id ="Cpp" href="#">CPP</a></li>
 <li><a id ="Chash" href="#">C#</a></li>
 
   </ul> 
   </li>
   
    <li> <a href="#">CSS</a>
    
 <ul> <li><a id ="CSS" href="#">CSS</a></li>
 
 </ul> 
 </li>
 
 
  </ul>
   </div> 
  
   
   <table>
  <tr>
    <th>login name</th>
    <th>id</th>
    <th>full name</th>
    <th>Number of commits of last 52 weeks</th>
  <th>branches url</th>
  <th>contributors</th>
  
  </tr>
 <tr>
    <td><div id = "login"></div></td>
    <td><div id = "id"></div></td>
    <td><div id = "fullname"></div></td>
    <td><div id = "commiturl"></div></td>
    <td><div id = "contributors"></div></td>
    <td><div id = "branchesurl"></div></td>
  </tr>

</table>
   
   </body>
</html>