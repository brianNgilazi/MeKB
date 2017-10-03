<%@ Page Title="Answer Question" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AnswerQuestion.aspx.cs" Inherits="Capstone_Project.MentorAdmin.AnswerQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="questionDetail" runat="server" ItemType="Capstone_Project.Models.Question" SelectMethod ="GetQuestion" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h2><%#:Item.Details %></h2>
                 <b>Time Submitted: </b><%#:Item.TimeAsked%>
                 <span><b>Display on Feed?</b>&nbsp;<%#:Item.Share%></span>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <span><b>Answer:</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="AnswerBox" Rows="4" Columns="70" Wrap="true" TextMode="MultiLine"></asp:TextBox>
                         
                    </td>
                    <td>&nbsp;</td> 
                    <td><asp:Button runat="server" Text="Answer Question" OnClick="Submit_Click"/></td> 
                    
                <tr />
               
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
