<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Capstone_Project.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Address Details</h3>
    <address>
        Room 317 Computer Science Building<br />
        18 University Avenue<br />
        University of Cape Town<br />
        Rondebosch<br />
        Cape Town<br />
        South Africa<br />
    </address>
    <address>
        <abbr title="Phone">Telephone</abbr>
        +27 21 650 2663
        <br />
        <abbr title="fax">Fax</abbr>
        +27 21 650 3551
    </address>
    <address>
        <abbr title="Email">Computer Science Department Email: </abbr>
        <strong></strong>   <a href="mailto:dept@cs.uct.ac.za">dept@cs.uct.ac.za</a><br />
    </address>
    <address>
        <strong>Support:</strong>   <a href="mailto:mtlshi005@myuct.ac.za">mtlshi005@myuct.ac.za</a><br />
        <strong>Architect:</strong> <a href="mailto:nglbri001@myuct.ac.za">nglbri001@myuct.ac.za</a><br />
        <strong>System Manager:</strong> <a href="mailto:mfmalu002@myuct.ac.za">mfmalu002@myuct.ac.za</a><br />
    </address>
</asp:Content>
