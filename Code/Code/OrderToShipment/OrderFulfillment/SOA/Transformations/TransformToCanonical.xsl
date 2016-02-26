<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://www.oracle.com/soasample"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollOrderForFulfillment"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/OrderToShipment/OrderFulfillment/PollOrderForFulfillment"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:client="http://xmlns.oracle.com/OrderToShipment/OrderFulfillment/OrderFulfilProcess">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/PollOrderForFulfillment.wsdl"/>
        <oracle-xsl-mapper:rootElement name="OrdersCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/PollOrderForFulfillment"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/OrderFulfilProcess.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Order" namespace="http://www.oracle.com/soasample"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [SAT FEB 20 14:06:12 IST 2016].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:Order>
      <tns:OrderNumber>
        <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:orderNumber"/>
      </tns:OrderNumber>
      <tns:OrderDate>
        <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:orderDate"/>
      </tns:OrderDate>
      <tns:Shipping>
        <tns:OrderNumber>
          <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:orderNumber"/>
        </tns:OrderNumber>
        <tns:Address>
          <tns:FirstName>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:firstName"/>
          </tns:FirstName>
          <tns:LastName>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:lastName"/>
          </tns:LastName>
          <tns:AddressLine>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:addressLine1"/>
          </tns:AddressLine>
          <tns:City>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:city"/>
          </tns:City>
          <tns:State>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:state"/>
          </tns:State>
          <tns:ZipCode>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:zipCode"/>
          </tns:ZipCode>
          <tns:PhoneNumber>
            <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:addressId/ns0:phone"/>
          </tns:PhoneNumber>
        </tns:Address>
        <tns:ShippingSpeed>
          <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:shippinginfoCollection/ns0:Shippinginfo/ns0:shipspeed"/>
        </tns:ShippingSpeed>
        <tns:ShippingProvider>
          <tns:Name/>
        </tns:ShippingProvider>
        <tns:ShipMethod/>
        <tns:Status>
          <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:status"/>
        </tns:Status>
      </tns:Shipping>
      <tns:Email>
        <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:email"/>
      </tns:Email>
      <tns:Items>
        <xsl:for-each select="/ns0:OrdersCollection/ns0:Orders/ns0:orderItemsCollection/ns0:OrderItems">
          <tns:Item>
            <tns:SKU>
              <xsl:value-of select="ns0:sku"/>
            </tns:SKU>
            <tns:Quantity>
              <xsl:value-of select="ns0:quantity"/>
            </tns:Quantity>
            <tns:UnitPrice>
              <xsl:value-of select="ns0:unitprice"/>
            </tns:UnitPrice>
            <tns:Brand>
              <xsl:value-of select="ns0:brand"/>
            </tns:Brand>
            <tns:Model>
              <xsl:value-of select="ns0:model"/>
            </tns:Model>
            <tns:Category>
              <xsl:value-of select="ns0:categoryId"/>
            </tns:Category>
            <tns:Description>
              <xsl:value-of select="ns0:description"/>
            </tns:Description>
          </tns:Item>
        </xsl:for-each>
      </tns:Items>
      <tns:Status>
        <xsl:value-of select="/ns0:OrdersCollection/ns0:Orders/ns0:status"/>
      </tns:Status>
    </tns:Order>
  </xsl:template>
</xsl:stylesheet>
