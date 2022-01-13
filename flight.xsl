<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center">Flight Details</h1>
				<xsl:apply-templates select = "Travel/Flight" /> 
				<table border="2" align="center">
					<tr>
						<th>FlightNo</th>
		                <th>AirLine</th>
		                <th>Source</th>
		                <th>Destination</th>
		                <th>Fare</th>
		                <th>No Of Seats</th>
						
		            </tr>
		            <xsl:for-each select="Travel/Flight">
		            	<xsl:sort select="flightNo" order="ascending"/>
		            	<xsl:if test="fare &lt; 6000">
		                	<tr>
		                		<td>
		                			<xsl:value-of select="flightNo"/>
		                		</td>
		                		<td>
		                			<xsl:value-of select="airlineName"/>
		                        <td>
		                            <xsl:value-of select="source"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="destination"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="fare"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="noofseats"/>
		                        </td>
		                        <td>
		                        	<xsl:choose>
		                        		<xsl:when test="noofseats &gt; 30">Many seats are available</xsl:when>
									    <xsl:otherwise>Only few seats are available</xsl:otherwise>
							        </xsl:choose>
						        </td>
					        </td>
					    </tr>
		                </xsl:if>
		            </xsl:for-each>
		        </table>
		    </body>
		</html>
</xsl:template>
        <xsl:template match = "airlineName"> 
        	<span style = "font-size = 22px;"> <xsl:value-of select = "." />     </span> <br/> 
        </xsl:template>  
</xsl:stylesheet>