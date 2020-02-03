<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="PhysPeopleDetails.aspx.cs" Inherits="TaskJGarant.PhysPeopleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="physPeopleDetail" runat="server" ItemType="TaskJGarant.Models.PhysPerson" SelectMethod ="GetPDPeople" RenderOuterTable="false">
        <ItemTemplate>
            <div>
               <a href="UpdatePerson.aspx?physPersonID=<%#:Item.ID%>">update</a>
                <a href="DeletePerson.aspx?physPersonID=<%#:Item.ID%>">delete</a>
            </div>
            <br />
            <table>
                <tr>  
                    <td style="vertical-align: top; text-align:left;">
                        <br />
                        <span><b>First Name:</b>&nbsp;<%#:Item.FirstName %></span>
                        <br />         
                        <span><b>Middle Name:</b>&nbsp;<%#:Item.MiddleName %></span>
                        <br />
                        <span><b>Last Name:</b>&nbsp;<%#: Item.LastName %></span>
                        <br />
                        <span> <b>IIN/BIN: </b><br /><%#:Item.Iin_bin %></span>
                        <br />
                        <span> <b>Identificator: </b><br /><%#:Item.Identificator%></span>
                        <br />
                        <span> <b>Last updated on: </b><br /><%#:Item.UpdateDate%></span> <b>by </b> <%#:Item.UpdaterName%>
                        <br />
                        <span> <b>Created on: </b><br /><%#:Item.CreateDate%></span> <b>by </b> <%#:Item.AuthorName%>
                     
                        <br />

                    </td>
                    
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>