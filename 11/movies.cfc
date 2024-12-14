<cfcomponent>

<!--- List all movies returned from the database --->

<cffunction name="ListMovies" access="public" returntype="query" output="false">
    <!--- Define local variable --->
    <cfset var movies = "">
    
    <cfquery name="movies" datasource="ows">
        SELECT FilmID, MovieTitle, PitchText, Summary, DateInTheaters
        FROM Films
        ORDER BY MovieTitle
    </cfquery>
    <cfreturn movies>
</cffunction>

<!--- Query Movie data from the database --->
<cffunction name="GetDetails"  access="public" returntype="query">
    <cfargument name="FilmID" type="numeric" required="true" />

    <!--- Define local variable --->
    <cfset var movies = "">

    <!--- Query movie data from the database --->
    <cfquery name="movie" datasource="ows">
        SELECT FilmID, MovieTitle, PitchText, Summary, DateInTheaters, AmountBudgeted
        FROM Films
        WHERE FilmID = #ARGUMENTS.FilmID#
    </cfquery>

    <cfreturn movie>
</cffunction>





</cfcomponent>