<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>

<h2>Samochody</h2>
    <ol>
        <xsl:for-each select="carrental/cars/car">
            <li>
                <font color='blue'></font>
                <b><xsl:value-of select="@brand"/></b>
                <xsl:text> </xsl:text>
                <b><xsl:value-of select="model"/></b>
                <xsl:text> </xsl:text>
                <xsl:value-of select="year"/>
                <b><xsl:text> Cena za dzień/dobę: </xsl:text></b>
                <xsl:value-of select="price/perHour"/>
                <xsl:text>/</xsl:text>
                <xsl:value-of select="price/perDay"/>
                <xsl:text> pln</xsl:text>
            </li>
        </xsl:for-each>
    </ol>

<h2>Pracownicy</h2>
    <ol>
        <xsl:for-each select="carrental/employees/employee">    
            <li>
                <b><xsl:value-of select="name"/></b>
                <xsl:text> </xsl:text>
                <b><xsl:value-of select="surname"/></b>
                <xsl:text> nr.tel. </xsl:text>
                <xsl:value-of select="phone"/>
                <b><xsl:text> Adres: </xsl:text></b>
                <xsl:value-of select="address/city"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="address/street"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="address/postcode"/>
            </li>
        </xsl:for-each>           
    </ol>

<h2>Historia zamówień</h2>
    <ol>
        <xsl:for-each select="carrental/rentlog/rental">    
            <li>
                <b><xsl:text>ID samochodu: </xsl:text></b>
                <xsl:value-of select="@idcar"/>
                <b><xsl:text> Data i godzina wypożyczenia: </xsl:text></b>
                <b><xsl:value-of select="startdate"/></b>
                <xsl:text> </xsl:text>
                <xsl:value-of select="starttime"/>
                <b><xsl:text> Data i godzina oddania: </xsl:text></b>
                <xsl:value-of select="enddate"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="endtime"/>
            </li>
        </xsl:for-each>           
    </ol>

</body>
</html>
</xsl:template>
</xsl:stylesheet>