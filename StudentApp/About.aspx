<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="StudentApp.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Student App</h2>
    </hgroup>

    <article>
        <p>        
            This app displays the basic functionality of fetching Student Grades and Courses data from database to WebForms page.
        </p>
        <p>
            See the code for this Website at
            <a href="https://github.com/aditya-wate/StudentApp">Github</a>
        </p>
        
    </article>

    <aside>
        <h3>Navigation</h3>
        <p>        
            Utilities.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a id="A1" runat="server" href="Students.aspx">Student Grades</a></li>
            <li><a id="A2" runat="server" href="Courses.aspx">Courses</a></li>
            <li><a runat="server" href="~/About">About</a></li>
            <li><a runat="server" href="~/Contact">Contact</a></li>
        </ul>
    </aside>
</asp:Content>