<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:ns0="http://www.home.com/xsd/orderstatus"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateDB"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:ns1="http://xmlns.oracle.com/OrderToShipment/UpdateOrderStatus/OrderStatusRouter"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/OrderToShipment/UpdateOrderStatus/UpdateDB"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/OrderStatusRouter.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OrderStatus" namespace="http://www.home.com/xsd/orderstatus"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/UpdateDB.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OrdersCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/UpdateDB"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI FEB 19 22:01:40 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:OrdersCollection>
      <tns:Orders>
        <tns:orderNumber>
          <xsl:value-of select="/ns0:OrderStatus/ns0:OrderNum"/>
        </tns:orderNumber>
        <tns:status>
          <xsl:value-of select="/ns0:OrderStatus/ns0:Status"/>
        </tns:status>
      </tns:Orders>
    </tns:OrdersCollection>
  </xsl:template>
</xsl:stylesheet>
