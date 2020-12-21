

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="DemoApplication.WebForm1" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Country detail page</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <telerik:RadWindowManager RenderMode="Lightweight" runat="server" id="RadWindowManager1"></telerik:RadWindowManager>
        <script type="text/javascript">
    function callBackFn(arg)
    {
       // alert("Selected Country: " + arg);
    }
        </script>
         <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <%--<telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />--%>
        <div>
        
            <telerik:RadDropDownList AutoPostBack="true" RenderMode="Lightweight" ID="RadDropDownCountry" runat="server"  DropDownHeight="200px" Width="200px"
                DefaultMessage="Select a country" DropDownWidth="200px" OnSelectedIndexChanged="RadDropDownCountry_SelectedIndexChanged" Skin="Default">
            </telerik:RadDropDownList>
             
      </div>

    </form>
</body>
</html>
