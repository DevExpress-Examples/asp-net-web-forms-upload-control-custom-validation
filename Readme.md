<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128563386/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3908)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
# Upload Control for ASP.NET Web Forms - How to implement custom validation rules

This example demonstrates how to display an error icon if no file is selected.

![Error Icon](errorIcon.png)

## Overview

The main idea is to call the upload control's client-side [GetText](https://docs.devexpress.com/AspNet/js-ASPxClientUploadControl.GetText(index)) method to get the selected file's name. If no file is selected, the upload control displays an error icon.

```js
function OnClick(s, e) {
    var isValid = uploadControl.GetText() != "";
    img.SetVisible(!isValid);
    if (isValid)
        uploadControl.Upload();
}
```

```aspx
<dx:ASPxUploadControl ID="upload" runat="server" ClientInstanceName="uploadControl" ... />

<dx:ASPxImage ID="imgErrorIcon" runat="server" ClientInstanceName="img" ClientVisible="False" />

<dx:ASPxButton ID="btnCheck" runat="server" AutoPostBack="false" >
    <ClientSideEvents Click="OnClick" />
</dx:ASPxButton>
```

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))

## Documentation

* [Upload Control](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxUploadControl)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-upload-control-custom-validation&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-upload-control-custom-validation&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
