<%@ WebService language="C#" class="%%ClassName%%" %>

using System;
using System.Web.Services;
using System.Xml.Serialization;

[WebService (Name="My Web Service",
             Namespace="%%NamespaceName%%",
             Description="A Sample Web Service.")]
             
public class %%ClassName%% {

    [WebMethod]
    public int Add(int a, int b) {
        return a + b;
    }
}
