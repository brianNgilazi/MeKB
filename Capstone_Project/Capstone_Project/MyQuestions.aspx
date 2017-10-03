<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyQuestions.aspx.cs" Inherits="Capstone_Project.AskedQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <h2><u><%:String.Format("Questions Awaiting Acceptance ({0})",pendingCount())%></u></h2>
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="PendingQuestions" GroupItemCount="1">
         <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No Pending Questions</td>
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
                                    <a href="QuestionDetails.aspx?questionID=<%#:Item.QuestionID%>">
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
        <h2><u>Unanswered Questions</u></h2>
    <asp:ListView ID="ListView3" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="UnansweredQuestions" GroupItemCount="1" >
         <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No Unanswered Questions</td>
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
                                    <a href="QuestionDetails.aspx?questionID=<%#:Item.QuestionID%>">
                                        <span>
                                            <%#:Item.Details%>
                                        </span>
                                    </a>
                                    </span>
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
        <h2><u>Asked and Accepted Questions</u></h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="CompleteQuestions" GroupItemCount="1" >
         <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No Completed questions found.</td>
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
                                    <a runat="server">
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

</asp:Content>

