<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="CreateLegal.aspx.cs" Inherits="TaskJGarant.CreateLegal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
<asp:FormView runat="server" ID="addLegalPersonForm"
    ItemType="TaskJGarant.Models.LegalPerson" 
    InsertMethod="addLegalPersonForm_InsertItem" DefaultMode="Insert"
    RenderOuterTable="false" OnItemInserted="addLegalPersonForm_ItemInserted">
    <InsertItemTemplate>
        <fieldset>
         <table>      
            <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="TitleInsertTextBox" 
                  Text="Title" />:</b>
              </td>
              <td>
                <asp:textbox id="TitleInsertTextBox"
                  text='<%# Bind("TitleName") %>'
                  runat="server"/>
                
              </td>
            </tr>
              
              <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="IINInsertTextBox" 
                  Text="BIN" />:</b>
              </td>
              <td>
                <asp:textbox id="IINInsertTextBox"
                  text='<%# Bind("Iin_bin") %>'
                  runat="server"/> 
              </td>
            </tr>
              <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="legIdentificatorInsertTextBox" 
                  Text="Identificator" />:</b>
              </td>
              <td>
                <asp:textbox id="legIdentificatorInsertTextBox"
                  text='<%# Bind("Identificator") %>'
                  runat="server"/> 
              </td>
            </tr>
              <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="legAuthorInsertTextBox" 
                  Text="Created By" />:</b>
              </td>
              <td>
                <asp:textbox id="legAuthorInsertTextBox"
                  text='<%# Bind("AuthorName") %>'
                  runat="server"/> 
              </td>
            </tr>
              
            <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="legContactInsertTextBox" 
                  Text="Contact Id:" />:</b>
              </td>
              <td>
                <asp:textbox id="legContactInsertTextBox"
                  text='<%# Bind("ContactID") %>'
                  runat="server"/> 
              </td>
            </tr>
            <tr>
              <asp:Button runat="server" Text="Insert" CommandName="Insert" />
            <asp:Button runat="server" Text="Cancel" CausesValidation="false" OnClick="cancelButton_Click" />
            </tr>
          </table>       
         
            
        </fieldset>
    </InsertItemTemplate>
</asp:FormView>
</asp:Content>