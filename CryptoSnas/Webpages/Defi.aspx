<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Defi.aspx.cs" Inherits="CryptoSnas.Webpages.Defi" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2 class="titles">What is Defi?</h2>
    <p class="coin">
        DeFi (Decentralized finance) refers to financial applications built on blockchain technology<br />
        that enable digital transactions between multiple parties.<br />
        The blockchain is essentially a public ledger for digital assets, including cryptocurrencies.<br />
        DeFi can involve lending crypto, sending crypto, or investing crypto.<br />
        <br />
    </p>
        <h2 class="titles">
        DeFi is mainly used in the following areas:
        </h2>
    <p class="coin">
        Loans - providing and taking loans in digital currencies and accumulating interest profits,<br />
        depositing digital currency as collateral for loans in fiat money.<br />
        In fact, smart contracts dictate the terms of the loan,<br />
        link lenders and borrowers and regulate the distribution of interest.<br />
        Decentralization of trading venues and stock exchanges -<br />
        direct trading in digital assets without the need for a centralized stock exchange.<br />
        This is through the use of smart contracts.<br />
        Creating banking services such as mortgages in "stable" currency and insurance,<br />
        while taking advantage of digital currencies and without the disadvantage of volatility.<br />
    </p>
    <img src="../Images/Defi.png" width="20%" class="img"/>
    <h2 class="titles">
        Terra (LUNA)
    </h2>
    <p class="coin">
        Terra (LUNA) is a blockchain protocol that uses fiat-pegged stablecoins to power price-stable global payments systems.<br />
        According to its white paper, Terra combines the price stability and wide adoption of fiat currencies<br />
        with the censorship-resistance of Bitcoin (BTC) and offers fast and affordable settlements.<br />
        Development on Terra began in January 2018, and its mainnet officially launched in April 2019.<br />
        As of September 2021, it offers stablecoins pegged to the U.S. dollar, South Korean won,<br />
        Mongolian tugrik and the International Monetary Fund's Special Drawing Rights basket of currencies —<br />
        and it intends to roll out additional options.<br />
        Terra's native token, LUNA, is used to stabilize the price of the protocol's stablecoins.<br />
        LUNA holders are also able to submit and vote on governance proposals<br />
        giving it the functionality of a governance token.<br />
    </p>
    <img src="../Images/Terra-LUNA.png" width="10%"/>
    <h2 class="titles">
        Avalanche (AVAX)
    </h2>

    <p class="coin">
        Avalanche is a layer one blockchain that functions as a platform for decentralized applications and custom blockchain networks.<br />
        It is one of Ethereum’s rivals, aiming to unseat Ethereum as the most popular blockchain for smart contracts.<br />
        It aims to do so by having a higher transaction output of up to 6,500 transactions per second while not compromising scalability.<br />
        <br />
        After its mainnet launch in 2020, Avalanche has worked on developing its own ecosystem of DApps and DeFi.<br />
        Different Ethereum-based projects such as SushiSwap and TrueUSD have integrated with Avalanche.<br />
        Furthermore, the platform is constantly working on improving interoperability between its own ecosystem and Ethereum,<br />
        like through the development of bridges.<br />
    </p>
    <img src="../Images/avalanche-avax.png" width="10%"/>
    

</asp:Content>
