<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">
        <!-- Let's Make Party Your Party Happen Sections=================================================================== -->
        <xsl:element name="section">
            <xsl:attribute name="class">
                narrow-section d-flex flex-column h-auto justify-content-around align-items-center
            </xsl:attribute>
            <xsl:attribute name="style">
                background: url(<xsl:value-of select="banner_image" />);
                background-repeat: no-repeat;
                background-position: center center;
                background-size: cover;
            </xsl:attribute>
            <xsl:element name="h1">
                <xsl:attribute name="class">
                    header-narrow h-auto text-start  px-2  align-self-start
                </xsl:attribute>
                <xsl:value-of select="banner_text" disable-output-escaping="yes" />
            </xsl:element>
            <xsl:element name="a">
                <xsl:attribute name="class">
                    btn btn-primary btn-lg rounded-pill grabMe-btn
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="target_link" />
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="button_link" />
                </xsl:attribute>
                <xsl:value-of select="button_text" />
            </xsl:element>
        </xsl:element>

        <section id="box-list" class="container d-flex flex-column align-items-center  ">
            <h1 id="box-member" class="text-center">
                <xsl:value-of select="bottom_header_text" disable-output-escaping="yes" />
            </h1>
            <div class="bar-dark  my-1 my-lg-4 my-md-3"></div>
            
            <xsl:element name="img">
             <xsl:attribute name="class">d-block mx-5 w-100</xsl:attribute>   
             <xsl:attribute name="src"><xsl:value-of select="bottom_image" /></xsl:attribute>
            </xsl:element>

            <xsl:element name="a">
                <xsl:attribute name="class">
                    btn btn-primary btn-lg rounded-pill grabMe-btn my-2
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="target_link" />
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="button_link" />
                </xsl:attribute>
                <xsl:value-of select="button_text" />
            </xsl:element>
            
            <div class="bar-dark  my-1 my-lg-4 my-md-3 d-md-block d-none"></div>
        </section>
        
        <!-- Modal Section -->

        <div class="modal fade" id="modal-product" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-img-contaniner position-relative mx-md-5 mt-md-3">
                        <img src="" alt="" class="modal-img ">
                        <div class=" modal-img-text w-100 h-auto position-absolute bottom-0 px-3 m-0 pb-3">
                            <h2 class="modal-name mb-0 mt-3 d-inline-block">
                                <!-- Test<br>Croissant -->
                            </h2>

                            <button type="button"
                                class="btn btn-primary rounded-pill grabMe-btn-modal d-inline-block mt-5  float-end">Grab
                                Me!</button>
                        </div>
                        <button type="button" class="btn-close btn-close-custom position-absolute top-0 end-0 m-3"
                            data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="row w-100 h-auto modal-text mx-auto">
                        <p class="col-5 modal-ingredient ps-2 ps-md-5 py-2">
                            <!-- Pumpkins,<br>
                        Milk, <br> 
                        Butter, <br> 
                        Whipcream -->
                        </p>
                        <p class="col-7 modal-detail py-2">
                            <!-- Pumpkin is hidden missing piece to add sweet and mild taste in your favorite cupcakes.
                        Now, let’s grab this and enjoy more good to both your health and joy. -->
                        </p>
                    </div>
                    <div class="time-preserve mx-auto py-2 text-center">
                        <img src="./images2/modal-clock.png" alt="" class="clock-img mb-3 d-inline-block">
                        <p class="modal-preservation d-inline-block pt-0 my-0 ps-2">
                            <!-- 2 Days Storage <br>
                        Cold and Dry Places -->
                        </p>

                    </div>
                </div>
            </div>
        </div>
        
        


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