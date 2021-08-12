<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">

        <xsl:for-each select="event_list">
            <xsl:variable name="position">
                <xsl:value-of select="position()" />
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="($position mod 2) = 1">
                    <section class=" event-section-tall container-fluid">
                        <div class="row h-100">
                            <div class="col-8 p-0 bg-black ">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="event_image" />
                                    </xsl:attribute>
                                    <xsl:attribute name="class">event-img-tall</xsl:attribute>
                                </xsl:element>
                            </div>
                            <div class="event-textbox-dark px-md-5 h-100 col-4 d-flex flex-column justify-content-evenly">
                                <h2 class="event-name-white">
                                    <xsl:value-of select="event_title" disable-output-escaping="yes" />
                                </h2>
                                <div class="bar-light-long "></div>

                                <p class="event-text-white d-none d-md-block">
                                   <xsl:value-of select="event_detail" disable-output-escaping="yes" />
                                </p>
                                <!-- <p class="event-text-white-thai d-none d-md-block">
                                   <xsl:value-of select="header_text" disable-output-escaping="yes" />
                                </p> -->
                                <div class="date-box d-flex justify-content-around align-items-center ">
                                    <div class="date-bar"></div>
                                    <div class="date ">
                                        <xsl:value-of select="event_date" disable-output-escaping="yes" />
                                    </div>
                                    <img class="event-pin " src="./images/placeholder.png" alt="">
                                </div>
                            </div>
                        </div>
                    </section>

                </xsl:when>
                <xsl:otherwise>
                    <section class=" event-section-tall container-fluid">
                        <div class="row h-100">
                            <div class="event-textbox-white px-md-5 h-100 col-4 d-flex flex-column justify-content-evenly">
                                <h2 class="event-name-dark">
                                    <xsl:value-of select="event_title" disable-output-escaping="yes" />
                                </h2>
                                <div class="bar-dark-long  "></div>

                                <p class="event-text-dark d-none d-md-block">
                                    <xsl:value-of select="event_detail" disable-output-escaping="yes" />
                                </p>
                                <!-- <p class="event-text-dark-thai d-none d-md-block">
                                    <xsl:value-of select="header_text" disable-output-escaping="yes" />
                                </p> -->
                                <div class="date-box d-flex justify-content-around align-items-center ">
                                    <div class="date-bar"></div>
                                    <div class="date ">
                                        <xsl:value-of select="event_date" disable-output-escaping="yes" />
                                    </div>
                                    <img class="event-pin  " src="./images/placeholder.png" alt="">

                                </div>

                            </div>
                            <div class="col-8 p-0 h-100 bg-bright">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="event_image" />
                                    </xsl:attribute>
                                    <xsl:attribute name="class">event-img-tall</xsl:attribute>
                                </xsl:element>
                            </div>
                        </div>
                    </section>
                
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>


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

