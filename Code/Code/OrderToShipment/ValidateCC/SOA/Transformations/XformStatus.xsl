<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/getCardDetails"
                xmlns:ns0="http://www.oracle.com/soasample"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns1 ns0 oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:tns="http://xmlns.oracle.com/OrderToShipment/ValidateCC/ValidateCC"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/OrderToShipment/ValidateCC/getCardDetails"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ValidateCC.wsdl"/>
        <oracle-xsl-mapper:rootElement name="PaymentInfo" namespace="http://www.oracle.com/soasample"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/getCardDetails.wsdl"/>
        <oracle-xsl-mapper:rootElement name="CreditcarddetailsCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/getCardDetails"/>
        <oracle-xsl-mapper:param name="GetCardDetails_OutputVariable.CreditcarddetailsCollection"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ValidateCC.wsdl"/>
        <oracle-xsl-mapper:rootElement name="PaymentStatus" namespace="http://www.oracle.com/soasample"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU FEB 18 22:42:53 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="GetCardDetails_OutputVariable.CreditcarddetailsCollection"/>
  <xsl:template match="/">
    <ns0:PaymentStatus>
      <xsl:choose>
        <xsl:when test="(/ns0:PaymentInfo/ns0:ExpireDate = $GetCardDetails_OutputVariable.CreditcarddetailsCollection/ns1:CreditcarddetailsCollection/ns1:Creditcarddetails/ns1:expiryDate) and (/ns0:PaymentInfo/ns0:AuthorizationAmount &lt; $GetCardDetails_OutputVariable.CreditcarddetailsCollection/ns1:CreditcarddetailsCollection/ns1:Creditcarddetails/ns1:dailyLimit)">
          <ns0:Status>Authorized</ns0:Status>
        </xsl:when>
        <xsl:otherwise>
            <ns0:Status>Denied</ns0:Status>
         </xsl:otherwise>
      </xsl:choose>
    </ns0:PaymentStatus>
  </xsl:template>
</xsl:stylesheet>
