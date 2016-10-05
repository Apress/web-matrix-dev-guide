<%@ Page Language="C#" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html>
<head>
<SCRIPT LANGUAGE="JavaScript" FOR="btnTest" EVENT="Click()">
	<!--
	txtOutput.value = btnTest.Caption

	-->
</SCRIPT>
<Title>Unmanaged Control Test</Title>
</head>
<body>
    <form id="MyForm" title="Unmanaged Control Test" runat="server">
        <h1 align="center">Unmanaged Control Test
        </h1>
        <p align="left">
            Click the button to see the output in the textbox:
        </p>
        <p>
            <object id="btnTest" codebase="http://winserver/controls/PButton1.OCX" height="51" width="100" classid="CLSID:1B9F500E-F096-4168-92C1-F71EEFB53ADB">
                <param name="_Version" value="65536" />
                <param name="_ExtentX" value="2646" />
                <param name="_ExtentY" value="1349" />
                <param name="_StockProps" value="70" />
                <param name="Caption" value="On" />
                <param name="Enabled" value="1" />
                <param name="OnOff" value="-1" />
                <param name="ModalResult" value="8" />
                <param name="StdButtonType" value="8" />
            </object>
        </p>
        <p>
            Output: 
            <input type="text" name="txtOutput" />
        </p>
    </form>
</body>
</html>
