 <%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="CurrencyExchangeRates.aspx.cs" Inherits="CryptoSnas.Webpages.CurrencyExchangeRates" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="Q">Currency exchange rates</h1>

    <div class="tradingview-widget-container">
    <div class="tradingview-widget-container__widget"></div>
    <div class="tradingview-widget-copyright"><a href="https://il.tradingview.com/markets/currencies/forex-cross-rates/" rel="noopener" target="_blank"><span class="blue-text"> שערי חליפין </span></a> מאת TradingView</div>
    <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-forex-cross-rates.js" async>
    {
    "width": "1200",
    "height": 400,
    "currencies": [
       "EUR",
       "USD",
       "GBP",
       "CAD",
       "CNY",
       "RUB",
       "ILS"
     ],
     "isTransparent": false,
    "colorTheme": "dark",
     "locale": "he_IL"
    }
    </script>
    </div>

</asp:Content>
