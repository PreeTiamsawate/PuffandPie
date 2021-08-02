<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

        <nav class="navbar navbar-expand-md navigation-bar d-none d-md-block fixed-top">
            <div class="container mt-lg-2">
                <xsl:element name="a">
                    <xsl:attribute name="class">navbar-brand ms-md-3</xsl:attribute>
                    <xsl:attribute name="href">??????</xsl:attribute>
                    <xsl:element name="img">
                        <xsl:attribute name="class">logo-home</xsl:attribute>
                        <xsl:attribute name="src"><xsl:value-of select="logo_link" /></xsl:attribute>
                    </xsl:element>
                </xsl:element>
            
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto mb-lg-0 mb-md-2  nav-menu d-md-flex justify-content-between">
                        <xsl:for-each select="header_menu">
                            <xsl:element name="li">
                                <xsl:attribute name="class">nav-item</xsl:attribute>
                                <xsl:element name="a">
                                    <xsl:attribute name="class">nav-link nav-menu-link</xsl:attribute>
                                    <xsl:attribute name="href"><xsl:value-of select="menu_link" /></xsl:attribute>
                                    <xsl:attribute name="target"><xsl:value-of select="target_link"/></xsl:attribute>
                                    <xsl:value-of select="menu_name" />
                                </xsl:element>
                            </xsl:element>
                        </xsl:for-each>
                    </ul>
                    <xsl:element name="a">
                        <xsl:attribute name="href"><xsl:value-of select="https://www.thaicatering.com" /></xsl:attribute>
                        <xsl:attribute name="target">_blank</xsl:attribute>
                        <xsl:element name="img">
                            <xsl:attribute name="id">catering-logo</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="catering_logo" /></xsl:attribute>
                        </xsl:element>
                    </xsl:element>
                </div>
            </div>
        </nav>
    </xsl:template>

	<xsl:template name="addLink">
		<xsl:param name="linkUrl" />
		<xsl:choose>
			<xsl:when test="starts-with($linkUrl,'/sites')">
				<xsl:variable name="beforepagesubmenu">
					<xsl:value-of select="substring-before($linkUrl, '.page')" />
				</xsl:variable>
				<xsl:variable name="url"
					select="substring-after(substring-after(substring-after($beforepagesubmenu,'/'),'/'),'/')" />
				<xsl:value-of select="concat('$PAGE_LINK[',$url,']')" />
			</xsl:when>
			<xsl:when test="starts-with($linkUrl,'/static') or starts-with($linkUrl,'/html')">
				<xsl:value-of select="concat('$URL_PREFIX[',$linkUrl,']')" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$linkUrl" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>    




    <!--Original HTML============================================================ -->
    
  <nav class="navbar navbar-expand-md navigation-bar d-none d-md-block fixed-top">
        <div class="container mt-lg-2">
            <a class="navbar-brand ms-md-3" href="./Home.html">
                <img src="./images/PuffnPie_Logo.png" class="logo-home"></img>
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-lg-0 mb-md-2  nav-menu d-md-flex justify-content-between">
                    <li class="nav-item  ">
                        <a class="nav-link nav-menu-link  " href="./Bakery.html">Bakery</a>
                    </li>
                    <li class="nav-item  ">
                        <a class="nav-link nav-menu-link" href="./Meal.html">Meal</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link  nav-menu-link " href="./Box.html">Box</a>
                    </li>
                    <li class="nav-item  ">
                        <a class="nav-link nav-menu-link " href="./Event.html">Event</a>
                    </li>
                    <li class="nav-item  ">
                        <a class="nav-link nav-menu-link " href="#contentFooter">Contact</a>
                    </li>
                </ul>
                <a href="#">
                    <img src="./images/Catering_Logo.png" id="catering-logo">
                </a>
            </div>
        </div>
    </nav>

    <!--Example from Teamsite============================================================ -->

    <xsl:element name="nav">
			<xsl:attribute name="class">navbar navbar-expand-md navigation-bar d-none d-md-block fixed-top</xsl:attribute>
				<xsl:element name="div">
					<xsl:attribute name="class">container mt-lg-2</xsl:attribute>
					<xsl:element name="a">
						<xsl:attribute name="class">navbar-brand ms-md-3</xsl:attribute>
						<xsl:attribute name="href"><xsl:value-of select="Properties/Data/Datum/DCR/header/logo_link" /></xsl:attribute>
						<xsl:element name="div">
							<xsl:attribute name="class">logo-home</xsl:attribute>
						</xsl:element>
					</xsl:element>
					<xsl:element name="button">
						<xsl:attribute name="class">navbar-toggler</xsl:attribute>
						<xsl:attribute name="type">button</xsl:attribute>
						<xsl:attribute name="data-bs-toggle">collapse</xsl:attribute>
						<xsl:attribute name="data-bs-target">#navbarSupportedContent</xsl:attribute>
						<xsl:attribute name="aria-controls">navbarSupportedContent</xsl:attribute>
						<xsl:attribute name="aria-expanded">false</xsl:attribute>
						<xsl:attribute name="aria-label">Toggle navigation</xsl:attribute>
						<xsl:element name="span">
							<xsl:attribute name="class">navbar-toggler-icon</xsl:attribute>
						</xsl:element>
					</xsl:element>
					<xsl:element name="div">
						<xsl:attribute name="class">collapse navbar-collapse</xsl:attribute>
						<xsl:attribute name="id">navbarSupportedContent</xsl:attribute>
						<xsl:element name="ul">
							<xsl:attribute name="class">avbar-nav mx-auto mb-lg-0 mb-md-2  nav-menu d-md-flex justify-content-between</xsl:attribute>
							<xsl:for-each select="/Properties/Data/Datum/DCR/header/header_menu">
								<xsl:element name="li">
									<xsl:attribute name="class">nav-item</xsl:attribute>
									<xsl:element name="a">
										<xsl:attribute name="class">nav-link nav-menu-link</xsl:attribute>
										<xsl:attribute name="aria-current">page</xsl:attribute>
										<xsl:attribute name="target"><xsl:value-of select="target_link" /></xsl:attribute>
										<xsl:attribute name="href"><xsl:value-of select="menu_link" /></xsl:attribute>
										<xsl:value-of select="menu_name" />
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
						</xsl:element>
						<xsl:element name="div">
							<xsl:attribute name="id">catering-logo</xsl:attribute>
						</xsl:element>
					</xsl:element>
				</xsl:element>
			</xsl:element>
