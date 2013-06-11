<%@Import Namespace="eNCore.eNShared" %>

<%@ Register TagPrefix="cc1" Namespace="UIeNPropertySearch" Assembly="UIeNPropertySearch" %>

<%--<%@ Register TagName="SimpleSearch" TagPrefix="uc1"Src="~/eNPropertySearch/CustomControls/SimpleSearch.ascx" %>--%>
<%@ Register TagName="FeaturedListing" TagPrefix="uc1" Src="~/eNPropertySearch/CustomControls/FeaturedListing.ascx" %>
<%@ Register Tagname="HomeFinderLeadCapture" tagprefix="uc1"  src="~/eNPropertySearch/CustomControls/HomeFinderLeadCapture.ascx"  %>
<%@ Register Tagname="NeighborhoodValueLeadCapture" tagprefix="uc1" src="~/eNPropertySearch/CustomControls/NeighborhoodValueLeadCapture.ascx"  %>
<%@ register tagname="RequestInfo" tagprefix="uc1" src="~/eNPropertySearch/CustomControls/BrandControls/EN/Requestinfo.ascx"  %>
<%@ Register tagname="LocalAreaPropertySearch_EN" tagprefix="uc1" src="~/eNPropertySearch/CustomControls/LocalAreaPropertySearch_EN.ascx"  %>
<%@ Register TagPrefix="cc1"  TagName="SearchMaster"  Src="~/eNPropertySearch/CustomControls/GenericControls/SearchMaster.ascx" %>

 <script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script> 

 <script type="text/javascript"> 
 $(document).ready(function() {
     $('.slideshow').cycle({
         fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
     });
	 $('#testimonials')
		.after('<div id="nav">')
		.cycle({
        fx: 'fade', // choose your transition type, ex: fade, scrollUp, scrollRight, shuffle
		pager:  '#nav'
     });
 });
 </script>
  
<div class="main_content_holder">

 <div id="splashContent">
      
      	<div class="slideshow">
         <img src="/CustomData/150069695/images/slides/slide1.jpg" />
         <img src="/CustomData/150069695/images/slides/slide2.jpg" />
         <img src="/CustomData/150069695/images/slides/slide3.jpg" />
         <img src="/CustomData/150069695/images/slides/slide4.jpg" />
         <img src="/CustomData/150069695/images/slides/slide5.jpg" />
         <img src="/CustomData/150069695/images/slides/slide6.jpg" />
         <img src="/CustomData/150069695/images/slides/slide7.jpg" />
         <img src="/CustomData/150069695/images/slides/slide8.jpg" />
         <img src="/CustomData/150069695/images/slides/slide9.jpg" />
        </div>
  <div class="impulseButtons">
  	<a href="/search/ResidentialAdvancedSearch.aspx" class="button1"><div class="imagebox"></div><h1 class="Title">Property Search</h1><div class="description"><p>An advanced search tool enabling you to find the right home at the right price.</p></div></a>
	<a href="/sellers/default.aspx" class="button2"><div class="imagebox"></div><h1 class="Title">Mortgage Info</h1><div class="description"><p>Purchasing a new home is the most important decision you'll ever make. Mortgages help make that decision a reality.</p></div></a>
	<a href="/aboutus/Endorsements.aspx" class="button3"><div class="imagebox"></div><h1 class="Title">Home Owners</h1><div class="description"><p>Your home is much more than an investment, it's a lifetime of memories. I can help ensure they are taken care of.</p></div></a>
	<a href="/aboutus/default.aspx" class="button4"><div class="imagebox"></div><h1 class="Title">About Me</h1><div class="description"><p>Who you choose to help you find and sell your home is as important as the property itself. See why I'm right for you.</p></div></a>
  </div>        
        
      </div><!-- /splashContent -->

 <div id="testimonialsfullbox">
                <div id="testimonialheader">Testimonials</div>
<div id="testimonials">
 
 <blockquote><p>"...I've never had a sale go so smoothly, especially in these real estate trying times.  She helped us get the loan, the inspection, and even did the walk thru for us because we couldn't get down to Florida for it. She was fantastic and patient with us through the whole process, and we can't thank her enough!  Thanks Again!"
                <cite>&ndash;Martin - NY</cite></p></blockquote>
 
                <blockquote><p>"Shawna is an extraordinary realtor. Extremely dedicated in helping her clients find that perfect home, her creative energy infuses all aspects of the process making buying and selling a home an enjoyable experience..."
                <cite>&ndash;Sandra - LA</cite></p></blockquote>
 
                <blockquote><p>"Thank you so much for all your help in selling our house. Your marketing strategy and pricing was exactly what we needed to sell our house in a short amount of time..."
                <cite>&ndash;Jason - MA</cite></p></blockquote>
 
</div></div>

	<%-- <uc1:SimpleSearch id="SimpleSearch_uc" runat="server" />--%>
	<cc1:SearchMaster ID="mySearchMaster_uc"  runat="server" visible="true" />
   
	<div class="colmid">
		<div class="colleft">
			<section id="col-center" class="col">
				<div class="pos">
                
					<uc1:FeaturedListing id="FeaturedListing_uc" runat="server" FeatureListingHeader="Featured Listings" />
				
                <div class="module module_featuredsearches">
						<header>
							<h3>
								Featured Searches
							</h3>
						</header>
						<section>
							<cc1:eNREMSBucketSearches id="enREMSBucketSearches_uc" LinkPage="~/enPropertySearch/FeaturedSearch.aspx" BSLinkPage="~/enPropertySearch/FeaturedSearches.aspx" runat="server" >
								<cc1:eNREMSBucketSearch SortIndex="1" cssName="fs1" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="4" cssName="fs2" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="3" cssName="fs3" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="2" cssName="fs4" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="5" cssName="fs5" submitprompt="search" />
								<cc1:eNREMSBucketSearch SortIndex="6" cssName="fs6" submitprompt="search" />
							</cc1:enREMSBucketSearches>
						</section>
						<footer>
						</footer>
					</div>
				<div class="module module_customcontent">
                        	<section>
                                <%= m_objContent.GetParagraphVal("Home_Page_Content", "<header><h2>searching for a new home?</h2></header>< /br> Custom Content")%>                               
                            </section>
                            <footer>
                            </footer>
                        </div>
				</div>
			</section>
			<section id="col-side-a" class="col">
				<div class="pos">
                
				</div>
			</section>
			<section id="col-side-b" class="col">
				<div class="pos">
					<uc1:RequestInfo ID="RequestInfo_Uc" runat="server" SystemEventType="21" />
					<div class="module module_localpropertysearch">
						<uc1:LocalAreaPropertySearch_EN ID="LocalAreaPropertySearch_uc" runat="server" />
					</div>
					<div class="homelinks">
						<uc1:HomeFinderLeadCapture id="HomeFinderLeadCapture_uc" runat="server" />
						<uc1:NeighborhoodValueLeadCapture id="NeighborhoodValueLeadCapture_uc" runat="server" />
					</div>
				</div>
			</section>
		</div>
	</div>
</div>