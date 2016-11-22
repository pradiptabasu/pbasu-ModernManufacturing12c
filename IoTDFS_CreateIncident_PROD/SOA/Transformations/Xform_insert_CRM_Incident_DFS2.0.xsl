<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl xp20 xref mhdr oraext dvm socket" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/IoT_DFS/IoTDFS_CreateIncident/insert_CRM_Incident" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/insert_CRM_Incident.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CrmIncidentCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/insert_CRM_Incident.wsdl"/>
            <oracle-xsl-mapper:rootElement name="CrmIncidentCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/insert_CRM_Incident"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <ns0:CrmIncidentCollection>
         <xsl:for-each select="/ns0:CrmIncidentCollection/ns0:CrmIncident">
            <ns0:CrmIncident>
               <ns0:rnIncidentId>
                  <xsl:value-of select="ns0:rnIncidentId"/>
               </ns0:rnIncidentId>
               <xsl:if test="ns0:deviceInstanceId">
                  <ns0:deviceInstanceId>
                     <xsl:value-of select="ns0:deviceInstanceId"/>
                  </ns0:deviceInstanceId>
               </xsl:if>
               <xsl:if test="ns0:deviceOwner">
                  <ns0:deviceOwner>
                     <xsl:value-of select="ns0:deviceOwner"/>
                  </ns0:deviceOwner>
               </xsl:if>
               <xsl:if test="ns0:rnContactId">
                  <ns0:rnContactId>
                     <xsl:value-of select="ns0:rnContactId"/>
                  </ns0:rnContactId>
               </xsl:if>
               <xsl:if test="ns0:subject">
                  <ns0:subject>
                     <xsl:value-of select="substring-before(ns0:subject,';')"/>
                  </ns0:subject>
               </xsl:if>
               <xsl:if test="ns0:eventTime">
                  <ns0:eventTime>
                     <xsl:value-of select="ns0:eventTime"/>
                  </ns0:eventTime>
               </xsl:if>
               <xsl:if test="ns0:status">
                  <ns0:status>
                     <xsl:value-of select="ns0:status"/>
                  </ns0:status>
               </xsl:if>
               <xsl:if test="ns0:isa">
                  <ns0:isa>
                     <xsl:value-of select="ns0:isa"/>
                  </ns0:isa>
               </xsl:if>
               <xsl:if test="ns0:rnLocationId">
                  <ns0:rnLocationId>
                     <xsl:value-of select="ns0:rnLocationId"/>
                  </ns0:rnLocationId>
               </xsl:if>
               <xsl:if test="ns0:incidentPriority">
                  <ns0:incidentPriority>
                     <xsl:value-of select="ns0:incidentPriority"/>
                  </ns0:incidentPriority>
               </xsl:if>
               <xsl:if test="ns0:category">
                  <ns0:category>
                     <xsl:value-of select="ns0:category"/>
                  </ns0:category>
               </xsl:if>
               <xsl:if test="ns0:email">
                  <ns0:email>
                     <xsl:value-of select="ns0:email"/>
                  </ns0:email>
               </xsl:if>
               <xsl:if test="ns0:product">
                  <ns0:product>
                     <xsl:value-of select="ns0:product"/>
                  </ns0:product>
               </xsl:if>
               <xsl:if test="ns0:customerOrganization">
                  <ns0:customerOrganization>
                     <xsl:value-of select="ns0:customerOrganization"/>
                  </ns0:customerOrganization>
               </xsl:if>
               <xsl:if test="ns0:assetName">
                  <ns0:assetName>
                     <xsl:value-of select="ns0:assetName"/>
                  </ns0:assetName>
               </xsl:if>
               <xsl:if test="ns0:assetStatus">
                  <ns0:assetStatus>
                     <xsl:value-of select="ns0:assetStatus"/>
                  </ns0:assetStatus>
               </xsl:if>
               <xsl:if test="ns0:assetSerialNumber">
                  <ns0:assetSerialNumber>
                     <xsl:value-of select="ns0:assetSerialNumber"/>
                  </ns0:assetSerialNumber>
               </xsl:if>
               <xsl:if test="ns0:subCategory">
                  <ns0:subCategory>
                     <xsl:value-of select="ns0:subCategory"/>
                  </ns0:subCategory>
               </xsl:if>
               <xsl:if test="ns0:rnIncidentRef">
                  <ns0:rnIncidentRef>
                     <xsl:value-of select="ns0:rnIncidentRef"/>
                  </ns0:rnIncidentRef>
               </xsl:if>
               <xsl:if test="ns0:resolutionDueDate">
                  <ns0:resolutionDueDate>
                     <xsl:value-of select="ns0:resolutionDueDate"/>
                  </ns0:resolutionDueDate>
               </xsl:if>
               <xsl:if test="ns0:iotcsMessageId">
                  <ns0:iotcsMessageId>
                     <xsl:value-of select="ns0:iotcsMessageId"/>
                  </ns0:iotcsMessageId>
               </xsl:if>
               <xsl:if test="ns0:createdDate">
                  <ns0:createdDate>
                     <xsl:value-of select="ns0:createdDate"/>
                  </ns0:createdDate>
               </xsl:if>
               <xsl:if test="ns0:assetid">
                  <ns0:assetid>
                     <xsl:value-of select="ns0:assetid"/>
                  </ns0:assetid>
               </xsl:if>
               <xsl:if test="ns0:subject">
                  <ns0:rnDescription>
                     <xsl:value-of select="substring-after(ns0:subject,';')"/>
                  </ns0:rnDescription>
               </xsl:if>
            </ns0:CrmIncident>
         </xsl:for-each>
      </ns0:CrmIncidentCollection>
   </xsl:template>
</xsl:stylesheet>
