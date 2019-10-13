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
        <title>delete Appointment</title>
        <SCRIPT language="JavaScript">
        function adeletee()
        {
        document.appform.actionid.value="delete";
        document.appform.submit();
        }
        
       <%
           AppointmentDto a= new AppointmentDto();
           
       String title = (String)request.getParameter("apptitle");
       a.setatitle("apptitle");
    %>
    </SCRIPT> 
    </head>
    <body>
    <font face="Book Antiqua">
    <hr>
    <h1>Delete Appointment</h1>
    <h1>click Delete to remove <%=title%> !</h1>
    
    
     <br>
        
        <form name="appform" action="controller" method="Post"> 
        <table>
            <tr><td>
                Title: 
                <td><input type = text name = "apptitle" value = <%=title%> size="50" readonly = "readonly"></td>
            </tr><tr>
                
        </table>
        <br>           
        <input  type="hidden" name="actionid">            
        <input  type="hidden" name="pageid" value="appinfo" >            
        
        <input type=button value="delete" name="btnedit" onclick="adeletee()">
        
    </font>
    </form>
    
    </body>
</html>
