<%@ WebService language="C#" class="SOAPSample" %>

using System;
using System.Web.Services;
using System.Xml.Serialization;
using System.Web.Services.Protocols;

// A class containing the SOAP header information.
public class SimpleHeader : SoapHeader
{
    // The single value passed by the header.
    public String Value;
}

// This class contains all of the methods that will use
// the SOAP header.
[WebService(Namespace="http://winserver/0131/WebService/")]
public class SOAPSample
{
    // Create an instance of the SimpleHeader class so we
    // retrieve the data.
    public SimpleHeader         soapHeader;
    // This class contains a list of headers that the client
    // doesn't understand.
    public SoapUnknownHeader[]  unknownHeaders;
    
    [WebMethod (Description="Displays the SOAP header type received")]
    [SoapHeader("soapHeader", Required=false)]
    [SoapHeader("unknownHeaders", Required=false)]
    public string GetValueOfSoapHeader()
    {
        // If the client sends the custom header, the print
        // out its value.
        if (soapHeader != null)
            return soapHeader.Value;
        else
            // If the client sends unknown headers, it means
            // that it doesn't understand something about the
            // SOAP contract.
            if (unknownHeaders != null)
                return "SOAP Header Type is Unknown!";
            else
                // A client doesn't have to send a SOAP header
                // at all.
                return "SOAP Header is Empty!";
    }
    
    [WebMethod (Description = "This method reverses text.")]
    [SoapHeader("soapHeader", Required=false)]
    public string ReverseIt(string Input)
    {
        String  Temp;   // Temporary data holder.
        String  Data;   //The data we'll convert.
    
        // Initialize Temp.
        Temp = "";
        
        // Initialize Data.
        if (soapHeader != null)
            Data = soapHeader.Value;
        else
            Data = Input;
    
        // Reverse the string.
        for (int Counter = Data.Length - 1; Counter >= 0; Counter--)
            Temp = Temp + Input[Counter];
    
        // Return the reversed string.
        return Temp;
    }
    
    [WebMethod (Description = "This method requires the SOAP header.")]
    [SoapHeader ("soapHeader", Required=true)]
    public string RequiredSoapHeader()
    {
        if (soapHeader == null)
            return "Error! No SOAP Header Supplied!";
        else
            return soapHeader.Value;
    }
}
