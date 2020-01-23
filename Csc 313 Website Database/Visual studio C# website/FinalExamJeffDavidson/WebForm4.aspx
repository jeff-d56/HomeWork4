<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="FinalExamJeffDavidson.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="orderCreatedForm">
        <br />
        Thanks For Ordering!
        <br />
        Order #
        
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
    </div>
    <p>Save your order number to be able to look up your order.</p>
</asp:Content>
