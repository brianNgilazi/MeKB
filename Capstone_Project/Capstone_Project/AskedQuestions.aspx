<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AskedQuestions.aspx.cs" Inherits="Capstone_Project.AskedQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:GridView runat="server" ID="questions"
        ItemType="Capstone_Project.Models.Question"  DataKeyNames="QuestionID"
        SelectMethod="questions_GetData" EditRowStyle-Font-Size="X-Large"
        AutoGenerateColumns="true" Height="283px" Width="1147px">
    </asp:GridView>
</asp:Content>
