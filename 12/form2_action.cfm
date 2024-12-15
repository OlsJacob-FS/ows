<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms</title>
</head>
<body>
   <!--- Display feedback to user --->
   <cfoutput>
         <!--- Payment Type --->
         Hello, <br>
            You selected <strong>#FORM.PaymentType#</strong> as your payment type. <br>

            <!--- Mailing List --->
        <cfif FORM.MailingList IS "yes">
            You have been added to our mailing list.
        <cfelse>
            You have not been added to our mailing list.
        </cfif>
    </cfoutput>
</body>
</html>