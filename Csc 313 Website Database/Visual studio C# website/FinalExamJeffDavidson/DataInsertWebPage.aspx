<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataInsertWebPage.aspx.cs" Inherits="FinalExamJeffDavidson.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="OrderPage-Container"> 
            <h1>Order a Custom Ramp</h1> 

            <h2>Please input your information.</h2>
                
            First Name: 
            <asp:TextBox ID="custFName" runat="server"></asp:TextBox>
            <asp:Label ID="custFNameLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Last Name: 
            <asp:TextBox ID="custLName" runat="server"></asp:TextBox>
            <asp:Label ID="custLNameLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Phone Number: 
            <asp:TextBox ID="custPhone" runat="server"></asp:TextBox>
            <asp:Label ID="custPhoneLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Address One: 
            <asp:TextBox ID="custAddressOne" runat="server"></asp:TextBox>
        <asp:Label ID="custAddressOneLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Address Two: 
            <asp:TextBox ID="custAddressTwo" runat="server"></asp:TextBox>
        <asp:Label ID="custAddressTwoLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            City: 
            <asp:TextBox ID="custCity" runat="server"></asp:TextBox>
        <asp:Label ID="custCityLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Zip Code: 
            <asp:TextBox ID="custZip" runat="server"></asp:TextBox>
        <asp:Label ID="custZipLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Country:
            <asp:DropDownList ID="custCountryDropDown" runat="server">
                <asp:ListItem Selected="True" Value="Select"> Select </asp:ListItem>
                <asp:ListItem Value="UnitedStates"> United States </asp:ListItem>
            </asp:DropDownList>
        <asp:Label ID="custCountryDropDownLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            State:
            <asp:DropDownList ID="custStateDropDown" runat="server">
                <asp:ListItem Selected="True" Value="Select"> Select </asp:ListItem>
                <asp:ListItem Value="AL"> Alabama - AL </asp:ListItem>
                <asp:ListItem Value="AK"> Alaska - AK </asp:ListItem>
                <asp:ListItem Value="AZ"> Arizona - AZ </asp:ListItem>
                <asp:ListItem Value="AR"> Arkansas - AR </asp:ListItem>
                <asp:ListItem Value="CA"> California - CA </asp:ListItem>
                <asp:ListItem Value="CO"> Colorado - CO </asp:ListItem>
                <asp:ListItem Value="CT"> Connecticut - CT </asp:ListItem>
                <asp:ListItem Value="DE"> Delaware - DE </asp:ListItem>
                <asp:ListItem Value="FL"> Florida - FL </asp:ListItem>
                <asp:ListItem Value="GA"> Georgia - GA </asp:ListItem>
                <asp:ListItem Value="HI"> Hawaii - HI </asp:ListItem>
                <asp:ListItem Value="ID"> Idaho - ID </asp:ListItem>
                <asp:ListItem Value="IL"> Illinois - IL </asp:ListItem>
                <asp:ListItem Value="IN"> Indiana - IN </asp:ListItem>
                <asp:ListItem Value="IA"> Iowa - IA </asp:ListItem>
                <asp:ListItem Value="KS"> Kansas - KS </asp:ListItem>
                <asp:ListItem Value="KY"> Kentucky - KY </asp:ListItem>
                <asp:ListItem Value="LA"> Louisiana - LA </asp:ListItem>
                <asp:ListItem Value="ME"> Maine - ME </asp:ListItem>
                <asp:ListItem Value="MD"> Maryland - MD </asp:ListItem>
                <asp:ListItem Value="MA"> Massachusetts - MA </asp:ListItem>
                <asp:ListItem Value="MI"> Michigan - MI </asp:ListItem>
                <asp:ListItem Value="MN"> Minnesota - MN </asp:ListItem>
                <asp:ListItem Value="MS"> Mississippi - MS </asp:ListItem>
                <asp:ListItem Value="MO"> Missouri - MO </asp:ListItem>
                <asp:ListItem Value="MT"> Montana - MT </asp:ListItem>
                <asp:ListItem Value="NE"> Nebraska - NE </asp:ListItem>
                <asp:ListItem Value="NV"> Nevada - NV </asp:ListItem>
                <asp:ListItem Value="NH"> New Hampshire - NH </asp:ListItem>
                <asp:ListItem Value="NJ"> New Jersey - NJ </asp:ListItem>
                <asp:ListItem Value="NM"> New Mexico - NM </asp:ListItem>
                <asp:ListItem Value="NY"> New York - NY </asp:ListItem>
                <asp:ListItem Value="NC"> North Carolina - NC </asp:ListItem>
                <asp:ListItem Value="ND"> North Dakota - ND </asp:ListItem>
                <asp:ListItem Value="OH"> Ohio - OH </asp:ListItem>
                <asp:ListItem Value="OK"> Oklahoma - OK </asp:ListItem>
                <asp:ListItem Value="OR"> Oregon - OR </asp:ListItem>
                <asp:ListItem Value="PA"> Pennsylvania - PA </asp:ListItem>
                <asp:ListItem Value="RI"> Rhode Island - RI </asp:ListItem>
                <asp:ListItem Value="SC"> South Carolina - SC </asp:ListItem>
                <asp:ListItem Value="SD"> South Dakota - SD </asp:ListItem>
                <asp:ListItem Value="TN"> Tennessee - TN </asp:ListItem>
                <asp:ListItem Value="TX"> Texas - TX </asp:ListItem>
                <asp:ListItem Value="UT"> Utah - UT </asp:ListItem>
                <asp:ListItem Value="VT"> Vermont - VT </asp:ListItem>
                <asp:ListItem Value="VA"> Virginia - VA </asp:ListItem>
                <asp:ListItem Value="WA"> Washington - WA </asp:ListItem>
                <asp:ListItem Value="WV"> West Virginia - WV </asp:ListItem>
                <asp:ListItem Value="WI"> Wisconsin - WI </asp:ListItem>
                <asp:ListItem Value="WY"> Wyoming - WY </asp:ListItem>
            </asp:DropDownList>
        <asp:Label ID="custStateDropDownLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
   
            <h2>Spefications of your stairs or ramp.</h2>
            Quantity: 
            <asp:TextBox ID="custQuantity" runat="server"></asp:TextBox> 
        <asp:Label ID="custQuantityLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Height: 
            <asp:TextBox ID="custHeight" runat="server"></asp:TextBox>
        <asp:Label ID="custHeightLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Width: 
            <asp:TextBox ID="custWidth" runat="server"></asp:TextBox>
        <asp:Label ID="custWidthLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Length: 
            <asp:TextBox ID="custLength" runat="server"></asp:TextBox>
        <asp:Label ID="custLengthLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Include Carpet:
            <asp:DropDownList ID="custCarpetDropDown" runat="server">
                <asp:ListItem Selected="True" Value="Select"> Select </asp:ListItem>
                <asp:ListItem Value="yes"> Yes </asp:ListItem>
                <asp:ListItem Value="no"> No </asp:ListItem>
            </asp:DropDownList>
        <asp:Label ID="custCarpetDropDownLab" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Customer Comments: 
            <asp:TextBox ID="custComments" runat="server"></asp:TextBox>
       
            <br />
            <br />
            Wood Type:
            <asp:DropDownList ID="custWoodDropDown" runat="server">
                <asp:ListItem Selected="True" Value="Select"> Select </asp:ListItem>
                <asp:ListItem Value="CHIPBOARD"> CHIPBOARD </asp:ListItem>
                <asp:ListItem Value="FIBERBOARD"> FIBERBOARD </asp:ListItem>
                <asp:ListItem Value="PLYWOOD"> PLYWOOD </asp:ListItem>
                <asp:ListItem Value="PINE"> PINE </asp:ListItem>
                <asp:ListItem Value="BEECH"> BEECH </asp:ListItem>
                <asp:ListItem Value="ASH"> ASH </asp:ListItem>
                <asp:ListItem Value="OAK"> OAK </asp:ListItem>
                <asp:ListItem Value="MAPLE"> MAPLE </asp:ListItem>
                <asp:ListItem Value="WALNUT"> WALNUT </asp:ListItem>
                <asp:ListItem Value="MAHOGANY"> MAHOGANY </asp:ListItem>
            </asp:DropDownList>
        <asp:Label ID="custWoodDropDownLab" runat="server" Text=""></asp:Label>
        <br />
        <br />

        <div id="Wood-container">
            <img src="Images/WoodType.jpg" /><br />

        </div>
        <br />
        <br />
        <asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Create Order As Guest" />

        </div>
    </asp:Content>
