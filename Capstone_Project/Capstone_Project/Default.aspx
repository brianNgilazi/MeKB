<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Capstone_Project._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <asp:TextBox runat="server" ReadOnly="false" Height="58px" Width="474px" ID="QuestionBox" Text="Enter a question here" ></asp:TextBox>
                <asp:Button runat="server" OnClick="Submit_Question" Text="Submit" CssClass="btn btn-default" Height="46px" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="QuestionBox"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Please Enter A Question." />
        </div>
       <div class="col-md-offset-2 col-md-10">
        </div>
    </div>
    <div class="jumbotron">
        <h1>Mentorship KnowledgeBase</h1>
        <p class="lead">The Mentorship Knowledge Base is a searchable web-based application that allows students to conveniently obtain access to mentors and mentorship program information.</p>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

   
    

</asp:Content>
