<%@ Page Title="Answered Questions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Feed.aspx.cs" Inherits="Capstone_Project.UsersList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="GetQuestions" GroupItemCount="1">
         <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                 <ItemTemplate>
                    <td runat="server">
                        <table>
                           <tr>
                                <td>
                                    
                                        <img src="/Images/question.png"
                                            width="100" height="75" style="border: solid" /></a>
                                </td>
                            </tr>
                            <tr>
                            <tr>
                                <td>
                                        <span>
                                            <%#:Item.Details%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Answer: </b><%#:String.Format("{0}", Item.Answer)%> 
                                    </span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
            </div>
        </section>
</asp:Content>
