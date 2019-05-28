<%-- 
    Document   : index.jsp
    Created on : May 26, 2019, 3:12:14 PM
    Author     : gregbeauregard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        // This is a scriptlet.  Notice that the "date"
        // variable we declare here is available in the
        // embedded expression later on.
        System.out.println( "Evaluating date now" );
        java.util.Date date = new java.util.Date();
        %>
        Hello!  The time is now <%= date %>
        <br>
        or another way to display
        <br>
        <%
        out.println( String.valueOf( date ));
        out.println( "<br>Your machine's address is " );
        out.println( request.getRemoteHost());
        %>
        
        <TABLE BORDER=2>

        <%
        for ( int i = 0; i < 10; i++ ) {
            %>
            <tr>
            <td>Number</td>
            <td><%= i+1 %></td>
            </tr>
            <%
        }
        %>
        </TABLE>

        <%@ page import="java.util.Date" %>
        <%!
        Date getDate()
        {
            System.out.println( "In getDate() method" );
            return new Date();
        }
        %>
        <br>
        Hello!  The time is now <%= getDate() %>

    </body>
</html>
