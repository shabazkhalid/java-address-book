<%@ page import="java.io.*, java.util.*,javax.servlet.http.HttpSession, com.mycompany.dto.*" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%--
The taglib directive below imports the JSTL library. If you uncomment it,
you must also add the JSTL library to the project. The Add Library... action
on Libraries node in Projects view can be used to add the JSTL 1.1 library.
--%>
<%--
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete Contact</title>
        <SCRIPT language="JavaScript">
        function deletee()
        {
        document.personform.actionid.value="delete";
        document.personform.submit();
        }
        
       <%
       String name = (String)request.getParameter("name"); 
    %>
    </SCRIPT> 
    </head>
    <body>
    <font face="Book Antiqua">
    <hr>
    <h1>Delete Contact</h1>
    <h1>click Delete to remove <%=name%> !</h1>
    
    
     <br>
        
        <form name="personform" action="controller" method="Post"> 
        <table>
            <tr><td>
                Name: 
                <td><input type = text name = "name" value = <%=name%> size="50" readonly = "readonly"></td>
            </tr><tr>
                
        </table>
        <br>           
        <input  type="hidden" name="actionid">            
        <input  type="hidden" name="pageid" value="personinfo" >            
        
        <input type=button value="delete" name="btnedit" onclick="deletee()">
        
    </font>
    </form>
    
    </body>
</html>
