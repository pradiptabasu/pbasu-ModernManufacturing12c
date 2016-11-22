<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="urn:messages.ws.rightnow.com/v1_3" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns0="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident/CreateIncident"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/get_Contact"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns2="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident/Incident"
                xmlns:ns7="urn:objects.ws.rightnow.com/v1_3" xmlns:ns6="urn:generic.ws.rightnow.com/v1_3"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns9="http://xmlns.oracle.com/pcbpel/adapter/db/IoT_DFS/IoTDFS_CreateIncident/get_Contact"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns4="urn:nullfields.ws.rightnow.com/v1_3"
                xmlns:ns5="urn:base.ws.rightnow.com/v1_3" xmlns:ns8="urn:metadata.ws.rightnow.com/v1_3"
                xmlns:ns3="urn:faults.ws.rightnow.com/v1_3">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateIncidentReq"
                                       namespace="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident/CreateIncident"/>
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
      <oracle-xsl-mapper:targetSubst substPath="/tns:Create/tns:RNObjects" substType="ns7:Incident"/>
    </oracle-xsl-mapper:substitutions>
  </oracle-xsl-mapper:schema>
  <xsl:param name="Invoke_getContact_OutputVariable.get_ContactOutputCollection"/>
  <xsl:template match="/">
    <tns:Create>
      <tns:RNObjects xsi:type="ns7:Incident">
        <ns7:Asset>
          <ns5:ID id="{$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:asset_id}"/>
        </ns7:Asset>
        <ns7:Category>
          <ns5:ID id="{/ns0:CreateIncidentReq/ns0:Category}"/>
        </ns7:Category>
        <ns7:Organization>
          <ns5:ID id="{$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:OrgID}"/>
        </ns7:Organization>
        <ns7:PrimaryContact>
          <ns7:Contact>
            <ns5:ID id="{$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns1:get_ContactOutputCollection/ns1:get_ContactOutput/ns1:rn_contact}"/>
          </ns7:Contact>
        </ns7:PrimaryContact>
        <ns7:Severity>
          <ns5:ID id="{/ns0:CreateIncidentReq/ns0:Severity}"/>
        </ns7:Severity>
        <ns7:StatusWithType>
          <ns7:Status>
            <ns5:ID id="1"/>
          </ns7:Status>
        </ns7:StatusWithType>
        <ns7:Subject>
          <xsl:value-of select="/ns0:CreateIncidentReq/ns0:Subject"/>
        </ns7:Subject>
      </tns:RNObjects>
      <tns:ProcessingOptions>
        <tns:SuppressExternalEvents>false</tns:SuppressExternalEvents>
        <tns:SuppressRules>false</tns:SuppressRules>
      </tns:ProcessingOptions>
    </tns:Create>
  </xsl:template>
</xsl:stylesheet>
