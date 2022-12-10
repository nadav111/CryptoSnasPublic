<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CryptoSnas.Webpages.Login" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Forms.css" rel="stylesheet" />
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <script src="../JavaScript/Login.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="Form">Login</h1>
    <hr />
     <br /><br />
      <table id="tbl">
            <tr class="Form">
                <td class="Form">UserName:</td>
                <td>
                    <input type="text" placeholder="Enter UserName" id="UserName" name="UserName" onchange="UserNameValidation()" required>
                </td>
                <td>           </td>
                <td id="UserNameText" name="UserNameText" class="error"></td>
            </tr>
            <tr class="Form">
                <td class="Form">Password:</td>
                <td>
                     <input type="text" placeholder="Enter Password" id="Password" name="Password" onchange="PasswordValidation()" required>
               </td>
               <td>           </td>
               <td id="PasswordText" name="PasswordText" class="error"></td>
        </tr>
        </table>
                <button type="reset" class="submit">Reset</button>
                <button type="submit" class="submit" onclick="validateForm()" runat="server">Submit</button>
        <div id="msg" runat="server" class="Q"></div>
</asp:Content>
