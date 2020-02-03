<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteLegal.aspx.cs" Inherits="TaskJGarant.DeleteLegal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:FormView ID="legPeopleDelete" runat="server"
          ItemType="TaskJGarant.Models.LegalPerson" 
          SelectMethod ="GetDelPerson" DeleteMethod="delete_leg_person" 
          DefaultMode="ReadOnly" RenderOuterTable="false"
          OnItemDeleted="leg_person_deleted" >
                  <ItemTemplate>           
                            Are you sure you want to delete organization with BIN  
                                        <span>
                                            <%#:Item.Iin_bin%>
                                        </span>
                                    ?
                                    <br />
                    <asp:Button runat="server" Text="Delete" CommandName="Delete" />
                    <asp:Button runat="server" Text="Cancel" CausesValidation="false" OnClick="cancelButton_Click" />
           
                  </ItemTemplate>
          </asp:FormView>
</asp:Content>