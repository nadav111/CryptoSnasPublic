<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CryptoSnas.Webpages.ForgotPassword" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Forms.css" rel="stylesheet" />
    <script src="../JavaScript/Register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="Q">Forgot Password</h1>
    <table>
            <tr class="Form">
            <td class="Form">*Gmail:</td>
            <td>
                <input type="text" placeholder="Enter Gmail" id="Gmail" name="Gmail" onchange="GmailValidation()" required>
            </td>
            <td>           </td>
            <td class="error">
                <label id="GmailText"></label>
            </td>
        </tr>
    </table>

                <button type="reset" class="submit">Reset</button>
                <button type="submit" class="submit" onclick="GmailValidation()">Submit</button>
</asp:Content>
