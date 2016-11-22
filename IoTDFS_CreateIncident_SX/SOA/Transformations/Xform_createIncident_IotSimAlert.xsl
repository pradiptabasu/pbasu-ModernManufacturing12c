<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://TargetNamespace.com/IotSimulatorAlert_Operation_IoTSim_request"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="urn:messages.ws.rightnow.com/v1_3" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/get_Contact"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns3="http://xmlns.oracle.com/pcbpel/adapter/db/IoT_DFS/IoTDFS_CreateIncident_SX/get_Contact"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/IotSimulatorAlert"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns4="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/Incident"
                xmlns:ns9="urn:objects.ws.rightnow.com/v1_3" xmlns:ns8="urn:generic.ws.rightnow.com/v1_3"
                xmlns:inp1="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/CreateIncident"
                xmlns:ns7="urn:base.ws.rightnow.com/v1_3" xmlns:ns6="urn:nullfields.ws.rightnow.com/v1_3"
                xmlns:ns10="urn:metadata.ws.rightnow.com/v1_3" xmlns:ns5="urn:faults.ws.rightnow.com/v1_3"
                xmlns:ns11="http://xmlns.oracle.com/SOACS/IoTDFS_CreateIncident_SX/IotSimulatorAlert">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/IotSimulatorAlert.wsdl"/>
        <oracle-xsl-mapper:rootElement name="IoTSimAlert"
                                       namespace="http://TargetNamespace.com/IotSimulatorAlert_Operation_IoTSim_request"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/get_Contact.wsdl"/>
        <oracle-xsl-mapper:rootElement name="get_ContactOutputCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/get_Contact"/>
        <oracle-xsl-mapper:param name="Invoke_getContact_OutputVariable.get_ContactOutputCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Create" namespace="urn:messages.ws.rightnow.com/v1_3"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:substitutions>
      <oracle-xsl-mapper:targetSubst substPath="/tns:Create/tns:RNObjects" substType="ns9:Incident"/>
    </oracle-xsl-mapper:substitutions>
  </oracle-xsl-mapper:schema>
  <xsl:param name="Invoke_getContact_OutputVariable.get_ContactOutputCollection"/>
  <xsl:template match="/">
    <tns:Create>
      <tns:RNObjects xsi:type="ns9:Incident">
        <ns9:Asset>
          <ns7:ID>
            <xsl:attribute name="id">
              <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:asset_id"/>
            </xsl:attribute>
          </ns7:ID>
        </ns9:Asset>
        <xsl:choose>
          <xsl:when test="string(/ns0:IoTSimAlert/ns0:data_category)!=''">
            <xsl:variable name="query2"
                          select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'&quot;,/ns0:IoTSimAlert/ns0:data_category,&quot;'&quot;,&quot; and isa='&quot;,$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:ISA,&quot;'&quot;)"/>
            <ns9:Category>
              <ns7:ID id='{oraext:query-database($query2,false(),false(),"jdbc/IoTDFSDataSource")}'/>
            </ns9:Category>
          </xsl:when>
          <xsl:otherwise>
            <xsl:variable name="query2"
                          select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'Product Support'&quot;,&quot; and isa='&quot;,$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:ISA,&quot;'&quot;)"/>
            <ns9:Category>
              <ns7:ID id='{oraext:query-database($query2,false(),false(),"jdbc/IoTDFSDataSource")}'/>
            </ns9:Category>
          </xsl:otherwise>
        </xsl:choose>
        <ns9:Organization>
          <ns7:ID id="{$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:OrgID}"/>
        </ns9:Organization>
        <ns9:PrimaryContact>
          <ns9:Contact>
            <ns7:ID id="{$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:rn_contact}"/>
          </ns9:Contact>
        </ns9:PrimaryContact>
        <xsl:if test="string(/ns0:IoTSimAlert/ns0:msg_priority)!=''">
          <xsl:variable name="query"
                        select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'&quot;,/ns0:IoTSimAlert/ns0:msg_priority,&quot;'&quot;,&quot; and isa='&quot;,$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:ISA,&quot;'&quot;)"/>
          <ns9:Severity>
            <ns7:ID id='{oraext:query-database($query,false(),false(),"jdbc/IoTDFSDataSource")}'/>
          </ns9:Severity>
        </xsl:if>
        <xsl:if test="string(/ns0:IoTSimAlert/ns0:data_status)!=''">
          <xsl:variable name="query1"
                        select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'&quot;,/ns0:IoTSimAlert/ns0:data_status,&quot;'&quot;,&quot; and isa='&quot;,$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:ISA,&quot;'&quot;)"/>
          <ns9:StatusWithType>
            <ns9:Status>
              <ns7:ID id='{oraext:query-database($query1,false(),false(),"jdbc/IoTDFSDataSource")}'/>
            </ns9:Status>
          </ns9:StatusWithType>
        </xsl:if>
        <xsl:choose>
          <xsl:when test="string(/ns0:IoTSimAlert/ns0:data_subject)!=''">
            <ns9:Subject>
              <xsl:value-of select="/ns0:IoTSimAlert/ns0:data_subject"/>
            </ns9:Subject>
          </xsl:when>
          <xsl:otherwise>
            <ns9:Subject>Motor Temperature High</ns9:Subject>
          </xsl:otherwise>
        </xsl:choose>
      </tns:RNObjects>
      <tns:ProcessingOptions>
        <tns:SuppressExternalEvents>false</tns:SuppressExternalEvents>
        <tns:SuppressRules>false</tns:SuppressRules>
      </tns:ProcessingOptions>
    </tns:Create>
  </xsl:template>
</xsl:stylesheet>
