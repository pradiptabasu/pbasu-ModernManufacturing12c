<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://TargetNamespace.com/DeviceAlert_Alert_request"
                xmlns:ns5="http://TargetNamespace.com/IotSimulatorAlert_Operation_IoTSim_request"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="urn:messages.ws.rightnow.com/v1_3" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/get_Contact"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns5 ns1 ns4 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns3="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/Incident"
                xmlns:ns10="urn:objects.ws.rightnow.com/v1_3"
                xmlns:ns13="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/IotSimulatorAlert"
                xmlns:ns9="urn:generic.ws.rightnow.com/v1_3"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/DeviceAlert"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:inp1="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/CreateIncident"
                xmlns:ns12="http://xmlns.oracle.com/pcbpel/adapter/db/IoT_DFS/IoTDFS_CreateIncident_SX/get_Contact"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns7="urn:nullfields.ws.rightnow.com/v1_3"
                xmlns:ns8="urn:base.ws.rightnow.com/v1_3" xmlns:ns11="urn:metadata.ws.rightnow.com/v1_3"
                xmlns:ns6="urn:faults.ws.rightnow.com/v1_3"
                xmlns:ns14="http://xmlns.oracle.com/pcbpel/adapter/db/IoT_DFS/IoTDFS_CreateIncident_SX/insert_CRM_Incident"
                xmlns:ns15="http://xmlns.oracle.com/SOACS/IoTDFS_CreateIncident_SX/IotSimulatorAlert">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/DeviceAlert.wsdl"/>
        <oracle-xsl-mapper:rootElement name="AlertData"
                                       namespace="http://TargetNamespace.com/DeviceAlert_Alert_request"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
        <oracle-xsl-mapper:param name="Invoke_CreateIncident_OutputVariable.parameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryCSVResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
        <oracle-xsl-mapper:param name="Invoke_ReslDate_OutputVariable.parameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="GetResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
        <oracle-xsl-mapper:param name="Invoke_getIncident_OutputVariable.parameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/get_Contact.wsdl"/>
        <oracle-xsl-mapper:rootElement name="get_ContactOutputCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/get_Contact"/>
        <oracle-xsl-mapper:param name="Invoke_getContact_OutputVariable.get_ContactOutputCollection"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/IotSimulatorAlert.wsdl"/>
        <oracle-xsl-mapper:rootElement name="IoTSimAlert"
                                       namespace="http://TargetNamespace.com/IotSimulatorAlert_Operation_IoTSim_request"/>
        <oracle-xsl-mapper:param name="OnMessage_IoTSim_InputVariable.request"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/insert_CRM_Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CrmIncidentCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:substitutions>
      <oracle-xsl-mapper:sourceSubst substPath="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects"
                                     substType="ns10:Incident"/>
    </oracle-xsl-mapper:substitutions>
  </oracle-xsl-mapper:schema>
  <xsl:param name="Invoke_CreateIncident_OutputVariable.parameters"/>
  <xsl:param name="Invoke_ReslDate_OutputVariable.parameters"/>
  <xsl:param name="Invoke_getIncident_OutputVariable.parameters"/>
  <xsl:param name="Invoke_getContact_OutputVariable.get_ContactOutputCollection"/>
  <xsl:param name="OnMessage_IoTSim_InputVariable.request"/>
  <xsl:template match="/">
    <tns:CrmIncidentCollection>
      <tns:CrmIncident>
        <tns:rnIncidentId>
          <xsl:value-of select="$Invoke_CreateIncident_OutputVariable.parameters/ns1:CreateResponse/ns1:RNObjectsResult/ns1:RNObjects/ns8:ID/@id"/>
        </tns:rnIncidentId>
        <tns:deviceInstanceId>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:IOT_ID"/>
        </tns:deviceInstanceId>
        <tns:deviceOwner>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:dev_owner"/>
        </tns:deviceOwner>
        <tns:rnContactId>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:rn_contact"/>
        </tns:rnContactId>
        <tns:subject>
          <xsl:value-of select="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects/ns10:Subject"/>
        </tns:subject>
        <tns:status>1</tns:status>
        <tns:isa>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:ISA"/>
        </tns:isa>
        <tns:rnLocationId>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:rn_locid"/>
        </tns:rnLocationId>
        <tns:incidentPriority>
          <xsl:value-of select="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects/ns10:Severity/ns8:ID/@id"/>
        </tns:incidentPriority>
        <tns:category>
          <xsl:value-of select="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects/ns10:Category/ns8:ID/@id"/>
        </tns:category>
        <tns:customerOrganization>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:OrgName"/>
        </tns:customerOrganization>
        <tns:assetName>
          <xsl:value-of select="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects/ns10:Asset/ns8:Name"/>
        </tns:assetName>
        <tns:assetSerialNumber>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:asset_serial"/>
        </tns:assetSerialNumber>
        <tns:rnIncidentRef>
          <xsl:value-of select="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects/ns8:LookupName"/>
        </tns:rnIncidentRef>
        <tns:resolutionDueDate>
          <xsl:value-of select="$Invoke_ReslDate_OutputVariable.parameters/ns1:QueryCSVResponse/ns1:CSVTableSet/ns1:CSVTables/ns1:CSVTable/ns1:Rows/ns1:Row"/>
        </tns:resolutionDueDate>
        <xsl:if test="string-length(/ns0:AlertData/ns0:id) > 0">
          <tns:iotcsMessageId>
            <xsl:value-of select="/ns0:AlertData/ns0:id"/>
          </tns:iotcsMessageId>
        </xsl:if>
        <xsl:if test="string-length($OnMessage_IoTSim_InputVariable.request/ns5:IoTSimAlert/ns5:msg_id) > 0">
          <tns:iotcsMessageId>
            <xsl:value-of select="$OnMessage_IoTSim_InputVariable.request/ns5:IoTSimAlert/ns5:msg_id"/>
          </tns:iotcsMessageId>
        </xsl:if>
        <tns:createdDate>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </tns:createdDate>
        <tns:assetid>
          <xsl:value-of select="$Invoke_getContact_OutputVariable.get_ContactOutputCollection/ns4:get_ContactOutputCollection/ns4:get_ContactOutput/ns4:asset_id"/>
        </tns:assetid>
      </tns:CrmIncident>
    </tns:CrmIncidentCollection>
  </xsl:template>
</xsl:stylesheet>
