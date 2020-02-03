<%@ Page Title="Phys People List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="PeopleList.aspx.cs" Inherits="TaskJGarant.PeopleList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
             <div>
                 <asp:textbox id="SearchPersonTextBox" text=''  runat="server"/>
                 <asp:Button runat="server" onClick="NavigateToSearchResults" Text="Search" />
            </div>
             <div>
              <asp:HyperLink NavigateUrl="~/CreatePhys" Text="Add New" runat="server" />
            </div>
            <asp:ListView ID="peopleList" runat="server" 
                DataKeyNames="ID" GroupItemCount="1"
                ItemType="TaskJGarant.Models.PhysPerson" SelectMethod="GetPPPeople">
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
                        
                                   
                              <a href="PhysPeopleDetails.aspx?physPersonID=<%#:Item.ID%>">
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