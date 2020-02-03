<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="LegPeopleDetails.aspx.cs" Inherits="TaskJGarant.LegPeopleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="legPeopleDetail" runat="server" ItemType="TaskJGarant.Models.LegalPerson" SelectMethod="GetLDPeople" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <a href="UpdateLegalPerson.aspx?legPersonID=<%#:Item.ID%>">update</a>
                <a href="DeleteLegal.aspx?legPersonID=<%#:Item.ID%>">delete</a>
            </div>
            <br />
            <table>
                <tr>
                    <td style="vertical-align: top; text-align: left;">
                        <br />
                        <span><b>Title Name:</b>&nbsp;<%#:Item.TitleName %></span>
                        <br />
                        <span><b>IIN/BIN: </b>
                            <br />
                            <%#:Item.Iin_bin %></span>
                        <br />
                        <span><b>Identificator: </b>
                            <br />
                            <%#:Item.Identificator%></span>
                        <br />
                        <span><b>Last updated on: </b>
                            <br />
                            <%#:Item.UpdateDate%></span> <b>by </b><%#:Item.UpdaterName%>
                        <br />
                        <span><b>Created on: </b>
                            <br />
                            <%#:Item.CreateDate%></span> <b>by </b><%#:Item.AuthorName%>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
   <%-- <div id="PeopleMenu">
        <asp:ListView ID="PeopleList"
            ItemType="TaskJGarant.Models.PhysPerson"
            runat="server"
            SelectMethod="GetPmainPeople">
            <ItemTemplate>
                <span><b>Related Contacts List: </b>
                    <br />
                    <b style="font-size: small; font-style: normal">
                        <a href="/PhysPeopleDetails.aspx?physPersonID=<%#:Item.ID%>">
                            <%#: Item.Iin_bin %>
                        </a>
                    </b>
                </span>
            </ItemTemplate>
            <ItemSeparatorTemplate>|  </ItemSeparatorTemplate>
        </asp:ListView>
    </div>--%>
</asp:Content>
