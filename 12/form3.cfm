<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ColdFusion Forms</title>
</head>
<body>
<!--- Payment and main list form --->
<form action="form3_action.cfm" method="post">
   <h4>Please fill in this form and click <strong>Submit</strong></h4>
   <p>
   <!--- Payment type radio Buttons --->
       Payment type: <br>
       <input type="radio" name="PaymentType" value="Cash" checked>Cash<br>
       <input type="radio" name="PaymentType" value="Credit Card">Credit Card<br>
       <input type="radio" name="PaymentType" value="Check">Check<br>
       <input type="radio" name="PaymentType" value="Other">Other<br>
    </p>
    <p>
    <!--- Mailing list form --->
    <h4>Would you liek to be added to our mailing list?</h4>
    <input type="checkbox" name="MailingList" value="Yes">Yes<br>
    </p>
    <p>
    <!--- Submit button --->
    <input type="submit" value="Submit">
    </p>
</form>
    
</body>
</html>