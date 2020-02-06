


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="ContactLegal.aspx.cs" Inherits="TaskJGarant.ContactLegal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:ValidationSummary ShowModelStateErrors="true" runat="server" />
    <asp:GridView runat="server" ID="contactsGrid"
        ItemType="TaskJGarant.Models.PhysPerson"
        SelectMethod="legalContact_GetData" AutoGenerateColumns="false" DataKeyNames="ID" >
        <Columns>
            <asp:DynamicField HeaderText="FirstName" DataField="FirstName" />
            <asp:BoundField HeaderText="MiddleNAme" DataField="MiddleName" />
            <asp:BoundField HeaderText="LastName" DataField="LastName" />
            <asp:BoundField HeaderText="IIN/BIN" DataField="Iin_bin" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label Text="Doesn't Have Contacts" runat="server" />
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>


