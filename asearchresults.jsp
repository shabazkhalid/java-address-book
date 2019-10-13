<%@ page import="java.io.*, java.util.*,javax.servlet.http.HttpSession, com.mycompany.dto.*" %>

<html>
    <head>
        <title>Appointments</title>
        
    </head>
    <body>
    <body>
        <font face="Book Antiqua">
        <hr>
        <h1>Appointment Search Results</h1>
        <hr>
        
        <br>
            
                <table border=0 width="90%">
                <tr >
                    <b>
                        <font color="#000080">
                            <td><font color="#000080"><b>Title</b></font></td>
                            <td><font color="#000080"><b>Description</b></font></td> 
                            <td><font color="#000080"><b>Date</b></font></td>                        

                        </font>
                    </b>
                </tr>
                            <%
            ResponseDto r = (ResponseDto)session.getAttribute("contacts");
            ArrayList results = r.getData();
           
            if(results.size()>0) {
                for(int i=0; i<results.size(); i++) {
                    AppointmentDto  p = (AppointmentDto)(results.get(i));
                    out.print(
                            "<tr>" +
                            "<td>" +
                            p.getatitle() + 
                            "</td>" +
                            "<td>" +
                            p.getades() + 
                              "</td>" +
                            "<td>" +
                             p.getadate()+
                            "</td>" );
                            String actionid="del";
                            String pageid="appinfo";
                            
                            %>
                            <td>
                            <a href = "aedit.jsp?apptitle=<%=p.getatitle()%>&appdes=<%=p.getades()%>&appdate=<%=p.getadate()%>">edit</a>
                            <a href = "adelete.jsp?apptitle=<%=p.getatitle()%>&appdes=<%=p.getades()%> &appdate=<%=p.getadate()%>&actionid=<%=actionid%>&pageid=<%=pageid%>">delete</a>
                        </td>
                            <% out.print(
                            "</tr>"
                            );
                }
            } else {
                out.println(com.mycompany.utility.Constants.REC_NOT_FOUND);
            }
            %>
        
        </table>
        <hr>
        <br>
        <a href="home.jsp">Home</a>
    </body>
</html>
