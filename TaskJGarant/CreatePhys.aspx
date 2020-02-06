<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="CreatePhys.aspx.cs" Inherits="TaskJGarant.CreatePhys" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
<asp:FormView runat="server" ID="addPersonForm"
    ItemType="TaskJGarant.Models.PhysPerson"
    InsertMethod="addPersonForm_InsertItem" DefaultMode="Insert"
    RenderOuterTable="false" OnItemInserted="addPersonForm_ItemInserted">
    <InsertItemTemplate>
        <fieldset>          
          <table>      
            <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="FirstNameInsertTextBox" 
                  Text="First Name" />:</b>
              </td>
              <td>
                <asp:textbox id="FirstNameInsertTextBox"
                  text='<%# Bind("FirstName") %>'
                  runat="server"/>
                
              </td>
            </tr>
              <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="LastNameInsertTextBox" 
                  Text="Last Name" />:</b>
              </td>
              <td>
                 <asp:textbox id="LastNameInsertTextBox"
                  text='<%# Bind("LastName") %>'
                  runat="server"/>
                
              </td>
            </tr>
             
            <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="MiddleNameInsertTextBox" 
                  Text="Middle Name" />:</b>
              </td>
              <td>
                <asp:textbox id="MiddleNameInsertTextBox"
                  text='<%# Bind("MiddleName") %>'
                  runat="server"/> 
              </td>
            </tr>
              <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="IINInsertTextBox" 
                  Text="IIN" />:</b>
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
                  AssociatedControlID="IdentificatorInsertTextBox" 
                  Text="Identificator" />:</b>
              </td>
              <td>
                <asp:textbox id="IdentificatorInsertTextBox"
                  text='<%# Bind("Identificator") %>'
                  runat="server"/> 
              </td>
            </tr>
              <tr>
              <td>
                <b><asp:Label runat="server" 
                  AssociatedControlID="AuthorInsertTextBox" 
                  Text="Created By" />:</b>
              </td>
              <td>
                <asp:textbox id="AuthorInsertTextBox"
                  text='<%# Bind("AuthorName") %>'
                  runat="server"/> 
              </td>
            </tr>
       
             <tr>
              
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