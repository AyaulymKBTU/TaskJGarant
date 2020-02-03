<%@ Page Title="Legal Person List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="LegalsList.aspx.cs" Inherits="TaskJGarant.LegalsList" %>

<%--VARIANT WITH GRID, WASN'T REALLY USEFUL--%>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="legalsGrid"
        ItemType="TaskJGarant.Models.LegalPerson" SelectMethod="GetLPPeople" DataKeyNames="ID" 
        
        AutoGenerateColumns="false">
        <Columns>
            <asp:DynamicField DataField="ID" />
            <asp:DynamicField DataField="TitleName" />         
            <asp:HyperLinkField Text="Contacts" DataNavigateUrlFormatString="~/ContactLegal.aspx?legPersonID={0}"
    DataNavigateUrlFields="ID" />     
        </Columns>
    </asp:GridView>
</asp:Content>--%>




<%--ATTENTION--%>

<%--Variant with links to details page--%>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
             <div>
                 <asp:textbox id="SearchLegalPersonTextBox" text=''  runat="server"/>
                 <asp:Button runat="server" onClick="NavigateToSearchResults" Text="Search by BIN" />
            </div>
             <div>
              <asp:HyperLink NavigateUrl="~/CreateLegal" Text="Add New" runat="server" />
            </div>
            <asp:ListView ID="legalsList" runat="server" 
                DataKeyNames="ID" GroupItemCount="1"
                ItemType="TaskJGarant.Models.LegalPerson" SelectMethod="GetLPPeople">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
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
                        
                                     <a href="LegPeopleDetails.aspx?legPersonID=<%#:Item.ID%>">
                                        <span>
                                            <%#:Item.Iin_bin%> 
                                        </span>
                                    </a>
                                    <br />
                               
                        
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
        </div>
    </section>
</asp:Content>


