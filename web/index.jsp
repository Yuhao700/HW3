

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="Styling.css"/>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="insertForm" action="results.jsp" method="post">
            
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="HoursWorked" value="" size="20"></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Paid:</td>
                        <td><input type="text" name="HourlyPay" value="" size="20"></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="PreTax" value="" size="20"></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="PosTax" value="" size="20"></td>
                    </tr>
      
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value ="Submit" id="submit">
        </form>
        
    </body>
</html>
