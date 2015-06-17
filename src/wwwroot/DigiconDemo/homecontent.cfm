<cfcache action="servercache" timespan="#createtimespan(0,0,1,0)#"> 
<h1>18F</h1>

<p>
Below is a an example of using the FBOpen API to retrieve opportunities to work with the U.S. government. The curent search criteria is "software Development agile".</p>

<cfhttp method="get" url="https://api.data.gov/gsa/fbopen/v0/opps?q=software+Development+agile&fq=&parent_only=&p=&naics=&data_source=&api_key=sZYzeySBCJ8LNRlgD352cCoxMF58MLYgYxWXQD9x" >
<cfset getResult = deserializeJSON(cfhttp.FileContent)>

	<cfloop  collection="#getResult.docs#" item="a" >
		<cfset d=htmldecode(getResult.docs[a].description)>
		<cfset title=htmldecode(getResult.docs[a].title)>
		<cfset link=htmldecode(getResult.docs[a].listing_url)>
		<cfset office=htmldecode(getResult.docs[a].office)>
		<cfset agency=htmldecode(getResult.docs[a].agency)>
		<cfset posted_dt=htmldecode(getResult.docs[a].posted_dt)>
		<cfset close_dt=htmldecode(getResult.docs[a].close_dt)>
	
		<cfoutput>
	<div class="panel panel-default">
		<div class="panel-heading">	<h4>#office#</h4>	<div><strong>#agency#</strong> </div></div>
		<div class="panel-body">
		
			<div class="pull-left"> Due: #dateformat(close_dt)#</div>	
			<div class="pull-right">Posted: #dateformat(posted_dt)#  </div>
			<br><br>
		
		
			<div><a href='#link#' target="_blank">#title#</a></div>
			<br><br>
			<div>#d#</div>
		
		</div>
	</div>

		</cfoutput>
		</cfloop>


<cffunction  name="htmldecode" returntype="String" >
	<cfargument name="html" >
	<cfset returnstr=replaceList(arguments.html, "&lt;,&gt;,&amp;,&quot;", '<,>,&,"')>
<cfreturn returnstr>
</cffunction>


<!---
     "data_type": "opp",
      "data_source": "FBO",
      "notice_type": "PRESOL",
      "solnbr": "n00167-15-t-0023",
      "solnbr_ci": "n00167-15-t-0023",
      "id": "FBO:PRESOL:n00167-15-t-0023",
      "posted_dt": "2015-01-26T00:00:00Z",
      "agency": "Department of the Navy",
      "office": "Naval Sea Systems Command",
      "location": "NSWC Carderock Division",
      "zipcode": "20817-5700",
      "FBO_CLASSCOD": "R",
      "FBO_NAICS": "541690",
      "FBO_OFFADD": "9500 MacArthur Boulevard West Bethesda MD 20817-5700",
      "title": "Software Development Services",
      "close_dt": "2015-02-10T00:00:00Z",
      "FBO_CONTACT": "Stephen D. Noethen, Contract Specialist, Email stephen.noethen@navy.mil",
      "description": "The Naval Surface Warfare Center Carderock Division has a requirement for software development support.&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp; &lt;/span&gt;The support will be provided to engineers in the development of a high-end Computational Fluid Dynamics (CFD) capability to predict ships under RFQ # N00167-15-T-0023.&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp; &lt;/span&gt;Interested parties are directed to forward a notice of interest to Mr. Stephen Noethen at stephen.noethen@navy.mil.&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp; &lt;/span&gt;It is anticipated that the solicitation will be released on or about 17 February 2015.&lt;span style=&quot;mso-spacerun: yes&quot;&gt;&amp;nbsp; &lt;/span&gt;",
      "listing_url": "https://www.fbo.gov/spg/DON/NAVSEA/N00167/N00167-15-T-0023/listing.html",
      "FBO_SETASIDE": "",
   --->
<cfcache>
