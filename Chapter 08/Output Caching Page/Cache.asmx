<%@ WebService language="C#" class="TestCache" %>

using System;
using System.Web.Services;
using System.Xml.Serialization;
using System.Reflection;

[WebService(Namespace="http://winserver/0131/WebService/")]
public class TestCache
{

    [WebMethod(CacheDuration=120, 
               Description="Shows the effects of output caching.")]
    public string TimeStampForOutputCache()
    {
        object[]            Attr;   // Array of attributes.
        MethodInfo          MI;     // Information about this method.
        WebMethodAttribute  WMA;    // WebMethod attribute information.
        string              RetVal; // Return value.
    
        // Get the method information for this method.
        MI = typeof(TestCache).GetMethod("TimeStampForOutputCache");
    
        // Use the method information to obtain a list of attributes.
        Attr = MI.GetCustomAttributes(typeof(WebMethodAttribute), false);
    
        // Obtain the WebMethodAttribute information.
        WMA = (WebMethodAttribute)Attr[0];
    
        // Return the CacheDuration property value to the user.
		RetVal = "CacheDuration Value: " + WMA.CacheDuration.ToString();
		
		// Return the current time.
		RetVal = RetVal + " -- Output Cached at: " 
		                + DateTime.Now.ToString("r");
		
		// Return the data.
        return RetVal;
    }
    
    [WebMethod(CacheDuration=0,
               Description="No output caching for this method.")]
    public string TimeStampForNoOutputCache()
    {
        object[]            Attr;   // Array of attributes.
        MethodInfo          MI;     // Information about this method.
        WebMethodAttribute  WMA;    // WebMethod attribute information.
        string              RetVal; // Return value.
    
        // Get the method information for this method.
        MI = typeof(TestCache).GetMethod("TimeStampForNoOutputCache");
    
        // Use the method information to obtain a list of attributes.
        Attr = MI.GetCustomAttributes(typeof(WebMethodAttribute), false);
    
        // Obtain the WebMethodAttribute information.
        WMA = (WebMethodAttribute)Attr[0];
    
        // Return the CacheDuration property value to the user.
		RetVal = "CacheDuration Value: " + WMA.CacheDuration.ToString();
		
		// Return the current time.
		RetVal = RetVal + " -- Output Cached at: " 
		                + DateTime.Now.ToString("r");
		
		// Return the data.
        return RetVal;
    }
}
