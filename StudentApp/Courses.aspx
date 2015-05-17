<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="StudentApp.Courses" MasterPageFile="~/Site.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="coursesGrid"
        ItemType="StudentApp.Models.Course" DataKeyNames="CourseID" 
        SelectMethod="coursesGrid_GetData"
        AutoGenerateColumns="false">
        <Columns>
            <asp:DynamicField DataField="Title" />
            <asp:DynamicField DataField="Credits" />        
        </Columns>
    </asp:GridView>
</asp:Content>
