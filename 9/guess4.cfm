<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guess the Number PT 4</title>
</head>
<body>
    <!--- Set range --->
    <cfset GuessLow = 1>
    <cfset GuessHigh = 10>

    <!-- Random number picker --->
    <cfset RandomNumber = RandRange(GuessLow, GuessHigh)>
    <!--- Check if number is passed --->
    <cfset HaveGuessed = IsDefined("URL.guess")>

    <!--- If the number was passed, Does it match? --->
     <cfset Match = (HaveGuessed) AND (RandomNumber IS URL.guess)>

    <!--- FeedBack --->
    <cfoutput>
    <cfif Match>
        Yoy got it! I picked #RandomNumber#! Good Job!
    <cfelseif HaveGuessed>
       <!-- Did not match --->
        Sorry, you didn't get it. I picked #RandomNumber#. Try again!
    <cfelse>
    <!--- No guess was passed via th URL --->
        You did not guess a number.<br>
        To guess a number, reload this page and add <B>?guess=n</B> (where n is the number you are guessing, for example ?guess=5). The number should be between #GuessLow# and #GuessHigh#.
    </cfif>
    </cfoutput>

</body>
</html>