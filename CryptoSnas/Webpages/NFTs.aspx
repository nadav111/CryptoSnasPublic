<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="NFTs.aspx.cs" Inherits="CryptoSnas.Webpages.NFTs" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class=" titles">What is NFT?</h2>
    <p class="coin">
        NFT means Non-Fungible-Token. “Non-fungible” more or less means that it’s unique and can’t be replaced with something else.<br />
        For example, a bitcoin is fungible — trade one for another bitcoin, and you’ll have exactly the same thing.<br />
        A one-of-a-kind trading card, however, is non-fungible. If you traded it for a different card,<br />
        you’d have something completely different.<br /><br />
    </p>
    <h2 class="titles">How does it work?</h2>
    <p class="coin">
        At a very high level, most NFTs are part of the Ethereum blockchain.<br />
        Ethereum is a cryptocurrency, like bitcoin or dogecoin, but its blockchain also supports these NFTs,<br />
        which store extra information that makes them work differently from, say,<br />
        an ETH coin. It is worth noting that other blockchains can implement their own versions of NFTs.<br /><br />
    </p>
    <h2 class="titles">
        Where can I buy NFTs?
    </h2>
    <p class="coin">
        You can buy NFTs only on marketplaces. <br />
        There are a variety of marketplaces that support NFT purchases.<br />
        Top NFT marketplaces include OpenSea, Rarible, SuperRare, and Foundation.<br /><br />
    </p>
    <h2 class="titles">
        Where can I get NFTs?
    </h2>
    <p class="coin">
        Yes. There are a lot of marketplaces that you can mint there free NFTs.<br />
        The problem with this is that if you want to sell those NFTs you'll get pennies.<br /><br />
    </p>
    <h2 class="titles">
        There are a lot of collections that worth millions of dollars Like..
    </h2>
    <p class="coin">
        1) <a href="https://opensea.io/collection/boredapeyachtclub" class="link" target="_blank">Bored Ape Yacht Club</a><br />
        2) <a href="https://opensea.io/collection/cryptopunks" class="link" target="_blank">CryptoPunks</a><br />
        and more..
    </p>
    <img src="../Images/NFT.png" width="20%"/>

</asp:Content>
