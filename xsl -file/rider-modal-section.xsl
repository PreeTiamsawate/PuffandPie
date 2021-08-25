<!DOCTYPE html-entities SYSTEM "http://www.interwoven.com/livesite/xsl/xsl-html.dtd">
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Skin: Default XSL -->

	<xsl:include href="http://www.interwoven.com/livesite/xsl/HTMLTemplates.xsl" />
	<xsl:include href="http://www.interwoven.com/livesite/xsl/StringTemplates.xsl" />
	<xsl:template match="/">
    <div class="modal fade " id="modal-rider" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content mx-auto modal-rider-content ">
                <h1 class="custom-modal-header">Select</h1>
                <h2 class="custom-modal-subheader">Your Delivery</h2>
                <div class="rider-box mx-auto">
                    <a href="https://bit.ly/2UzPYZs" target="_blank" class="rider-btn" id="grabfood-btn">
                        <img src="./images2/Deliveries/Grab Food.png" alt="">
                        <img class="d-none" src="./images2/Deliveries/Grab Food - active.png" alt="">
                    </a>
                    <a href="#" class="rider-btn" target="_blank" id="foodpanda-btn">
                        <img src="./images2/Deliveries/Foodpanda.png" alt="">
                        <img class="d-none" src="./images2/Deliveries/Foodpanda - active.png" alt="">
                    </a>
                    <a href="" class="rider-btn" target="_blank" id="robinhood-btn">
                        <img src="./images2/Deliveries/Robinhood.png" alt="">
                        <img class="d-none" src="./images2/Deliveries/Robinhood - active.png" alt="">
                    </a>

                    <a href="https://lin.ee/w7TtUKN" target="_blank" class="rider-btn" id="lineOA-btn">
                        <img src="./images2/Deliveries/Line OA.png" alt="">
                        <img class="d-none" src="./images2/Deliveries/Line OA - active.png" alt="">
                    </a>
                </div>
                <button type="button" class="btn-close btn-close-custom position-absolute top-0 end-0 m-3"
                    data-bs-dismiss="modal" aria-label="Close"></button>
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