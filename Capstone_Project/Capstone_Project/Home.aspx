<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Capstone_Project.Home" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <div class="row">
            <div class="col">
                <asp:TextBox runat="server" ReadOnly="false" Height="58px" Width="474px" ID="QuestionBox" Rows="3" TextMode="MultiLine" Columns="70"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="QuestionBox"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Please Enter A Question."  />
                    <br />
             
            </div>
            <br />
            <asp:Button runat="server" OnClick="Submit_Question" Text="Submit" CssClass="btn btn-default" Height="46px" />
            
       
    </div>
     </div>
   
</asp:Content>
