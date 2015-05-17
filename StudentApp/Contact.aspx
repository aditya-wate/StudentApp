<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StudentApp.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Website Admin contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>XXX.XXX.XXXX</span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:aditya.wate@theuniversity.edu">aditya.wate@theuniversity.edu</a></span>
        </p>

    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            75 St. Botolph Street<br />
            Boston, MA 02120
        </p>
    </section>
</asp:Content>