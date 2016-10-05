<%@ WebService language="C#" class="TemplateTest" %>

using System;
using System.Web.Services;
using System.Xml.Serialization;

[WebService (Name="My Web Service",
             Namespace="DataCon",
             Description="A Sample Web Service.")]
             
public class TemplateTest {

    [WebMethod]
    public int Add(int a, int b) {
        return a + b;
    }
}
