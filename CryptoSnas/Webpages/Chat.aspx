<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="CryptoSnas.Webpages.Chat" ClientIDMode="Static"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>FRIDAY CHATBOT</title>
    <style>
        #chatLog{text-align: center;}
        h2 {text-align: center;}
    </style>
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <script src="../JavaScript/Chat.js"></script>
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <link href="../CSS/Chat.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 id="chatLog" class="Q">Hello!!! I am Snas!! your personal chatbot!<br></h1>
        <div style="text-align: center;" class="text">
            <input id="userBox" type="text" class="text" onkeydown="if(event.keyCode == 13){talk()}">
        </div>
        <h2 class="Q">I know how to play rock paper scissors<br />
        Ask me some questions!</h2>
</asp:Content>