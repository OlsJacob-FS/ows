
<!--- Create FilmId Varible --->
<cfset FilmID = 7>

<!--- Get a Movie From the Database --->
<cfquery name = "movie" datasource="ows" result="result">
    SELECT FilmID, MovieTitle, PitchText
    FROM Films
    WHERE filmID=#FilmID#
</cfquery>

<h1>Dump Returned Query (NAME)</h1>
<cfdump var="#movie#">
<h1>Dump Returned Result (RESULT)</h1>
<cfdump var="#result#">