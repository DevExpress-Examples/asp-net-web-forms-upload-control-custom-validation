<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucUploadWithValidator.ascx.cs"
    Inherits="ucUploadWithValidator" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<script type="text/javascript">
    function OnClick(s, e) {
        var isValid = uploadControl.GetText() != "";
        img.SetVisible(!isValid);

        if (isValid)
            uploadControl.Upload();
    }
</script>

<table width="100%">
    <tr>
        <td>
            <dx:ASPxUploadControl ID="upload" runat="server" ClientInstanceName="uploadControl"
                Width="100%" OnFileUploadComplete="upload_FileUploadComplete">
            </dx:ASPxUploadControl>
        </td>
        <td width="17">
            <dx:ASPxImage ID="imgErrorIcon" runat="server" Width="16px" ImageUrl="imgError.png" ClientInstanceName="img"
                ClientVisible="False">
            </dx:ASPxImage>
        </td>
    </tr>
</table>
<dx:ASPxButton ID="btnCheck" runat="server" AutoPostBack="false" Text="Validate and Upload File">
    <ClientSideEvents Click="OnClick" />
</dx:ASPxButton>
