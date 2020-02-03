<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="SearchPerson.aspx.cs" Inherits="TaskJGarant.SearchPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>
          
            <asp:ListView ID="peopleList" runat="server" 
                DataKeyNames="ID" GroupItemCount="1"
                ItemType="TaskJGarant.Models.PhysPerson" SelectMethod="GetSPPeople">
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