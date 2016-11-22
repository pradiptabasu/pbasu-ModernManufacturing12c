<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://xmlns.oracle.com/apps/scm/doo/decomposition/DooDecompositionOrderStatusUpdateComposite" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:client="http://xmlns.oracle.com/apps/scm/doo/taskLayer/externalInterfaceLayer/DooTaskExternalInterfaceVirtualPartnersComposite/BusinessEventsConnector" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns1 plnk xsd client wsdl xp20 bpws aia bpel mhdr oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
   <xsl:template match="/">
      <ns1:results>
         <xsl:for-each select="/ns1:results/ns1:OrderHeader">
            <ns1:OrderHeader>
               <xsl:if test="ns1:EventCode">
                  <ns1:EventCode>
                     <xsl:if test="ns1:EventCode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:EventCode/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:EventCode"/>
                  </ns1:EventCode>
               </xsl:if>
               <xsl:if test="ns1:SourceOrderSystem">
                  <ns1:SourceOrderSystem>
                     <xsl:if test="ns1:SourceOrderSystem/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:SourceOrderSystem/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:SourceOrderSystem"/>
                  </ns1:SourceOrderSystem>
               </xsl:if>
               <xsl:if test="ns1:SourceOrderId">
                  <ns1:SourceOrderId>
                     <xsl:if test="ns1:SourceOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:SourceOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:SourceOrderId"/>
                  </ns1:SourceOrderId>
               </xsl:if>
               <xsl:if test="ns1:SourceOrderNumber">
                  <ns1:SourceOrderNumber>
                     <xsl:if test="ns1:SourceOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:SourceOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:SourceOrderNumber"/>
                  </ns1:SourceOrderNumber>
               </xsl:if>
               <xsl:if test="ns1:OrchestrationOrderNumber">
                  <ns1:OrchestrationOrderNumber>
                     <xsl:if test="ns1:OrchestrationOrderNumber/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:OrchestrationOrderNumber/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:OrchestrationOrderNumber"/>
                  </ns1:OrchestrationOrderNumber>
               </xsl:if>
               <xsl:if test="ns1:OrchestrationOrderId">
                  <ns1:OrchestrationOrderId>
                     <xsl:if test="ns1:OrchestrationOrderId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:OrchestrationOrderId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:OrchestrationOrderId"/>
                  </ns1:OrchestrationOrderId>
               </xsl:if>
               <xsl:if test="ns1:CustomerId">
                  <ns1:CustomerId>
                     <xsl:if test="ns1:CustomerId/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:CustomerId/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:CustomerId"/>
                  </ns1:CustomerId>
               </xsl:if>
               <xsl:if test="ns1:HoldCode">
                  <ns1:HoldCode>
                     <xsl:if test="ns1:HoldCode/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:HoldCode/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:HoldCode"/>
                  </ns1:HoldCode>
               </xsl:if>
               <xsl:if test="ns1:HoldComments">
                  <ns1:HoldComments>
                     <xsl:if test="ns1:HoldComments/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:HoldComments/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:HoldComments"/>
                  </ns1:HoldComments>
               </xsl:if>
               <xsl:if test="ns1:CompensationStatus">
                  <ns1:CompensationStatus>
                     <xsl:if test="ns1:CompensationStatus/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:CompensationStatus/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:CompensationStatus"/>
                  </ns1:CompensationStatus>
               </xsl:if>
               <xsl:if test="ns1:CompensationMessage">
                  <ns1:CompensationMessage>
                     <xsl:if test="ns1:CompensationMessage/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:CompensationMessage/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:CompensationMessage"/>
                  </ns1:CompensationMessage>
               </xsl:if>
               <xsl:if test="ns1:StatusCodeOldValue">
                  <ns1:StatusCodeOldValue>
                     <xsl:if test="ns1:StatusCodeOldValue/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:StatusCodeOldValue/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:StatusCodeOldValue"/>
                  </ns1:StatusCodeOldValue>
               </xsl:if>
               <xsl:if test="ns1:StatusCodeNewValue">
                  <ns1:StatusCodeNewValue>
                     <xsl:if test="ns1:StatusCodeNewValue/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:StatusCodeNewValue/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:StatusCodeNewValue"/>
                  </ns1:StatusCodeNewValue>
               </xsl:if>
               <xsl:if test="ns1:StatusPriorValue">
                  <ns1:StatusPriorValue>
                     <xsl:if test="ns1:StatusPriorValue/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:StatusPriorValue/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:StatusPriorValue"/>
                  </ns1:StatusPriorValue>
               </xsl:if>
               <xsl:if test="ns1:StatusNewValue">
                  <ns1:StatusNewValue>
                     <xsl:if test="ns1:StatusNewValue/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns1:StatusNewValue/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="ns1:StatusNewValue"/>
                  </ns1:StatusNewValue>
               </xsl:if>
               <xsl:for-each select="ns1:OrderLine">
                  <ns1:OrderLine>
                     <xsl:if test="ns1:EventCode">
                        <ns1:EventCode>
                           <xsl:if test="ns1:EventCode/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:EventCode/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:EventCode"/>
                        </ns1:EventCode>
                     </xsl:if>
                     <xsl:if test="ns1:OrchestrationOrderLineId">
                        <ns1:OrchestrationOrderLineId>
                           <xsl:if test="ns1:OrchestrationOrderLineId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:OrchestrationOrderLineId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:OrchestrationOrderLineId"/>
                        </ns1:OrchestrationOrderLineId>
                     </xsl:if>
                     <xsl:if test="ns1:OrchestrationOrderLineNumber">
                        <ns1:OrchestrationOrderLineNumber>
                           <xsl:if test="ns1:OrchestrationOrderLineNumber/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:OrchestrationOrderLineNumber/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:OrchestrationOrderLineNumber"/>
                        </ns1:OrchestrationOrderLineNumber>
                     </xsl:if>
                     <xsl:if test="ns1:HoldCode">
                        <ns1:HoldCode>
                           <xsl:if test="ns1:HoldCode/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:HoldCode/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:HoldCode"/>
                        </ns1:HoldCode>
                     </xsl:if>
                     <xsl:if test="ns1:HoldComments">
                        <ns1:HoldComments>
                           <xsl:if test="ns1:HoldComments/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:HoldComments/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:HoldComments"/>
                        </ns1:HoldComments>
                     </xsl:if>
                     <xsl:if test="ns1:SourceOrderLineId">
                        <ns1:SourceOrderLineId>
                           <xsl:if test="ns1:SourceOrderLineId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:SourceOrderLineId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:SourceOrderLineId"/>
                        </ns1:SourceOrderLineId>
                     </xsl:if>
                     <xsl:if test="ns1:SourceOrderLineNumber">
                        <ns1:SourceOrderLineNumber>
                           <xsl:if test="ns1:SourceOrderLineNumber/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:SourceOrderLineNumber/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:SourceOrderLineNumber"/>
                        </ns1:SourceOrderLineNumber>
                     </xsl:if>
                     <xsl:if test="ns1:SourceOrderSystem">
                        <ns1:SourceOrderSystem>
                           <xsl:if test="ns1:SourceOrderSystem/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:SourceOrderSystem/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:SourceOrderSystem"/>
                        </ns1:SourceOrderSystem>
                     </xsl:if>
                     <xsl:if test="ns1:SourceOrderId">
                        <ns1:SourceOrderId>
                           <xsl:if test="ns1:SourceOrderId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:SourceOrderId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:SourceOrderId"/>
                        </ns1:SourceOrderId>
                     </xsl:if>
                     <xsl:if test="ns1:SourceOrderScheduleId">
                        <ns1:SourceOrderScheduleId>
                           <xsl:if test="ns1:SourceOrderScheduleId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:SourceOrderScheduleId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:SourceOrderScheduleId"/>
                        </ns1:SourceOrderScheduleId>
                     </xsl:if>
                     <xsl:if test="ns1:PreSplitOrderedQuantity">
                        <ns1:PreSplitOrderedQuantity>
                           <xsl:if test="ns1:PreSplitOrderedQuantity/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:PreSplitOrderedQuantity/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:PreSplitOrderedQuantity"/>
                        </ns1:PreSplitOrderedQuantity>
                     </xsl:if>
                     <xsl:if test="ns1:ItemId">
                        <ns1:ItemId>
                           <xsl:if test="ns1:ItemId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:ItemId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:ItemId"/>
                        </ns1:ItemId>
                     </xsl:if>
                     <xsl:if test="ns1:InventoryOrganizationId">
                        <ns1:InventoryOrganizationId>
                           <xsl:if test="ns1:InventoryOrganizationId/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:InventoryOrganizationId/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:InventoryOrganizationId"/>
                        </ns1:InventoryOrganizationId>
                     </xsl:if>
                     <xsl:if test="ns1:OpenFlagNewValue">
                        <ns1:OpenFlagNewValue>
                           <xsl:if test="ns1:OpenFlagNewValue/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:OpenFlagNewValue/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:OpenFlagNewValue"/>
                        </ns1:OpenFlagNewValue>
                     </xsl:if>
                     <xsl:if test="ns1:OpenFlagOldValue">
                        <ns1:OpenFlagOldValue>
                           <xsl:if test="ns1:OpenFlagOldValue/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:OpenFlagOldValue/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:OpenFlagOldValue"/>
                        </ns1:OpenFlagOldValue>
                     </xsl:if>
                     <xsl:if test="ns1:StatusCodeOldValue">
                        <ns1:StatusCodeOldValue>
                           <xsl:if test="ns1:StatusCodeOldValue/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:StatusCodeOldValue/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:StatusCodeOldValue"/>
                        </ns1:StatusCodeOldValue>
                     </xsl:if>
                     <xsl:if test="ns1:StatusCodeNewValue">
                        <ns1:StatusCodeNewValue>
                           <xsl:if test="ns1:StatusCodeNewValue/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns1:StatusCodeNewValue/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns1:StatusCodeNewValue"/>
                        </ns1:StatusCodeNewValue>
                     </xsl:if>
                     <xsl:for-each select="ns1:OrderFulfillmentLine">
                        <ns1:OrderFulfillmentLine>
                           <xsl:if test="ns1:SourceOrderScheduleId">
                              <ns1:SourceOrderScheduleId>
                                 <xsl:if test="ns1:SourceOrderScheduleId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:SourceOrderScheduleId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:SourceOrderScheduleId"/>
                              </ns1:SourceOrderScheduleId>
                           </xsl:if>
                           <xsl:if test="ns1:OrchestrationOrderLineId">
                              <ns1:OrchestrationOrderLineId>
                                 <xsl:if test="ns1:OrchestrationOrderLineId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:OrchestrationOrderLineId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:OrchestrationOrderLineId"/>
                              </ns1:OrchestrationOrderLineId>
                           </xsl:if>
                           <xsl:if test="ns1:FulfillmentOrderLineId">
                              <ns1:FulfillmentOrderLineId>
                                 <xsl:if test="ns1:FulfillmentOrderLineId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FulfillmentOrderLineId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FulfillmentOrderLineId"/>
                              </ns1:FulfillmentOrderLineId>
                           </xsl:if>
                           <xsl:if test="ns1:FulfillmentOrderLineNumber">
                              <ns1:FulfillmentOrderLineNumber>
                                 <xsl:if test="ns1:FulfillmentOrderLineNumber/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FulfillmentOrderLineNumber/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FulfillmentOrderLineNumber"/>
                              </ns1:FulfillmentOrderLineNumber>
                           </xsl:if>
                           <xsl:if test="ns1:ActualShipDateNew">
                              <ns1:ActualShipDateNew>
                                 <xsl:if test="ns1:ActualShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ActualShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ActualShipDateNew"/>
                              </ns1:ActualShipDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:ActualShipDateOld">
                              <ns1:ActualShipDateOld>
                                 <xsl:if test="ns1:ActualShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ActualShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ActualShipDateOld"/>
                              </ns1:ActualShipDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:BillToContactIdNew">
                              <ns1:BillToContactIdNew>
                                 <xsl:if test="ns1:BillToContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:BillToContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:BillToContactIdNew"/>
                              </ns1:BillToContactIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:BillToContactIdOld">
                              <ns1:BillToContactIdOld>
                                 <xsl:if test="ns1:BillToContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:BillToContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:BillToContactIdOld"/>
                              </ns1:BillToContactIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:BillToCustomerIdNew">
                              <ns1:BillToCustomerIdNew>
                                 <xsl:if test="ns1:BillToCustomerIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:BillToCustomerIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:BillToCustomerIdNew"/>
                              </ns1:BillToCustomerIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:BillToCustomerIdOld">
                              <ns1:BillToCustomerIdOld>
                                 <xsl:if test="ns1:BillToCustomerIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:BillToCustomerIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:BillToCustomerIdOld"/>
                              </ns1:BillToCustomerIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:FobPointCodeNew">
                              <ns1:FobPointCodeNew>
                                 <xsl:if test="ns1:FobPointCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FobPointCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FobPointCodeNew"/>
                              </ns1:FobPointCodeNew>
                           </xsl:if>
                           <xsl:if test="ns1:FobPointCodeOld">
                              <ns1:FobPointCodeOld>
                                 <xsl:if test="ns1:FobPointCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FobPointCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FobPointCodeOld"/>
                              </ns1:FobPointCodeOld>
                           </xsl:if>
                           <xsl:if test="ns1:FulfillOrgIdNew">
                              <ns1:FulfillOrgIdNew>
                                 <xsl:if test="ns1:FulfillOrgIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FulfillOrgIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FulfillOrgIdNew"/>
                              </ns1:FulfillOrgIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:FulfillOrgIdOld">
                              <ns1:FulfillOrgIdOld>
                                 <xsl:if test="ns1:FulfillOrgIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FulfillOrgIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FulfillOrgIdOld"/>
                              </ns1:FulfillOrgIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:InventoryItemIdNew">
                              <ns1:InventoryItemIdNew>
                                 <xsl:if test="ns1:InventoryItemIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:InventoryItemIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:InventoryItemIdNew"/>
                              </ns1:InventoryItemIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:InventoryItemIdOld">
                              <ns1:InventoryItemIdOld>
                                 <xsl:if test="ns1:InventoryItemIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:InventoryItemIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:InventoryItemIdOld"/>
                              </ns1:InventoryItemIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:OrderedQtyNew">
                              <ns1:OrderedQtyNew>
                                 <xsl:if test="ns1:OrderedQtyNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:OrderedQtyNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:OrderedQtyNew"/>
                              </ns1:OrderedQtyNew>
                           </xsl:if>
                           <xsl:if test="ns1:OrderedQtyOld">
                              <ns1:OrderedQtyOld>
                                 <xsl:if test="ns1:OrderedQtyOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:OrderedQtyOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:OrderedQtyOld"/>
                              </ns1:OrderedQtyOld>
                           </xsl:if>
                           <xsl:if test="ns1:PromiseArrivalDateNew">
                              <ns1:PromiseArrivalDateNew>
                                 <xsl:if test="ns1:PromiseArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:PromiseArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:PromiseArrivalDateNew"/>
                              </ns1:PromiseArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:PromiseArrivalDateOld">
                              <ns1:PromiseArrivalDateOld>
                                 <xsl:if test="ns1:PromiseArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:PromiseArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:PromiseArrivalDateOld"/>
                              </ns1:PromiseArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:PromiseShipDateNew">
                              <ns1:PromiseShipDateNew>
                                 <xsl:if test="ns1:PromiseShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:PromiseShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:PromiseShipDateNew"/>
                              </ns1:PromiseShipDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:PromiseShipDateOld">
                              <ns1:PromiseShipDateOld>
                                 <xsl:if test="ns1:PromiseShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:PromiseShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:PromiseShipDateOld"/>
                              </ns1:PromiseShipDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:RequestArrivalDateNew">
                              <ns1:RequestArrivalDateNew>
                                 <xsl:if test="ns1:RequestArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:RequestArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:RequestArrivalDateNew"/>
                              </ns1:RequestArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:RequestArrivalDateOld">
                              <ns1:RequestArrivalDateOld>
                                 <xsl:if test="ns1:RequestArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:RequestArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:RequestArrivalDateOld"/>
                              </ns1:RequestArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:RequestShipDateNew">
                              <ns1:RequestShipDateNew>
                                 <xsl:if test="ns1:RequestShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:RequestShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:RequestShipDateNew"/>
                              </ns1:RequestShipDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:RequestShipDateOld">
                              <ns1:RequestShipDateOld>
                                 <xsl:if test="ns1:RequestShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:RequestShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:RequestShipDateOld"/>
                              </ns1:RequestShipDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:ScheduleShipDateNew">
                              <ns1:ScheduleShipDateNew>
                                 <xsl:if test="ns1:ScheduleShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ScheduleShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ScheduleShipDateNew"/>
                              </ns1:ScheduleShipDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:ScheduleShipDateOld">
                              <ns1:ScheduleShipDateOld>
                                 <xsl:if test="ns1:ScheduleShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ScheduleShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ScheduleShipDateOld"/>
                              </ns1:ScheduleShipDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:ScheduleArrivalDateNew">
                              <ns1:ScheduleArrivalDateNew>
                                 <xsl:if test="ns1:ScheduleArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ScheduleArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ScheduleArrivalDateNew"/>
                              </ns1:ScheduleArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:ScheduleArrivalDateOld">
                              <ns1:ScheduleArrivalDateOld>
                                 <xsl:if test="ns1:ScheduleArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ScheduleArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ScheduleArrivalDateOld"/>
                              </ns1:ScheduleArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:ShipClassOfServiceNew">
                              <ns1:ShipClassOfServiceNew>
                                 <xsl:if test="ns1:ShipClassOfServiceNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipClassOfServiceNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipClassOfServiceNew"/>
                              </ns1:ShipClassOfServiceNew>
                           </xsl:if>
                           <xsl:if test="ns1:ShipClassOfServiceOld">
                              <ns1:ShipClassOfServiceOld>
                                 <xsl:if test="ns1:ShipClassOfServiceOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipClassOfServiceOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipClassOfServiceOld"/>
                              </ns1:ShipClassOfServiceOld>
                           </xsl:if>
                           <xsl:if test="ns1:ShipModeOfTransportNew">
                              <ns1:ShipModeOfTransportNew>
                                 <xsl:if test="ns1:ShipModeOfTransportNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipModeOfTransportNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipModeOfTransportNew"/>
                              </ns1:ShipModeOfTransportNew>
                           </xsl:if>
                           <xsl:if test="ns1:ShipModeOfTransportOld">
                              <ns1:ShipModeOfTransportOld>
                                 <xsl:if test="ns1:ShipModeOfTransportOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipModeOfTransportOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipModeOfTransportOld"/>
                              </ns1:ShipModeOfTransportOld>
                           </xsl:if>
                           <xsl:if test="ns1:ShipmentPriorityCodeNew">
                              <ns1:ShipmentPriorityCodeNew>
                                 <xsl:if test="ns1:ShipmentPriorityCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipmentPriorityCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipmentPriorityCodeNew"/>
                              </ns1:ShipmentPriorityCodeNew>
                           </xsl:if>
                           <xsl:if test="ns1:ShipmentPriorityCodeOld">
                              <ns1:ShipmentPriorityCodeOld>
                                 <xsl:if test="ns1:ShipmentPriorityCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipmentPriorityCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipmentPriorityCodeOld"/>
                              </ns1:ShipmentPriorityCodeOld>
                           </xsl:if>
                           <xsl:if test="ns1:ShipToContactIdNew">
                              <ns1:ShipToContactIdNew>
                                 <xsl:if test="ns1:ShipToContactIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipToContactIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipToContactIdNew"/>
                              </ns1:ShipToContactIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:ShipToContactIdOld">
                              <ns1:ShipToContactIdOld>
                                 <xsl:if test="ns1:ShipToContactIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipToContactIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipToContactIdOld"/>
                              </ns1:ShipToContactIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:ShipToCustomerIdNew">
                              <ns1:ShipToCustomerIdNew>
                                 <xsl:if test="ns1:ShipToCustomerIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipToCustomerIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipToCustomerIdNew"/>
                              </ns1:ShipToCustomerIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:ShipToCustomerIdOld">
                              <ns1:ShipToCustomerIdOld>
                                 <xsl:if test="ns1:ShipToCustomerIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipToCustomerIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipToCustomerIdOld"/>
                              </ns1:ShipToCustomerIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:ShipToSiteUseIdNew">
                              <ns1:ShipToSiteUseIdNew>
                                 <xsl:if test="ns1:ShipToSiteUseIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipToSiteUseIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipToSiteUseIdNew"/>
                              </ns1:ShipToSiteUseIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:ShipToSiteUseIdOld">
                              <ns1:ShipToSiteUseIdOld>
                                 <xsl:if test="ns1:ShipToSiteUseIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShipToSiteUseIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShipToSiteUseIdOld"/>
                              </ns1:ShipToSiteUseIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:TaxClassificationCodeNew">
                              <ns1:TaxClassificationCodeNew>
                                 <xsl:if test="ns1:TaxClassificationCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:TaxClassificationCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:TaxClassificationCodeNew"/>
                              </ns1:TaxClassificationCodeNew>
                           </xsl:if>
                           <xsl:if test="ns1:TaxClassificationCodeOld">
                              <ns1:TaxClassificationCodeOld>
                                 <xsl:if test="ns1:TaxClassificationCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:TaxClassificationCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:TaxClassificationCodeOld"/>
                              </ns1:TaxClassificationCodeOld>
                           </xsl:if>
                           <xsl:if test="ns1:TaxExemptFlagNew">
                              <ns1:TaxExemptFlagNew>
                                 <xsl:if test="ns1:TaxExemptFlagNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:TaxExemptFlagNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:TaxExemptFlagNew"/>
                              </ns1:TaxExemptFlagNew>
                           </xsl:if>
                           <xsl:if test="ns1:TaxExemptFlagOld">
                              <ns1:TaxExemptFlagOld>
                                 <xsl:if test="ns1:TaxExemptFlagOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:TaxExemptFlagOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:TaxExemptFlagOld"/>
                              </ns1:TaxExemptFlagOld>
                           </xsl:if>
                           <xsl:if test="ns1:UnitSellingPriceNew">
                              <ns1:UnitSellingPriceNew>
                                 <xsl:if test="ns1:UnitSellingPriceNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:UnitSellingPriceNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:UnitSellingPriceNew"/>
                              </ns1:UnitSellingPriceNew>
                           </xsl:if>
                           <xsl:if test="ns1:UnitSellingPriceOld">
                              <ns1:UnitSellingPriceOld>
                                 <xsl:if test="ns1:UnitSellingPriceOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:UnitSellingPriceOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:UnitSellingPriceOld"/>
                              </ns1:UnitSellingPriceOld>
                           </xsl:if>
                           <xsl:if test="ns1:ActualCompletionDateNew">
                              <ns1:ActualCompletionDateNew>
                                 <xsl:if test="ns1:ActualCompletionDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ActualCompletionDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ActualCompletionDateNew"/>
                              </ns1:ActualCompletionDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:ActualCompletionDateOld">
                              <ns1:ActualCompletionDateOld>
                                 <xsl:if test="ns1:ActualCompletionDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ActualCompletionDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ActualCompletionDateOld"/>
                              </ns1:ActualCompletionDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:BillToSiteUseIdNew">
                              <ns1:BillToSiteUseIdNew>
                                 <xsl:if test="ns1:BillToSiteUseIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:BillToSiteUseIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:BillToSiteUseIdNew"/>
                              </ns1:BillToSiteUseIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:BillToSiteUseIdOld">
                              <ns1:BillToSiteUseIdOld>
                                 <xsl:if test="ns1:BillToSiteUseIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:BillToSiteUseIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:BillToSiteUseIdOld"/>
                              </ns1:BillToSiteUseIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:CarrierIdNew">
                              <ns1:CarrierIdNew>
                                 <xsl:if test="ns1:CarrierIdNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:CarrierIdNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:CarrierIdNew"/>
                              </ns1:CarrierIdNew>
                           </xsl:if>
                           <xsl:if test="ns1:CarrierIdOld">
                              <ns1:CarrierIdOld>
                                 <xsl:if test="ns1:CarrierIdOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:CarrierIdOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:CarrierIdOld"/>
                              </ns1:CarrierIdOld>
                           </xsl:if>
                           <xsl:if test="ns1:CustomerPoNumberNew">
                              <ns1:CustomerPoNumberNew>
                                 <xsl:if test="ns1:CustomerPoNumberNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:CustomerPoNumberNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:CustomerPoNumberNew"/>
                              </ns1:CustomerPoNumberNew>
                           </xsl:if>
                           <xsl:if test="ns1:CustomerPoNumberOld">
                              <ns1:CustomerPoNumberOld>
                                 <xsl:if test="ns1:CustomerPoNumberOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:CustomerPoNumberOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:CustomerPoNumberOld"/>
                              </ns1:CustomerPoNumberOld>
                           </xsl:if>
                           <xsl:if test="ns1:DemandClassCodeNew">
                              <ns1:DemandClassCodeNew>
                                 <xsl:if test="ns1:DemandClassCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:DemandClassCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:DemandClassCodeNew"/>
                              </ns1:DemandClassCodeNew>
                           </xsl:if>
                           <xsl:if test="ns1:DemandClassCodeOld">
                              <ns1:DemandClassCodeOld>
                                 <xsl:if test="ns1:DemandClassCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:DemandClassCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:DemandClassCodeOld"/>
                              </ns1:DemandClassCodeOld>
                           </xsl:if>
                           <xsl:if test="ns1:EarliestAcceptableShipDateNew">
                              <ns1:EarliestAcceptableShipDateNew>
                                 <xsl:if test="ns1:EarliestAcceptableShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:EarliestAcceptableShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:EarliestAcceptableShipDateNew"/>
                              </ns1:EarliestAcceptableShipDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:EarliestAcceptableShipDateOld">
                              <ns1:EarliestAcceptableShipDateOld>
                                 <xsl:if test="ns1:EarliestAcceptableShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:EarliestAcceptableShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:EarliestAcceptableShipDateOld"/>
                              </ns1:EarliestAcceptableShipDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:EstimateFulfillmentCostNew">
                              <ns1:EstimateFulfillmentCostNew>
                                 <xsl:if test="ns1:EstimateFulfillmentCostNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:EstimateFulfillmentCostNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:EstimateFulfillmentCostNew"/>
                              </ns1:EstimateFulfillmentCostNew>
                           </xsl:if>
                           <xsl:if test="ns1:EstimateFulfillmentCostOld">
                              <ns1:EstimateFulfillmentCostOld>
                                 <xsl:if test="ns1:EstimateFulfillmentCostOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:EstimateFulfillmentCostOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:EstimateFulfillmentCostOld"/>
                              </ns1:EstimateFulfillmentCostOld>
                           </xsl:if>
                           <xsl:if test="ns1:EstimateMarginNew">
                              <ns1:EstimateMarginNew>
                                 <xsl:if test="ns1:EstimateMarginNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:EstimateMarginNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:EstimateMarginNew"/>
                              </ns1:EstimateMarginNew>
                           </xsl:if>
                           <xsl:if test="ns1:EstimateMarginOld">
                              <ns1:EstimateMarginOld>
                                 <xsl:if test="ns1:EstimateMarginOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:EstimateMarginOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:EstimateMarginOld"/>
                              </ns1:EstimateMarginOld>
                           </xsl:if>
                           <xsl:if test="ns1:FulfillmentDateNew">
                              <ns1:FulfillmentDateNew>
                                 <xsl:if test="ns1:FulfillmentDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FulfillmentDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FulfillmentDateNew"/>
                              </ns1:FulfillmentDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:FulfillmentDateOld">
                              <ns1:FulfillmentDateOld>
                                 <xsl:if test="ns1:FulfillmentDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:FulfillmentDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:FulfillmentDateOld"/>
                              </ns1:FulfillmentDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:LatestAcceptableArrivalDateNew">
                              <ns1:LatestAcceptableArrivalDateNew>
                                 <xsl:if test="ns1:LatestAcceptableArrivalDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:LatestAcceptableArrivalDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:LatestAcceptableArrivalDateNew"/>
                              </ns1:LatestAcceptableArrivalDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:LatestAcceptableArrivalDateOld">
                              <ns1:LatestAcceptableArrivalDateOld>
                                 <xsl:if test="ns1:LatestAcceptableArrivalDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:LatestAcceptableArrivalDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:LatestAcceptableArrivalDateOld"/>
                              </ns1:LatestAcceptableArrivalDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:LatestAcceptableShipDateNew">
                              <ns1:LatestAcceptableShipDateNew>
                                 <xsl:if test="ns1:LatestAcceptableShipDateNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:LatestAcceptableShipDateNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:LatestAcceptableShipDateNew"/>
                              </ns1:LatestAcceptableShipDateNew>
                           </xsl:if>
                           <xsl:if test="ns1:LatestAcceptableShipDateOld">
                              <ns1:LatestAcceptableShipDateOld>
                                 <xsl:if test="ns1:LatestAcceptableShipDateOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:LatestAcceptableShipDateOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:LatestAcceptableShipDateOld"/>
                              </ns1:LatestAcceptableShipDateOld>
                           </xsl:if>
                           <xsl:if test="ns1:RemnantFlagNew">
                              <ns1:RemnantFlagNew>
                                 <xsl:if test="ns1:RemnantFlagNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:RemnantFlagNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:RemnantFlagNew"/>
                              </ns1:RemnantFlagNew>
                           </xsl:if>
                           <xsl:if test="ns1:RemnantFlagOld">
                              <ns1:RemnantFlagOld>
                                 <xsl:if test="ns1:RemnantFlagOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:RemnantFlagOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:RemnantFlagOld"/>
                              </ns1:RemnantFlagOld>
                           </xsl:if>
                           <xsl:if test="ns1:ReturnReasonCodeNew">
                              <ns1:ReturnReasonCodeNew>
                                 <xsl:if test="ns1:ReturnReasonCodeNew/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ReturnReasonCodeNew/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ReturnReasonCodeNew"/>
                              </ns1:ReturnReasonCodeNew>
                           </xsl:if>
                           <xsl:if test="ns1:ReturnReasonCodeOld">
                              <ns1:ReturnReasonCodeOld>
                                 <xsl:if test="ns1:ReturnReasonCodeOld/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ReturnReasonCodeOld/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ReturnReasonCodeOld"/>
                              </ns1:ReturnReasonCodeOld>
                           </xsl:if>
                           <xsl:if test="ns1:HoldCode">
                              <ns1:HoldCode>
                                 <xsl:if test="ns1:HoldCode/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:HoldCode/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:HoldCode"/>
                              </ns1:HoldCode>
                           </xsl:if>
                           <xsl:if test="ns1:HoldComments">
                              <ns1:HoldComments>
                                 <xsl:if test="ns1:HoldComments/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:HoldComments/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:HoldComments"/>
                              </ns1:HoldComments>
                           </xsl:if>
                           <xsl:if test="ns1:ItemId">
                              <ns1:ItemId>
                                 <xsl:if test="ns1:ItemId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ItemId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ItemId"/>
                              </ns1:ItemId>
                           </xsl:if>
                           <xsl:if test="ns1:InventoryOrganizationId">
                              <ns1:InventoryOrganizationId>
                                 <xsl:if test="ns1:InventoryOrganizationId/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:InventoryOrganizationId/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:InventoryOrganizationId"/>
                              </ns1:InventoryOrganizationId>
                           </xsl:if>
                           <xsl:if test="ns1:ShippedQuantity">
                              <ns1:ShippedQuantity>
                                 <xsl:if test="ns1:ShippedQuantity/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:ShippedQuantity/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:ShippedQuantity"/>
                              </ns1:ShippedQuantity>
                           </xsl:if>
                           <xsl:if test="ns1:OrderedQuantity">
                              <ns1:OrderedQuantity>
                                 <xsl:if test="ns1:OrderedQuantity/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:OrderedQuantity/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:OrderedQuantity"/>
                              </ns1:OrderedQuantity>
                           </xsl:if>
                           <xsl:if test="ns1:JeopardyPriority">
                              <ns1:JeopardyPriority>
                                 <xsl:if test="ns1:JeopardyPriority/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:JeopardyPriority/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:JeopardyPriority"/>
                              </ns1:JeopardyPriority>
                           </xsl:if>
                           <xsl:if test="ns1:StatusCodeOldValue">
                              <ns1:StatusCodeOldValue>
                                 <xsl:if test="ns1:StatusCodeOldValue/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:StatusCodeOldValue/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:StatusCodeOldValue"/>
                              </ns1:StatusCodeOldValue>
                           </xsl:if>
                           <xsl:if test="ns1:StatusCodeNewValue">
                              <ns1:StatusCodeNewValue>
                                 <xsl:if test="ns1:StatusCodeNewValue/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:StatusCodeNewValue/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:StatusCodeNewValue"/>
                              </ns1:StatusCodeNewValue>
                           </xsl:if>
                           <xsl:if test="ns1:CancelFlagOldValue">
                              <ns1:CancelFlagOldValue>
                                 <xsl:if test="ns1:CancelFlagOldValue/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:CancelFlagOldValue/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:CancelFlagOldValue"/>
                              </ns1:CancelFlagOldValue>
                           </xsl:if>
                           <xsl:if test="ns1:CancelFlagNewValue">
                              <ns1:CancelFlagNewValue>
                                 <xsl:if test="ns1:CancelFlagNewValue/@xsi:nil">
                                    <xsl:attribute name="xsi:nil">
                                       <xsl:value-of select="ns1:CancelFlagNewValue/@xsi:nil"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="ns1:CancelFlagNewValue"/>
                              </ns1:CancelFlagNewValue>
                           </xsl:if>
                           <xsl:for-each select="ns1:OrderFulfillmentLineDetails">
                              <ns1:OrderFulfillmentLineDetails>
                                 <xsl:if test="ns1:FulfillmentOrderLineDetailId">
                                    <ns1:FulfillmentOrderLineDetailId>
                                       <xsl:if test="ns1:FulfillmentOrderLineDetailId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:FulfillmentOrderLineDetailId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:FulfillmentOrderLineDetailId"/>
                                    </ns1:FulfillmentOrderLineDetailId>
                                 </xsl:if>
                                 <xsl:if test="ns1:TaskType">
                                    <ns1:TaskType>
                                       <xsl:if test="ns1:TaskType/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:TaskType/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:TaskType"/>
                                    </ns1:TaskType>
                                 </xsl:if>
                                 <xsl:if test="ns1:BillingTransactionNumber">
                                    <ns1:BillingTransactionNumber>
                                       <xsl:if test="ns1:BillingTransactionNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:BillingTransactionNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:BillingTransactionNumber"/>
                                    </ns1:BillingTransactionNumber>
                                 </xsl:if>
                                 <xsl:if test="ns1:BillingTransactionDate">
                                    <ns1:BillingTransactionDate>
                                       <xsl:if test="ns1:BillingTransactionDate/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:BillingTransactionDate/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:BillingTransactionDate"/>
                                    </ns1:BillingTransactionDate>
                                 </xsl:if>
                                 <xsl:if test="ns1:BillingTransactionAmount">
                                    <ns1:BillingTransactionAmount>
                                       <xsl:if test="ns1:BillingTransactionAmount/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:BillingTransactionAmount/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:BillingTransactionAmount"/>
                                    </ns1:BillingTransactionAmount>
                                 </xsl:if>
                                 <xsl:if test="ns1:WaybillNumber">
                                    <ns1:WaybillNumber>
                                       <xsl:if test="ns1:WaybillNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:WaybillNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:WaybillNumber"/>
                                    </ns1:WaybillNumber>
                                 </xsl:if>
                                 <xsl:if test="ns1:BillOfLaddingNumber">
                                    <ns1:BillOfLaddingNumber>
                                       <xsl:if test="ns1:BillOfLaddingNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:BillOfLaddingNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:BillOfLaddingNumber"/>
                                    </ns1:BillOfLaddingNumber>
                                 </xsl:if>
                                 <xsl:if test="ns1:TrackingNumber">
                                    <ns1:TrackingNumber>
                                       <xsl:if test="ns1:TrackingNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:TrackingNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:TrackingNumber"/>
                                    </ns1:TrackingNumber>
                                 </xsl:if>
                                 <xsl:if test="ns1:Quantity">
                                    <ns1:Quantity>
                                       <xsl:if test="ns1:Quantity/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:Quantity/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:Quantity"/>
                                    </ns1:Quantity>
                                 </xsl:if>
                                 <xsl:if test="ns1:Status">
                                    <ns1:Status>
                                       <xsl:if test="ns1:Status/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:Status/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:Status"/>
                                    </ns1:Status>
                                 </xsl:if>
                                 <xsl:if test="ns1:DeliveryName">
                                    <ns1:DeliveryName>
                                       <xsl:if test="ns1:DeliveryName/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:DeliveryName/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:DeliveryName"/>
                                    </ns1:DeliveryName>
                                 </xsl:if>
                                 <xsl:if test="ns1:RmaReceiptNumber">
                                    <ns1:RmaReceiptNumber>
                                       <xsl:if test="ns1:RmaReceiptNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:RmaReceiptNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:RmaReceiptNumber"/>
                                    </ns1:RmaReceiptNumber>
                                 </xsl:if>
                                 <xsl:if test="ns1:RmaReceiptLineNumber">
                                    <ns1:RmaReceiptLineNumber>
                                       <xsl:if test="ns1:RmaReceiptLineNumber/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:RmaReceiptLineNumber/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:RmaReceiptLineNumber"/>
                                    </ns1:RmaReceiptLineNumber>
                                 </xsl:if>
                                 <xsl:if test="ns1:RmaReceiptDate">
                                    <ns1:RmaReceiptDate>
                                       <xsl:if test="ns1:RmaReceiptDate/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:RmaReceiptDate/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:RmaReceiptDate"/>
                                    </ns1:RmaReceiptDate>
                                 </xsl:if>
                                 <xsl:if test="ns1:RmaReceiptTransactionId">
                                    <ns1:RmaReceiptTransactionId>
                                       <xsl:if test="ns1:RmaReceiptTransactionId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:RmaReceiptTransactionId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:RmaReceiptTransactionId"/>
                                    </ns1:RmaReceiptTransactionId>
                                 </xsl:if>
                                 <xsl:if test="ns1:CustomerTrxLineId">
                                    <ns1:CustomerTrxLineId>
                                       <xsl:if test="ns1:CustomerTrxLineId/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:CustomerTrxLineId/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:CustomerTrxLineId"/>
                                    </ns1:CustomerTrxLineId>
                                 </xsl:if>
                                 <xsl:for-each select="ns1:OrderFulfillmentLineEFFs">
                                    <ns1:OrderFulfillmentLineEFFs>
                                       <xsl:if test="ns1:ContextCode">
                                          <ns1:ContextCode>
                                             <xsl:if test="ns1:ContextCode/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:ContextCode/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:ContextCode"/>
                                          </ns1:ContextCode>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentCode">
                                          <ns1:SegmentCode>
                                             <xsl:if test="ns1:SegmentCode/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentCode/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentCode"/>
                                          </ns1:SegmentCode>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentCharOldValue">
                                          <ns1:SegmentCharOldValue>
                                             <xsl:if test="ns1:SegmentCharOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentCharOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentCharOldValue"/>
                                          </ns1:SegmentCharOldValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentCharNewValue">
                                          <ns1:SegmentCharNewValue>
                                             <xsl:if test="ns1:SegmentCharNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentCharNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentCharNewValue"/>
                                          </ns1:SegmentCharNewValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentNumOldValue">
                                          <ns1:SegmentNumOldValue>
                                             <xsl:if test="ns1:SegmentNumOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentNumOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentNumOldValue"/>
                                          </ns1:SegmentNumOldValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentNumNewValue">
                                          <ns1:SegmentNumNewValue>
                                             <xsl:if test="ns1:SegmentNumNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentNumNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentNumNewValue"/>
                                          </ns1:SegmentNumNewValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentDateOldValue">
                                          <ns1:SegmentDateOldValue>
                                             <xsl:if test="ns1:SegmentDateOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentDateOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentDateOldValue"/>
                                          </ns1:SegmentDateOldValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentDateNewValue">
                                          <ns1:SegmentDateNewValue>
                                             <xsl:if test="ns1:SegmentDateNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentDateNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentDateNewValue"/>
                                          </ns1:SegmentDateNewValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentTimeOldValue">
                                          <ns1:SegmentTimeOldValue>
                                             <xsl:if test="ns1:SegmentTimeOldValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentTimeOldValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentTimeOldValue"/>
                                          </ns1:SegmentTimeOldValue>
                                       </xsl:if>
                                       <xsl:if test="ns1:SegmentTimeNewValue">
                                          <ns1:SegmentTimeNewValue>
                                             <xsl:if test="ns1:SegmentTimeNewValue/@xsi:nil">
                                                <xsl:attribute name="xsi:nil">
                                                   <xsl:value-of select="ns1:SegmentTimeNewValue/@xsi:nil"/>
                                                </xsl:attribute>
                                             </xsl:if>
                                             <xsl:value-of select="ns1:SegmentTimeNewValue"/>
                                          </ns1:SegmentTimeNewValue>
                                       </xsl:if>
                                    </ns1:OrderFulfillmentLineEFFs>
                                 </xsl:for-each>
                              </ns1:OrderFulfillmentLineDetails>
                           </xsl:for-each>
                           <xsl:for-each select="ns1:OrderFulfillmentLineEFFs">
                              <ns1:OrderFulfillmentLineEFFs>
                                 <xsl:if test="ns1:ContextCode">
                                    <ns1:ContextCode>
                                       <xsl:if test="ns1:ContextCode/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:ContextCode/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:ContextCode"/>
                                    </ns1:ContextCode>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentCode">
                                    <ns1:SegmentCode>
                                       <xsl:if test="ns1:SegmentCode/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentCode/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentCode"/>
                                    </ns1:SegmentCode>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentCharOldValue">
                                    <ns1:SegmentCharOldValue>
                                       <xsl:if test="ns1:SegmentCharOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentCharOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentCharOldValue"/>
                                    </ns1:SegmentCharOldValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentCharNewValue">
                                    <ns1:SegmentCharNewValue>
                                       <xsl:if test="ns1:SegmentCharNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentCharNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentCharNewValue"/>
                                    </ns1:SegmentCharNewValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentNumOldValue">
                                    <ns1:SegmentNumOldValue>
                                       <xsl:if test="ns1:SegmentNumOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentNumOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentNumOldValue"/>
                                    </ns1:SegmentNumOldValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentNumNewValue">
                                    <ns1:SegmentNumNewValue>
                                       <xsl:if test="ns1:SegmentNumNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentNumNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentNumNewValue"/>
                                    </ns1:SegmentNumNewValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentDateOldValue">
                                    <ns1:SegmentDateOldValue>
                                       <xsl:if test="ns1:SegmentDateOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentDateOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentDateOldValue"/>
                                    </ns1:SegmentDateOldValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentDateNewValue">
                                    <ns1:SegmentDateNewValue>
                                       <xsl:if test="ns1:SegmentDateNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentDateNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentDateNewValue"/>
                                    </ns1:SegmentDateNewValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentTimeOldValue">
                                    <ns1:SegmentTimeOldValue>
                                       <xsl:if test="ns1:SegmentTimeOldValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentTimeOldValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentTimeOldValue"/>
                                    </ns1:SegmentTimeOldValue>
                                 </xsl:if>
                                 <xsl:if test="ns1:SegmentTimeNewValue">
                                    <ns1:SegmentTimeNewValue>
                                       <xsl:if test="ns1:SegmentTimeNewValue/@xsi:nil">
                                          <xsl:attribute name="xsi:nil">
                                             <xsl:value-of select="ns1:SegmentTimeNewValue/@xsi:nil"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="ns1:SegmentTimeNewValue"/>
                                    </ns1:SegmentTimeNewValue>
                                 </xsl:if>
                              </ns1:OrderFulfillmentLineEFFs>
                           </xsl:for-each>
                        </ns1:OrderFulfillmentLine>
                     </xsl:for-each>
                  </ns1:OrderLine>
               </xsl:for-each>
            </ns1:OrderHeader>
         </xsl:for-each>
      </ns1:results>
   </xsl:template>
</xsl:stylesheet>