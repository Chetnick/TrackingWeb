
<%@page import=" java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display result</title>
    </head>
    <body>
        <h1>Results :</h1>
        <%!
            public class Tracking {

                String URL = "jdbc:mysql://quince.no-ip.org:3306/tracking";
                String UserName = "aca";
                String Password = "qZq3TFVg";
                Connection conn = null;
                PreparedStatement selectFaktura = null;
                PreparedStatement selectAwb = null;
                ResultSet resultSet = null;

                public Tracking() {

                    try {

                        conn = DriverManager.getConnection(URL, UserName, Password);
                        selectFaktura = conn.prepareStatement(
                                "SELECT faktura, time, date, stanje FROM tracking");

                        selectAwb = conn.prepareStatement(
                                "SELECT awb, time, date, stanje FROM tracking");

                    } catch (SQLException e) {
                        e.printStackTrace();

                    }
                }

                public ResultSet getfaktura() {
                    try {
                        resultSet = selectFaktura.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    return resultSet;
                }
                public ResultSet getAwb() {
                    try {
                        resultSet = selectAwb.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    return resultSet;
            }
        %>
    </body>
</html>
