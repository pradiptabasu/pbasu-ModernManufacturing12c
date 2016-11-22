<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://TargetNamespace.com/UpdateInc_Operation2_request" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="urn:messages.ws.rightnow.com/v1_3" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket" xmlns:inp1="http://TargetNamespace.com/RestService_Operation1_request" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:inp3="http://xmlns.oracle.com/IoT_DFS/IoTDFS_UpdateIncident/UpdateIncident" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://xmlns.oracle.com/IoT_DFS/IoTDFS_UpdateIncident/RestService" xmlns:rno_v1_3="urn:objects.ws.rightnow.com/v1_3" xmlns:rng_v1_3="urn:generic.ws.rightnow.com/v1_3" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:rnb_v1_3="urn:base.ws.rightnow.com/v1_3" xmlns:rnn_v1_3="urn:nullfields.ws.rightnow.com/v1_3" xmlns:rnw_v1_3="urn:wsdl.ws.rightnow.com/v1_3" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:rna_v1_3="urn:metadata.ws.rightnow.com/v1_3" xmlns:rnf_v1_3="urn:faults.ws.rightnow.com/v1_3">
   <oracle-xsl-mapper:schema>
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/RestService.wsdl"/>
            <oracle-xsl-mapper:rootElement name="UpdateIncident" namespace="http://TargetNamespace.com/UpdateInc_Operation2_request"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/soap.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Update" namespace="urn:messages.ws.rightnow.com/v1_3"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:substitutions>
         <oracle-xsl-mapper:targetSubst substPath="/tns:Update/tns:RNObjects" substType="rno_v1_3:Incident"/>
      </oracle-xsl-mapper:substitutions>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/">
      <tns:Update>
         <tns:RNObjects xsi:type="rno_v1_3:Incident">
            <rnb_v1_3:ID id="{/ns0:UpdateIncident/ns0:IncidentID}"/>
            <xsl:if test="(/ns0:UpdateIncident/ns0:Status) and (string(/ns0:UpdateIncident/ns0:Status)!='') ">
               <rno_v1_3:StatusWithType>
                  <rno_v1_3:Status>
                     <rnb_v1_3:ID id="{/ns0:UpdateIncident/ns0:Status}"/>
                  </rno_v1_3:Status>
               </rno_v1_3:StatusWithType>
            </xsl:if>
            <xsl:if test="(/ns0:UpdateIncident/ns0:Severity) and (string(/ns0:UpdateIncident/ns0:Severity)!='') ">
               <rno_v1_3:Severity>
                  <rnb_v1_3:ID id="{/ns0:UpdateIncident/ns0:Severity}"/>
               </rno_v1_3:Severity>
            </xsl:if>
         </tns:RNObjects>
         <tns:ProcessingOptions>
            <tns:SuppressExternalEvents>false</tns:SuppressExternalEvents>
            <tns:SuppressRules>false</tns:SuppressRules>
         </tns:ProcessingOptions>
      </tns:Update>
   </xsl:template>
</xsl:stylesheet>
