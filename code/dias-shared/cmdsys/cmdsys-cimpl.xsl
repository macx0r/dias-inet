<?xml version="1.0"?>
<xslt:stylesheet xmlns:xslt="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xslt:output method="text" indent="yes"/>
<xslt:preserve-space elements="cmdsys subsys class div cmd enum entry"/>
<!--
/*******************************************************************************
*  This is a part of aIm SUITE.Internet                                        *
*                                                                              *
*  Kernel service-specific publuc functions implementation module              *
*                                                                              *
*  Do not copy, view or modify this code unless your a member of               *
*  aIm SUITE development team                                                  *
*                                                                              *
*  For licensing information see license.txt in the program root directory     *
*                                                                              *
*  Created 28.07.2004 Maxim A. Orlovsky (maxim_orlovsky@yahoo.com)             *
*                                                                              *
*******************************************************************************/
-->

	<xslt:template match="/">
		<xslt:for-each select="cmdsys">
			<xslt:if test="@title[.='DIAS']">
/*******************************************************************************
*  This is a part of <xslt:value-of select="@title"/> ver<xslt:value-of select="concat(@ver,'.',@subver)"/>, aIm SUITE.Internet                          *
*                                                                              *
*  <xslt:value-of select="@title"/> kernel service-specific publuc functions implementation module         *
*                                                                              *
*  Do not copy, view or modify this code unless your a member of               *
*  <xslt:value-of select="@title"/> development team                                                       *
*                                                                              *
*  For licensing information see license.txt in the program root directory     *
*                                                                              *
*  File is automatically generated from dias_cmdsys.xml                        *
*                                                                              *
*******************************************************************************/

				<xslt:for-each select="subsys[attribute::title='img']">
/*
 *** List of .cm files that MUST exists in the ./comp directory 
 *
<xslt:for-each select=".//cmd[attribute::state='implemented']">
<xslt:value-of select="concat('	',parent::*/parent::*/parent::*/attribute::title,'_',parent::*/parent::*/attribute::title,'_',@title)"/>.cm
</xslt:for-each>
 */

					<xslt:apply-templates select="class"/>
				</xslt:for-each>
			</xslt:if>
		</xslt:for-each>
	</xslt:template>

	<xslt:template match="class">

/*******************************************************************************
 * <xslt:value-of select="@name"/>
 ******************************************************************************/<xslt:apply-templates select="div" />
	</xslt:template>

	<xslt:template match="div">
		
/*
 * <xslt:value-of select="@name"/>
 */
<xslt:apply-templates select="cmd" />
	</xslt:template>

	<xslt:template match="cmd">
/* <xslt:value-of select="@name"/> */
bool ce_<xslt:value-of select="concat(parent::*/parent::*/parent::*/attribute::title,'_',parent::*/parent::*/attribute::title,'_',@title)"/> (client* c, packet* query, packet* resp) {
<xslt:choose>
	<xslt:when test="@state[.='implemented']">	/* This function MUST BE implemented as a separate .cm file */
#</xslt:when>
	<xslt:otherwise>	/* This function is not implemented yet */
//#</xslt:otherwise></xslt:choose>	include "comp/<xslt:value-of select="concat(parent::*/parent::*/parent::*/attribute::title,'_',parent::*/parent::*/attribute::title,'_',@title)"/>.cm"
	return (false);
}
	</xslt:template>

</xslt:stylesheet>
