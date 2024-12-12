<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guess the Number PT 2</title>
</head>
<body>
    <!--- Pick random Number --->
    <cfset RandomNumber = RandRange(1, 10)>
    <!--- Check if number is passes --->
    <cfif IsDefined("URL.guess")>
        <!--- If it was passed is it a match? --->
        <cfif RandomNumber IS URL.guess>
        <!--- Its a match!! --->
            <cfoutput>
                Yoy got it! I picked #RandomNumber#! Good Job!
            </cfoutput>
        <cfelse>
        <!--- It is not a match --->
            <cfoutput>
                Sorry, you didn't get it. I picked #RandomNumber#. Try again!
            </cfoutput>
        </cfif>
    <cfelse>
     <!--- No guess was passed via th URL --->
        <cfoutput>
        You did not guess a number.<br>
        To guess a number, reload this page and add <B>?guess=n</B> (where n is the number you are guessing, for example ?guess=5). The number should be between 1-10.
        </cfoutput>
    </cfif>
    
    

</body>
</html>