<%@ Page Title="" Language="C#" MasterPageFile="~/Master/CryptoSnasMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CryptoSnas.Webpages.Register" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/All.css" rel="stylesheet" />
    <link href="../CSS/CryptoList.css" rel="stylesheet" />
    <link href="../CSS/Forms.css" rel="stylesheet" />
    <link href="../CSS/Pages.css" rel="stylesheet" />
    <script src="../JavaScript/Register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="Form">Register</h1>
    <hr />
     <br /><br />
    <table id="tbl">
        <tr class="Form">
            <td class="Form">*UserName:</td>
            <td>
                <input type="text" placeholder="Enter UserName" id="UserName" name="UserName" onchange="UserNameValidation()" required>
            </td>
            <td>           </td>
            <td class="error">
                <label id="UserNameText"></label>
            </td>
        </tr>
        <tr class="Form">
            <td class="Form">*Password:</td>
            <td>
                <input type="text" placeholder="Enter Password" id="Password" name="Password" onchange="PasswordValidation()" required>
            </td>
            <td>           </td>
            <td class="error">
                <label id="PasswordText"></label>
            </td>
        </tr>
        <tr class="Form">
            <td class="Form">*Repeat Password:</td>
            <td>
                <input type="text" placeholder="Repeat Password" id="RepeatPassword" name="RepeatPassword" onchange="RepeatPasswordValidation()" required>
            </td>
            <td>           </td>
            <td class="error">
                <label id="RepeatPasswordText"></label>
            </td>
        </tr>
        <tr class="Form">
            <td class="Form">*First Name</td>
            <td>
                <input type="text" placeholder="Enter First Name" id="Fname" name="Fname" onchange="FirstNameValidation()" required>
            </td>
            <td>           </td>
            <td class="error">
                <label id="FnameText"></label>
            </td>
        </tr>
       <tr class="Form">
            <td class="Form">*Last Name:</td>
            <td>
                <input type="text" placeholder="Enter Last Name" id="LastName" name="LastName" onchange="LastNameValidation()" required>
            </td>
           <td>           </td>
            <td class="error">
                <label id="LastNameText"></label>
            </td>
        </tr>
               <tr class="Form">
            <td class="Form">*Birth:</td>
            <td>
                <input type="date" placeholder="Enter Birthday" id="Birth" name="Birth" required>
            </td>
           <td>           </td>
            <td class="error">
                <label id="BirthText"></label>
            </td>
        </tr>
        <tr class="Form">
            <td class="Form">*Phone:</td>
            <td>
                <input type="text" placeholder="Phone" id="Phone" name="Phone" onchange="PhoneValidation()" required>
            </td>
            <td>           </td>
            <td class="error">
                <label id="PhoneText"></label>
            </td>
        </tr>
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
        <tr class="Form">
            <td class="Form">Gender:</td>
            <td>
                <input type="radio" id="male" name="Gender" value="male" onchange="genderValidation()" required>
                <label>Male</label>
                <input type="radio" id="female" name="Gender" value="female" onchange="genderValidation()" required">
                <label>Female</label>
            </td>
            <td class="error">
                <label id="GenderText"></label>
            </td>
        </tr>
        <tr>
            <td>
                <button type="reset" class="submit">Reset</button>
                <button type="submit" name="submit" class="submit" onclick="validateForm()">Submit</button>
            </td>
        </tr>
     </table>
</asp:Content>
