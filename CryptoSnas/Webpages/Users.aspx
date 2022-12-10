<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="CryptoSnas.Webpages.Users" ClientIDMode="Static"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Forms.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="Q">Users</h2>
    <div class="Q">
            <br />
            Enter text to search name:
            <input type="text" value="" name="filter"/>
            <input type="button" value="Filter" name="btnFilter" id="btnFilter" runat="server" onserverclick="FilterByTextName" />
            <br />
            <br />
            <input type="submit" value="Add" name="btnAdd" id="add"/>
            <input type="button" value="Delete" name="delete" id="delete" runat="server" onserverclick="delete_click" />
            <input type="button" value="Edit" name="edit" id="edit" runat="server" onserverclick="edit_click" />
            <br />
            <br />

            <div runat="server" id="tableDiv" class="usersTable">
            </div>
            <br />
            <br />
            <br />
            <a href="Home.aspx" class="submit">Home</a>
    </div>
</asp:Content>