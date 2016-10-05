<%@ WebService language="C#" class="MathFunctions" %>

using System;
using System.Web.Services;
using System.Xml.Serialization;

[WebService(Namespace="http://winserver/0131/WebService/")]
public class MathFunctions
{

    [WebMethod (Description = "This method reverses text.",
                MessageName = "ReverseText")]
    public string ReverseIt(string Input)
    {
        String   Temp; // Temporary data holder.
    
        // Initialize Temp.
        Temp = "";
    
        // Reverse the string.
        for (int Counter = Input.Length - 1; Counter >= 0; Counter--)
            Temp = Temp + Input[Counter];
    
        // Return the reversed string.
        return Temp;
    }
    
    [WebMethod (Description = "This method reverses integers.",
                MessageName = "ReverseInteger")]
    public int ReverseIt(int Input)
    {
        String  Temp;   // Temporary data holder.
        String  DataIn; // Data to convert.
        
        // Initialize DataIn.
        DataIn = Input.ToString();
    
        // Initialize Temp.
        Temp = "";
    
        // Reverse the string.
        for (int Counter = DataIn.Length - 1; Counter >= 0; Counter--)
            Temp = Temp + DataIn[Counter];
    
        // Return the reversed string.
        return Int32.Parse(Temp);
    }
}
