<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://TargetNamespace.com/CustomerIncident_CreateCustomerIncident_request"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns1="urn:messages.ws.rightnow.com/v1_3" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns4="http://xmlns.oracle.com/pcbpel/adapter/db/top/getContactDetails"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 ns1 ns4 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns3="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident/Incident"
                xmlns:ns9="urn:objects.ws.rightnow.com/v1_3"
                xmlns:ns2="http://xmlns.oracle.com/SOACS/IoTDFS_CreateIncident/CustomerIncident"
                xmlns:ns8="urn:generic.ws.rightnow.com/v1_3"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:inp2="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident/CreateIncident"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:ns6="urn:nullfields.ws.rightnow.com/v1_3"
                xmlns:ns7="urn:base.ws.rightnow.com/v1_3"
                xmlns:ns11="http://xmlns.oracle.com/pcbpel/adapter/db/SOACS/IoTDFS_CreateIncident/getContactDetails"
                xmlns:ns10="urn:metadata.ws.rightnow.com/v1_3" xmlns:ns5="urn:faults.ws.rightnow.com/v1_3"
                xmlns:ns12="http://xmlns.oracle.com/pcbpel/adapter/db/IoT_DFS/IoTDFS_CreateIncident/insert_CRM_Incident">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/CustomerIncident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CustomerIncidentReq"
                                       namespace="http://TargetNamespace.com/CustomerIncident_CreateCustomerIncident_request"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
        <oracle-xsl-mapper:param name="Invoke_CreateIncident_OutputVariable.parameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="GetResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
        <oracle-xsl-mapper:param name="Invoke_getIncident_OutputVariable.parameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryCSVResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
        <oracle-xsl-mapper:param name="Invoke_ReslDate_OutputVariable.parameters"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/getContactDetails.wsdl"/>
        <oracle-xsl-mapper:rootElement name="DfsContactDetailsViewCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/getContactDetails"/>
        <oracle-xsl-mapper:param name="Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/insert_CRM_Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CrmIncidentCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:param name="Invoke_CreateIncident_OutputVariable.parameters"/>
  <xsl:param name="Invoke_getIncident_OutputVariable.parameters"/>
  <xsl:param name="Invoke_ReslDate_OutputVariable.parameters"/>
  <xsl:param name="Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection"/>
  <xsl:template match="/">
    <tns:CrmIncidentCollection>
      <tns:CrmIncident>
        <tns:rnIncidentId>
          <xsl:value-of select="$Invoke_CreateIncident_OutputVariable.parameters/ns1:CreateResponse/ns1:RNObjectsResult/ns1:RNObjects/ns7:ID/@id"/>
        </tns:rnIncidentId>
        <tns:deviceOwner>
          <xsl:value-of select="$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:customerPartyCode"/>
        </tns:deviceOwner>
        <tns:rnContactId>
          <xsl:value-of select="/ns0:CustomerIncidentReq/ns0:Contact"/>
        </tns:rnContactId>
        <tns:subject>
          <xsl:value-of select="/ns0:CustomerIncidentReq/ns0:Subject"/>
        </tns:subject>
        <xsl:variable name="query"
                      select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'&quot;,/ns0:CustomerIncidentReq/ns0:Status,&quot;'&quot;,&quot; and isa='&quot;,$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:isa,&quot;'&quot;)"/>
        <tns:status>
          <xsl:value-of select='oraext:query-database($query,false(),false(),"jdbc/IoTDFSDataSource")'/>
        </tns:status>
        <tns:isa>
          <xsl:value-of select="$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:isa"/>
        </tns:isa>
        <tns:rnLocationId>
          <xsl:value-of select="$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:rnLocationId"/>
        </tns:rnLocationId>
        <xsl:variable name="query1"
                      select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'&quot;,/ns0:CustomerIncidentReq/ns0:Severity,&quot;'&quot;,&quot; and isa='&quot;,$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:isa,&quot;'&quot;)"/>
        <tns:incidentPriority>
          <xsl:value-of select='oraext:query-database($query1,false(),false(),"jdbc/IoTDFSDataSource")'/>
        </tns:incidentPriority>
        <xsl:variable name="query2"
                      select="concat(&quot;select lookup_code from DFS_RN_LOOKUPS where lookup_value=&quot;,&quot;'&quot;,/ns0:CustomerIncidentReq/ns0:Category,&quot;'&quot;,&quot; and isa='&quot;,$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:isa,&quot;'&quot;)"/>
        <tns:category>
          <xsl:value-of select='oraext:query-database($query2,false(),false(),"jdbc/IoTDFSDataSource")'/>
        </tns:category>
        <tns:customerOrganization>
          <xsl:value-of select="$Invoke_getContactDetailsSelect_OutputVariable.DfsContactDetailsViewCollection/ns4:DfsContactDetailsViewCollection/ns4:DfsContactDetailsView/ns4:organizationName"/>
        </tns:customerOrganization>
        <tns:rnIncidentRef>
          <xsl:value-of select="$Invoke_getIncident_OutputVariable.parameters/ns1:GetResponse/ns1:RNObjectsResult/ns1:RNObjects/ns7:LookupName"/>
        </tns:rnIncidentRef>
        <tns:resolutionDueDate>
          <xsl:value-of select="$Invoke_ReslDate_OutputVariable.parameters/ns1:QueryCSVResponse/ns1:CSVTableSet/ns1:CSVTables/ns1:CSVTable/ns1:Rows/ns1:Row"/>
        </tns:resolutionDueDate>
        <tns:createdDate>
          <xsl:value-of select="xp20:current-dateTime ( )"/>
        </tns:createdDate>
      </tns:CrmIncident>
    </tns:CrmIncidentCollection>
  </xsl:template>
</xsl:stylesheet>
