<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Stocks.aspx.cs" Inherits="CryptoSnas.Webpages.WebForm1" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="Q">Stocks</h1>

<div class="tradingview-widget-container">
  <div class="tradingview-widget-container__widget"></div>
  <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/markets/indices/" rel="noopener" target="_blank"><span class="blue-text">Indices</span></a>, <a href="https://www.tradingview.com/markets/futures/" rel="noopener" target="_blank"><span class="blue-text">Futures</span></a> <span class="blue-text">and</span> <a href="https://www.tradingview.com/markets/bonds/" rel="noopener" target="_blank"><span class="blue-text">Bonds</span></a> by TradingView</div>
  <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-market-quotes.js" async>
  {
  "width": "1400",
  "height": "600",
  "symbolsGroups": [
    {
      "name": "Indices",
      "originalName": "Indices",
      "symbols": [
        {
          "name": "FOREXCOM:SPXUSD",
          "displayName": "S&P 500"
        },
        {
          "name": "FOREXCOM:NSXUSD",
          "displayName": "US 100"
        },
        {
          "name": "FOREXCOM:DJI",
          "displayName": "Dow 30"
        },
        {
          "name": "INDEX:NKY",
          "displayName": "Nikkei 225"
        },
        {
          "name": "INDEX:DEU40",
          "displayName": "DAX Index"
        },
        {
          "name": "NASDAQ:TSLA",
          "displayName": "Tesla"
        },
        {
          "name": "NASDAQ:NVDA",
          "displayName": "Nvidia"
        },
        {
          "name": "NASDAQ:AMZN",
          "displayName": "Amazon"
        },
        {
          "name": "NASDAQ:AMD",
          "displayName": "AMD"
        },
        {
          "name": "NASDAQ:FB",
          "displayName": "FaceBook"
        },
        {
          "name": "NASDAQ:MSFT",
          "displayName": "Microsoft"
        },
        {
          "name": "NASDAQ:NFLX",
          "displayName": "Netflix"
        }
      ]
    },
    {
      "name": "Futures",
      "originalName": "Futures",
      "symbols": [
        {
          "name": "CME_MINI:ES1!",
          "displayName": "S&P 500"
        },
        {
          "name": "CME:6E1!",
          "displayName": "Euro"
        },
        {
          "name": "COMEX:GC1!",
          "displayName": "Gold"
        },
        {
          "name": "NYMEX:CL1!",
          "displayName": "Crude Oil"
        },
        {
          "name": "NYMEX:NG1!",
          "displayName": "Natural Gas"
        },
        {
          "name": "CBOT:ZC1!",
          "displayName": "Corn"
        }
      ]
    },
    {
      "name": "Bonds",
      "originalName": "Bonds",
      "symbols": [
        {
          "name": "CME:GE1!",
          "displayName": "Eurodollar"
        },
        {
          "name": "CBOT:ZB1!",
          "displayName": "T-Bond"
        },
        {
          "name": "CBOT:UB1!",
          "displayName": "Ultra T-Bond"
        },
        {
          "name": "EUREX:FGBL1!",
          "displayName": "Euro Bund"
        },
        {
          "name": "EUREX:FBTP1!",
          "displayName": "Euro BTP"
        },
        {
          "name": "EUREX:FGBM1!",
          "displayName": "Euro BOBL"
        }
      ]
    }
  ],
  "showSymbolLogo": true,
  "colorTheme": "dark",
  "isTransparent": false,
  "locale": "en"
}
  </script>
</div>
</asp:Content>
