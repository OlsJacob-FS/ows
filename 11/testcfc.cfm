<!--- Testing the CFC file --->

<!--- Title: --->
<h1> Testing the cfc file </h1>

<!--- Get todays date --->
<cfinvoke component = "intro" method="yesterday" returnvariable="yesterdayDate">
</cfinvoke>
 <!--- Output --->
    <cfoutput> Yesterday's Date: #DateFormat(yesterdayDate)#<br></cfoutput>

<cfinvoke component = "intro" method="today" returnvariable="todayDate">
 </cfinvoke>
 <!--- Output --->
    <cfoutput> Today's Date: #DateFormat(todayDate)#<br></cfoutput>

<cfinvoke component = "intro" method = "tomorrow" returnvariable="tomorrowDate">
</cfinvoke>
 <!--- Output --->
    <cfoutput> Tomorrow's Date: #DateFormat(tomorrowDate)#<br></cfoutput>

<cfinvoke component = "intro" method = "geometry" returnvariable="geometryRet">
    <cfinvokeargument name="radius" value="10">
</cfinvoke>

    <cfdump var = "#geometryRet#">