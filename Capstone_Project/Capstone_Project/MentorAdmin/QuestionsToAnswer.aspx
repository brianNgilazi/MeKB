﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionsToAnswer.aspx.cs" Inherits="Capstone_Project.MentorAdmin.QuestionsToAnswer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <section>
     <h2><u><%:String.Format("Questions To Answer ({0})",unansweredCount())%></u></h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="questionGrid_GetData" GroupItemCount="1" >
         <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No questions need answering.</td>
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
                            <tr>
                                <td>
                                    <a href="AnswerQuestion.aspx?questionID=<%#:Item.QuestionID%>">
                                        <span>
                                            <%#:Item.Details%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <%#:String.Format("{0}", Item.TimeAsked)%> 
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
      </section>

  <section>
     <h2><u><%:String.Format("Questions with Rejected Answers ({0})",rejectedCount())%></u></h2>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="GetRejected" GroupItemCount="1" >
         <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No Rejected Answers.</td>
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
                            <tr>
                                <td>
                                    <a href="AnswerQuestion.aspx?questionID=<%#:Item.QuestionID%>">
                                        <span>
                                            <%#:Item.Details%>
                                        </span>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Answer: </b><%#:String.Format("{0}", Item.Answer)%> 
                                    </span>
                                    <br />
                                    <span>
                                        <%#:String.Format("{0}", Item.TimeAsked)%> 
                                    </span>
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
      </section>


</asp:Content>
