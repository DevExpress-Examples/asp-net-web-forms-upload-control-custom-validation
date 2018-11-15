<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [ucUploadWithValidator.ascx](./CS/WebSite/ucUploadWithValidator.ascx) (VB: [ucUploadWithValidator.ascx](./VB/WebSite/ucUploadWithValidator.ascx))
<!-- default file list end -->
# ASPxUploadControl - How to implement a custom required field / required validation


<p>This example demonstrates how to implement ASPxUploadControl required validation:<br />
When clicking a custom Upload button, ASPxUploadControl's selected file name is checked via the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxUploadControlScriptsASPxClientUploadControl_GetTexttopic"><u>ASPxClientUploadControl.GetText</u></a> method:<br />
- If no file is selected, a custom required validation error icon is shown;<br />
- If any file is selected, a file uploading is initiated via the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxUploadControlScriptsASPxClientUploadControl_Uploadtopic"><u>ASPxClientUploadControl.Upload</u></a> method, and the validation error icon is hidden.</p>

```js
<script type="text/javascript"><newline/>
    function OnClick(s, e) {<newline/>
        var isValid = uploadControl.GetText() != "";<newline/>
        img.SetVisible(!isValid);<newline/>
<newline/>
        if (isValid)<newline/>
            uploadControl.Upload();<newline/>
    }<newline/>
</script>
```

<p> </p>

```aspx
<dx:ASPxUploadControl ID="upload" runat="server" ClientInstanceName="uploadControl" ...><newline/>
</dx:ASPxUploadControl><newline/>

```



```aspx
<dx:ASPxImage ID="imgErrorIcon" runat="server" ... ClientInstanceName="img" ClientVisible="False"><newline/>
</dx:ASPxImage>
```

<p> </p>

```aspx
<dx:ASPxButton ID="btnCheck" runat="server" AutoPostBack="false" ...><newline/>
    <ClientSideEvents Click="OnClick" /><newline/>
</dx:ASPxButton>
```

<p> </p>

<br/>


