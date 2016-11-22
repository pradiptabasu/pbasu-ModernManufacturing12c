<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns1="http://xmlns.oracle.com/SOACS/Project1/BPELProcess1"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://www.example.org" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:tns="http://xmlns.oracle.com/SOACS/IoTDFS2_OTAUpdate/OTAUpdate">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/OTAUpdate.wsdl"/>
        <oracle-xsl-mapper:rootElement name="BatchUpdateReqMsg" namespace="http://www.example.org"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/OTAUpdate.wsdl"/>
        <oracle-xsl-mapper:rootElement name="processVariable"
                                       namespace="http://xmlns.oracle.com/SOACS/Project1/BPELProcess1"/>
        <oracle-xsl-mapper:param name="processvariable"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/OTAUpdate.wsdl"/>
        <oracle-xsl-mapper:rootElement name="BatchUpdateReqMsg" namespace="http://www.example.org"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="processvariable"/>
  <xsl:template match="/">
    <ns0:BatchUpdateReqMsg>
      <ns0:BatchName>
        <ns0:industryType>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:industryType"/>
        </ns0:industryType>
        <ns0:BatchId>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:BatchId"/>
        </ns0:BatchId>
        <ns0:deviceID>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:deviceID[number($processvariable/ns1:processVariable/ns1:deviceLoopIndex)]"/>
        </ns0:deviceID>
        <ns0:attribute>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:attribute"/>
        </ns0:attribute>
        <ns0:value>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:value"/>
        </ns0:value>
        <ns0:operation>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:operation"/>
        </ns0:operation>
        <ns0:status>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:status"/>
        </ns0:status>
        <ns0:description>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:description"/>
        </ns0:description>
        <ns0:incidentId>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName[number($processvariable/ns1:processVariable/ns1:batchLoopIndex)]/ns0:incidentId"/>
        </ns0:incidentId>
      </ns0:BatchName>
    </ns0:BatchUpdateReqMsg>
  </xsl:template>
</xsl:stylesheet>
