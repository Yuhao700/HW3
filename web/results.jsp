

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
    double TotalHoursWorked = Double.parseDouble(request.getParameter("HoursWorked"));
    double HourlyRate=Double.parseDouble(request.getParameter("HourlyPay"));
    double OverWorksHours;
    double OverWorksRate;
    
    if (TotalHoursWorked<40)
    {
        OverWorksHours=0;
        OverWorksRate=0;
    }
    else
    {
        OverWorksHours = TotalHoursWorked - 40;
        OverWorksRate = HourlyRate*1.5;
    }
    
    
    double GrossPay = (OverWorksRate * OverWorksHours) + TotalHoursWorked * HourlyRate;
    double PreTaxDeduct = Double.parseDouble(request.getParameter("PreTax"));
    double PostTaxDeduct = Double.parseDouble(request.getParameter("PosTax"));
    
    double PreTaxPay = GrossPay - PreTaxDeduct;
    
    double TaxAmount;
    if (GrossPay<500){TaxAmount=PreTaxPay*0.18;}
    else{TaxAmount=PreTaxPay*0.22;}
    
    double PostTaxPay = PreTaxPay - TaxAmount;
    double NetPay = PostTaxPay - PostTaxDeduct;
    
    
    %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
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
                    <td><%= PreTaxPay %></td>
                </tr>

                <tr>
                    <td>Tax Amount:</td>
                    <td><%= TaxAmount %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= PostTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= PostTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= NetPay %></td>
                </tr>              
            </tbody>
        </table>
        
    </body>
</html>
