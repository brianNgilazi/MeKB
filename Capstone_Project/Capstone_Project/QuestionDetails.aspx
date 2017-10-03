<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QuestionDetails.aspx.cs" Inherits="Capstone_Project.QuestionDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="questionDetail" runat="server" ItemType="Capstone_Project.Models.Question" SelectMethod ="GetQuestion" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h2><%#:Item.Details %></h2>
                <h3><%#:Item.Answer%></h3>
                <%#:Item.TimeAsked%>
            </div>
            <br />
            <table>
               
                <tr>
                    <td>
                         
                           <div>
                               <asp:RadioButtonList runat="server" ID="radioButtonList" >
                                    <asp:ListItem Text="Accept" Value="yes" />
                                    <asp:ListItem Text="Reject" Value="no" />
                               </asp:RadioButtonList
                                   >
                           </div>
                         
                    </td>
                </tr>
                
                <tr>
                    <td>
                               <br />
                           <div><asp:CheckBox runat="server" ID="checkbox1" Text="Make Public"/></div>
                         
                    </td>
                    
                    
                <tr />
               
            </table>
        </ItemTemplate>
    </asp:FormView>
    <br />
    <div><asp:Button runat="server" Text="Confirm" OnClick="Submit_Click"/></div> 
</asp:Content>
