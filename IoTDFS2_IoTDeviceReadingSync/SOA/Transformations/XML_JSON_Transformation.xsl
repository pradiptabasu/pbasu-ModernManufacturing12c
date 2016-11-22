<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://www.example.org" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl xp20 xref mhdr oraext dvm socket" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:tns="http://xmlns.oracle.com/DEVICE_READING/IoTDFS2_IoTDeviceReadingSync/Sync" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Sync.wsdl"/>
            <oracle-xsl-mapper:rootElement name="DeviceReadingSyncReq" namespace="http://www.example.org"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/Sync.wsdl"/>
            <oracle-xsl-mapper:rootElement name="TransformResultReq" namespace="http://www.example.org"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <ns0:TransformResultReq>
         <ns0:TransformResult>
            <xsl:text disable-output-escaping="no">{</xsl:text>
            <xsl:for-each select="/ns0:DeviceReadingSyncReq[1]/ns0:payload[1]/*">
               <xsl:choose>
                  <xsl:when test="contains(name(.),'data')">
                     <xsl:for-each select="/ns0:DeviceReadingSyncReq[1]/ns0:payload[1]/ns0:data[1]/*">
                        <xsl:choose>
                           <xsl:when test="position()!=last()">
                              <xsl:text disable-output-escaping="no">"</xsl:text>
                              <xsl:value-of select="name()"/>
                              <xsl:text disable-output-escaping="no">":"</xsl:text>
                              <xsl:value-of select="."/>
                              <xsl:text disable-output-escaping="no">",</xsl:text>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:text disable-output-escaping="no">"</xsl:text>
                              <xsl:value-of select="name()"/>
                              <xsl:text disable-output-escaping="no">":"</xsl:text>
                              <xsl:value-of select="."/>
                              <xsl:text disable-output-escaping="no">"</xsl:text>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:choose>
                        <xsl:when test="position()!=last()">
                           <xsl:text disable-output-escaping="no">"</xsl:text>
                           <xsl:value-of select="name()"/>
                           <xsl:text disable-output-escaping="no">":"</xsl:text>
                           <xsl:value-of select="."/>
                           <xsl:text disable-output-escaping="no">",</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:text disable-output-escaping="no">"</xsl:text>
                           <xsl:value-of select="name()"/>
                           <xsl:text disable-output-escaping="no">":"</xsl:text>
                           <xsl:value-of select="."/>
                           <xsl:text disable-output-escaping="no">"</xsl:text>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
}
         </ns0:TransformResult>
      </ns0:TransformResultReq>
   </xsl:template>
</xsl:stylesheet>
