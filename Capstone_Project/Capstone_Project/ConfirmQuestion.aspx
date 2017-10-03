<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmQuestion.aspx.cs" Inherits="Capstone_Project.ConfirmQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
            <div class="col">
                <asp:TextBox runat="server" ReadOnly="false" Height="58px" Width="474px" ID="QuestionBox" Wrap="true" Rows="3" TextMode="MultiLine" Columns="70"></asp:TextBox>
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="QuestionBox"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Please Enter A Question."  />
                
                 <br />
             
            </div>
            <br />
            <div><asp:CheckBox runat="server" Checked="false" ID="checkbox" Text="Make Public (Add to feed when answered)" /></div>
            
            <br />
            <asp:Button runat="server" OnClick="Submit_Question" Text="Submit" CssClass="btn btn-default" Height="46px" />
            
       </div>
    <section>
        <h2>Checkout these simiar questions before submitting</h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="QuestionID"
         ItemType="Capstone_Project.Models.Question" SelectMethod="GetSimilarQuestions" GroupItemCount="1" >
         <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No similar questions found.</td>
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

    </section>
</asp:Content>
