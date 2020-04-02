<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/Principale.master" AutoEventWireup="true" CodeFile="AdminGeneraL.aspx.cs" Inherits="AdminGeneraL" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 199px;
        }
    .auto-style2 {
        height: 26px;
    }
    .auto-style3 {
        width: 199px;
        height: 26px;
    }
    .auto-style4 {
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div>
            <h3 style="text-align: center; margin-top: 5%; height: 39px;">Connexion de l'administrateur Général</h3>
            <div style="width: 50%; margin: auto;">
                <fieldset>
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <label for="tnom">Login de l'adiministrateur:</label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="Tnom" runat="server" Width="260px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <label for="Tpass">Mot de Passe:</label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="Tpass" runat="server" TextMode="Password" Width="260px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">

                                <asp:Button ID="Button1" runat="server" Text="Valider" OnClick="Button1_Click" Width="155px" />

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;" class="auto-style4">

                                <asp:Label ID="Label2" runat="server" Text="Mot de Passe ou Login Incorrect" ForeColor="#CC3300" Visible="False"></asp:Label>

                            </td>
                        </tr>
                    </table>

                </fieldset>
            </div>

        </div>
    </form>
</asp:Content>

