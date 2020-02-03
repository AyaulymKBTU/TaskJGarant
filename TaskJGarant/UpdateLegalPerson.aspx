<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="UpdateLegalPerson.aspx.cs" Inherits="TaskJGarant.UpdateLegalPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Edit" ItemType="TaskJGarant.Models.LegalPerson"
        DataKeyNames="ID" SelectMethod="GetLUPeople" UpdateMethod="legpeople_UpdateItem">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                       
                        <span><b>ID:</b>&nbsp;<%#:Item.ID %></span>
                        
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        
                        <span><b>Title Name:</b></span>
                      
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="Name" Text='<%# BindItem.TitleName %>' />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        
                        <span><b>Identificator:</b></span>
                        
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox2" Text='<%# BindItem.Identificator %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                       
                        <span><b>IIN/BIN:</b></span>
                        
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox3" Text='<%# BindItem.Iin_bin %>' />
                    </td>
                </tr>
                <tr>
                    
                    <td>
                       
                        <span><b>Created by:</b> &nbsp;</span> 
                        
                    </td>
                    <td><%#:Item.AuthorName %> at &nbsp;<%#:Item.CreateDate %></td>
                    
                </tr>
                <tr>
                    
                    <td>
                       
                        <span><b>Last Updated by:</b> &nbsp;</span> 
                        
                    </td>
                    <td>
                        <%#:Item.UpdaterName %> at &nbsp;<%#:Item.UpdateDate %>
                    </td>
                    
                </tr>               
            </table>
            <asp:Button ID="Button1" runat="server"
                CommandName="Update" Text="Save" />
        </EditItemTemplate>

    </asp:FormView>
    <%--<asp:CheckBoxList id="checkboxlist1" 
           AutoPostBack="True"
           CellPadding="5"
           CellSpacing="5"
           RepeatColumns="1"
           RepeatDirection="Vertical"
           RepeatLayout="Flow"
           TextAlign="Right"
           
           runat="server">
 
         <asp:ListItem>Item 1</asp:ListItem>
         <asp:ListItem>Item 2</asp:ListItem>
         <asp:ListItem>Item 3</asp:ListItem>
         <asp:ListItem>Item 4</asp:ListItem>
         <asp:ListItem>Item 5</asp:ListItem>
         <asp:ListItem>Item 6</asp:ListItem>
 
      </asp:CheckBoxList>--%>
</asp:Content>
