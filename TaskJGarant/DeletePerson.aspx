<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="DeletePerson.aspx.cs" Inherits="TaskJGarant.DeletePerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:FormView ID="physPeopleDelete" runat="server"
          ItemType="TaskJGarant.Models.PhysPerson" 
          SelectMethod ="GetDelPerson" DeleteMethod="delete_phys_person" 
          DefaultMode="ReadOnly" RenderOuterTable="false"
          OnItemDeleted="phys_person_deleted" >
                  <ItemTemplate>           
                            Are you sure you want to delete person with IIN  
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
