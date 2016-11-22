<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="urn:messages.ws.rightnow.com/v1_3"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:tns="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/Incident"
                xmlns:ns5="urn:objects.ws.rightnow.com/v1_3" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns3="urn:base.ws.rightnow.com/v1_3" xmlns:ns1="urn:nullfields.ws.rightnow.com/v1_3"
                xmlns:ns4="urn:generic.ws.rightnow.com/v1_3" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:inp1="http://xmlns.oracle.com/IoT_DFS/IoTDFS_CreateIncident_SX/CreateIncident"
                xmlns:ns6="urn:metadata.ws.rightnow.com/v1_3" xmlns:ns2="urn:faults.ws.rightnow.com/v1_3">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreateResponse" namespace="urn:messages.ws.rightnow.com/v1_3"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/Incident.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Get" namespace="urn:messages.ws.rightnow.com/v1_3"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <oracle-xsl-mapper:substitutions>
      <oracle-xsl-mapper:targetSubst substPath="/ns0:Get/ns0:RNObjects" substType="ns5:Incident"/>
    </oracle-xsl-mapper:substitutions>
  </oracle-xsl-mapper:schema>
  <xsl:template match="/">
    <ns0:Get>
      <ns0:RNObjects xsi:type="ns5:Incident">
        <ns3:ID id="{/ns0:CreateResponse/ns0:RNObjectsResult/ns0:RNObjects/ns3:ID/@id}"/>
      </ns0:RNObjects>
      <ns0:ProcessingOptions>
        <ns0:FetchAllNames>true</ns0:FetchAllNames>
      </ns0:ProcessingOptions>
    </ns0:Get>
  </xsl:template>
</xsl:stylesheet>
