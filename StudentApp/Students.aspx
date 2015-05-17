<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="StudentApp.Students" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="studentsGrid"
        ItemType="StudentApp.Models.Student" DataKeyNames="StudentID" 
        SelectMethod="studentsGrid_GetData"
        AutoGenerateColumns="false">
        <Columns>
            <asp:DynamicField DataField="StudentID" /> 
            <asp:DynamicField DataField="LastName" />
            <asp:DynamicField DataField="FirstName" />
            <asp:DynamicField DataField="Assignment1" />
            <asp:DynamicField DataField="Assignment2" />
            <asp:DynamicField DataField="Assignment3" />
            <asp:TemplateField HeaderText="Grade Average">
              <ItemTemplate>
                <asp:Label ID="Label1" Text="<%# (Item.Assignment1 + Item.Assignment2 + Item.Assignment3)/3 %>" 
                    runat="server" />
              </ItemTemplate>
            </asp:TemplateField>          
        </Columns>
    </asp:GridView>
</asp:Content>
