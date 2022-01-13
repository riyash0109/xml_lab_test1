<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center">Employee Management System</h1>
				<xsl:apply-templates select = "Company/Employee" /> 
				<table border="2" align="center">
					<tr>
						<th>ID</th>
		                <th>Name</th>
		                <th>Age</th>
		                <th>Salary</th>
						<th>Email</th>
		                <th>Mob-num</th>
						<th>Designation</th>
						<th>Promotion</th>
		            </tr>
		            <xsl:for-each select="Company/Employee">
		            	<xsl:sort select="ID" order="ascending"/>
		                	<tr>
		                		<td>
		                			<xsl:value-of select="id"/>
		                		</td>
		                		<td>
		                			<xsl:value-of select="Emp-name"/>
		                        <td>
		                            <xsl:value-of select="Emp-age"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Emp-salary"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Emp-emailid"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Emp-Phonenum"/>
		                        </td>
								<td>
		                            <xsl:value-of select="Emp-designation"/>
		                        </td>

		                        <td>

		                        	<xsl:choose>
		                        		<xsl:when test="Emp-age &gt; 50">Associate Project Manager</xsl:when>
										<xsl:when test="Emp-age &gt; 40">Team Leader</xsl:when>
										<xsl:when test="Emp-age &gt; 20">Developer</xsl:when>

									    
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