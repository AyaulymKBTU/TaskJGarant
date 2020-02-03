<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="UpdatePerson.aspx.cs" Inherits="TaskJGarant.UpdatePerson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Edit" ItemType="TaskJGarant.Models.PhysPerson"
        DataKeyNames="ID" SelectMethod="GetPUPeople" UpdateMethod="physpeople_UpdateItem">
        <EditItemTemplate>
            <table>
                <tr>
                    <td>
                       
                        <span><b>ID:</b>&nbsp;<%#:Item.ID %></span>
                        
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        
                        <span><b>First Name:</b></span>
                      
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="Name" Text='<%# BindItem.FirstName %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <span><b>Middle Name:</b></span>
                        
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="MidName" Text='<%# BindItem.MiddleName %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                       
                        <span><b>Last Name:</b></span>
                        
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBox1" Text='<%# BindItem.LastName %>' />
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

</asp:Content>
