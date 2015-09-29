

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
    String TotalHoursWorked = request.getParameter("HoursWorked");
    String HourlyRate = request.getParameter("HourlyPay");
    int OverWorksHours = Integer.parseInt(TotalHoursWorked) - 40;
    double OverWorksRate = Double.parseDouble(HourlyRate)*1.5;
    double GrossPay = (OverWorksRate * OverWorksHours) + (Integer.parseInt(TotalHoursWorked) * Double.parseDouble(HourlyRate));
    String PreTaxDeduct = request.getParameter("PreTax");
    String PostTaxDeduct = request.getParameter("PosTax");
    %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= TotalHoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= HourlyRate %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= OverWorksHours %></td>
                </tr>

                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= OverWorksRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= GrossPay %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= PreTaxDeduct %></td>
                </tr>
               
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>

                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= PostTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>              
            </tbody>
        </table>
        
    </body>
</html>
