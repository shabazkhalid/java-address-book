<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Appointment</title>
    <SCRIPT language="JavaScript">
    function add()
    {
    document.appform.actionid.value="add";
    document.appform.submit();
    }
    function search()
    {
    document.appform.actionid.value="search";
    document.appform.submit();
    }
        
    </SCRIPT> 
</head>
<body>
    
    <font face="Book Antiqua">
        <hr>
        <h1>Appointment</h1>
        <hr>
        
        <br>
        
        <form name="appform" action="controller" method="Post"> 
        <table>
            <tr><td>
                Appointment Title: 
                <td><input type = text name = "apptitle" size="50"></td>
            </tr><tr>
                <td>Appointment Description:</td>
                <td><input type = text name = "appdes" size="50"></td>
            </tr>
            <td>Appointment Date:</td>
                <td><input type = text name = "appdate" size="50"></td>
            </tr>
        </table>
        <br>           
        <input  type="hidden" name="actionid">            
        <input  type="hidden" name="pageid" value="appinfo">            
        
        <input type=button value="search" name="abtnsearch" onclick="search()">
        <input type=button value="save" name="abtnsave" onclick="add()">
        
    </font>
    </form>
    
</body>
</html>
