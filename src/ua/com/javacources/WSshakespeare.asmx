<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://xmlme.com/WebServices" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://xmlme.com/WebServices" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This Web Service takes a phrase from the plays of William Shakespeare and returns the associated speech, speaker, and play. The Shakespeare texts used in this Web Service are the XML versions developed by Jon Bosak.  Go to http://www.oasis-open.org/cover/bosakShakespeare200.html for more information on the texts. See http://www.xmlme.com for a sample client and additional details about the Shakespeare Web Service.</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://xmlme.com/WebServices">
      <s:element name="GetSpeech">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Request" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetSpeechResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetSpeechResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetSpeechSoapIn">
    <wsdl:part name="parameters" element="tns:GetSpeech" />
  </wsdl:message>
  <wsdl:message name="GetSpeechSoapOut">
    <wsdl:part name="parameters" element="tns:GetSpeechResponse" />
  </wsdl:message>
  <wsdl:portType name="ShakespeareSoap">
    <wsdl:operation name="GetSpeech">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">GetSpeech requires a string formatted phrase from one of Shakespeare's plays as input. The speech, speaker, and play will be returned as an XML string. Sample Shakespeare Phrases: To be, or not to be | My kingdom for a horse | Get thee to a nunnery | There are more things in heaven and earth | I will wear my heart upon my sleeve | When beggars die, there are no comets seen | Lord, what fools these mortals be | Et tu, Brute | Sound and fury | Friends, romans, countrymen | Something wicked this way comes | To sleep: perchance to dream | Green-eyed monster | This was the noblest Roman of them all | Oft expectation fails and most oft there Where most it promises | Eye of newt and toe of frog | Frailty, thy name is woman | What light through yonder window breaks | Think you I am no stronger than my sex | Cowards die many times before their deaths | How poor are they that have not patience | Quality of mercy | My words fly up, my thoughts remain below | Bell, book, and candle | Something is rotten in the state of Denmark | Beware the ides of March | A stage where every man must play a part | Though this be madness, yet there is method in 't | Is this a dagger which I see before me | Now go we in content To liberty and not to banishment | Band of brothers | Alas, poor Yorick! I knew him | The world's mine oyster | Nothing will come of nothing | That man that hath a tongue | All the world's a stage | The course of true love never did run smooth | Love looks not with the eyes, but with the mind | Let every eye negotiate for itself | Kiss me, Kate | The play 's the thing | I am constant as the northern star | The man that hath no music in himself | We are such stuff As dreams are made on | This was the most unkindest cut of all | Journeys end in lovers meeting | Yond Cassius has a lean and hungry look | My only love sprung from my only hate | I am fortune's fool | Loved not wisely but too well | O coward conscience, how dost thou afflict me | When shall we three meet again | A plague o' both your houses | Out, damned spot | To-morrow, and to-morrow, and to-morrow | Our remedies oft in ourselves do lie | Not that I loved Caesar less | Winter of our discontent | Parting is such sweet sorrow | O Romeo, Romeo! wherefore art thou Romeo | The lady protests too much, methinks | What a piece of work is a man | The fault, dear Brutus, is not in our stars | All that glitters is not gold | What's in a name | Thus with a kiss I die</wsdl:documentation>
      <wsdl:input message="tns:GetSpeechSoapIn" />
      <wsdl:output message="tns:GetSpeechSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="ShakespeareSoap" type="tns:ShakespeareSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetSpeech">
      <soap:operation soapAction="http://xmlme.com/WebServices/GetSpeech" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ShakespeareSoap12" type="tns:ShakespeareSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetSpeech">
      <soap12:operation soapAction="http://xmlme.com/WebServices/GetSpeech" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="Shakespeare">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This Web Service takes a phrase from the plays of William Shakespeare and returns the associated speech, speaker, and play. The Shakespeare texts used in this Web Service are the XML versions developed by Jon Bosak.  Go to http://www.oasis-open.org/cover/bosakShakespeare200.html for more information on the texts. See http://www.xmlme.com for a sample client and additional details about the Shakespeare Web Service.</wsdl:documentation>
    <wsdl:port name="ShakespeareSoap" binding="tns:ShakespeareSoap">
      <soap:address location="http://xmlme.com/WSshakespeare.asmx" />
    </wsdl:port>
    <wsdl:port name="ShakespeareSoap12" binding="tns:ShakespeareSoap12">
      <soap12:address location="http://xmlme.com/WSshakespeare.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>