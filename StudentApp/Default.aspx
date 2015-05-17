    <%@ Page Title="Department of Computer Science" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <!--h2>Modify this template to jump-start your ASP.NET application.</h2-->
            </hgroup>
            <p>
                <mark>Mathematics</mark> is our life. <br />
                <mark>Learning</mark> is Living.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>This is an informational website about the department:</h3>
    <ol class="round">
        <li class="one">
            <h5>Check your grades</h5>
            You can check your assignment grades by clicking on the navigation for <mark>Student Grades</mark> page.
        </li>
        <li class="two">
            <h5>See courses offered</h5>
            <a href="Courses.aspx">Approved Courses</a>
        </li>
    </ol>
</asp:Content>
