<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataQueryWebPage.aspx.cs" Inherits="FinalExamJeffDavidson.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Order Look Up Page</h1>
    <div>
            <br />
            Order Number:
            <asp:TextBox ID="orderNum" runat="server"></asp:TextBox>
            <br />
            <br />
           
            <asp:Button ID="QueryWebButton" runat="server" OnClick="QueryWebButton_Click" Text="Search Order" />
            <br />
            <br />
            <div id="OrderTableReturn">
                <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" CellPadding="10" >
                    
                </asp:GridView>
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" CellPadding="10" >
                    
                </asp:GridView>
                
            </div>
            
        </div>
</asp:Content>

