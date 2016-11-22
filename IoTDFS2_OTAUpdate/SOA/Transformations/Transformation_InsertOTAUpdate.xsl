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
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertOTARecord"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns1 ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://xmlns.oracle.com/SOACS/IoTDFS2_OTAUpdate/OTAUpdate"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/SOACS/IoTDFS2_OTAUpdate/insertOTARecord"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/">
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
        <oracle-xsl-mapper:schema location="../WSDLs/insertOTARecord.wsdl"/>
        <oracle-xsl-mapper:rootElement name="DeviceOtaUpdatesCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insertOTARecord"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="processvariable"/>
  <xsl:template match="/">
    <tns:DeviceOtaUpdatesCollection>
      <tns:DeviceOtaUpdates>
        <tns:isa>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:industryType"/>
        </tns:isa>
        <tns:attributeName>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:attribute"/>
        </tns:attributeName>
        <tns:attributeValue>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:value"/>
        </tns:attributeValue>
        <xsl:if test="$processvariable/ns1:processVariable/ns1:restURI">
          <tns:restUri>
            <xsl:value-of select="$processvariable/ns1:processVariable/ns1:restURI"/>
          </tns:restUri>
        </xsl:if>
        <tns:seqNo>
          <xsl:value-of select="oraext:sequence-next-val ('DEVICE_OTA_UPDATES_SEQ', &quot;jdbc/IoTDFSDataSource&quot; )"/>
        </tns:seqNo>
        <tns:processFlag>NEW</tns:processFlag>
        <tns:deviceId>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:deviceID"/>
        </tns:deviceId>
        <tns:status>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:status"/>
        </tns:status>
        <tns:description>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:description"/>
        </tns:description>
        <tns:timeOfExecution>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </tns:timeOfExecution>
        <tns:incidentId>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:incidentId"/>
        </tns:incidentId>
        <tns:operation>
          <xsl:value-of select="/ns0:BatchUpdateReqMsg/ns0:BatchName/ns0:operation"/>
        </tns:operation>
      </tns:DeviceOtaUpdates>
    </tns:DeviceOtaUpdatesCollection>
  </xsl:template>
</xsl:stylesheet>
