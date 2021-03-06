﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionsToAnswer.aspx.cs" Inherits="Capstone_Project.MentorAdmin.QuestionsToAnswer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="questionGrid" EditRowStyle-ForeColor="SlateGray"
        ItemType="Capstone_Project.Models.Question" DataKeyNames="QuestionID" 
        SelectMethod="questionGrid_GetData"
        UpdateMethod="questionGrid_UpdateItem" DeleteMethod="questionGrid_DeleteItem"
        AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"  
        AutoGenerateColumns="false" Height="220px" Width="705px" RowStyle-BorderStyle="Ridge" BorderStyle="Ridge">
        <Columns>
            <asp:DynamicField DataField="QuestionID" />
            <asp:DynamicField DataField="Details" />
            <asp:DynamicField DataField="Answer" />
            <asp:DynamicField DataField="StudentNumber" />                 
        </Columns>
    </asp:GridView>
</asp:Content>
