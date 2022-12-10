<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CryptoSnas.Webpages.Home" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome">
        <h1>Welcome To My Crypto Blog!!</h1>
    </div>
    <br /><br /><br /><br />
    <div class="MainInfo">

        <h2 class="Q">What is crypto?</h2>

        <p class="p1">
            A cryptocurrency is a digital or virtual currency that is secured by cryptography,
            <br />
            which makes it nearly impossible to counterfeit or double-spend.
            <br />
            Many cryptocurrencies are decentralized networks based on blockchain technology,
            <br />
            a distributed ledger enforced by a disparate network of computers.
            <br />
            A defining feature of cryptocurrencies is that they are generally not issued by any central authority,
            <br />
            rendering them theoretically immune to government interference or manipulation.



        </p>
        <br /><br />
        <h2 class="Q">What is blockchain?</h2>
        <p class="p1">
            Blockchain is a shared,<br />
            immutable ledger for recording transactions,<br />
            tracking assets and building trust.<br />
        </p>
    </div>
</asp:Content>
