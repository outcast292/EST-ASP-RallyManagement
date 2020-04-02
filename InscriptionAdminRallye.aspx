<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/Principale.master" AutoEventWireup="true" CodeFile="InscriptionAdminRallye.aspx.cs" Inherits="InscriptionAdminRallye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h1>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionDesRallyesCn1 %>" InsertCommand="INSERT INTO [TempAdminRallye] ([LoginAdminRallye], [MotDEPasse], [NomAdmin], [PrenomAdmin], [DateNaissance]) VALUES (@LoginAdminRallye, @MotDEPasse, @NomAdmin, @PrenomAdmin, @DateNaissance)">
                    <InsertParameters>
                        <asp:ControlParameter Name="LoginAdminRallye" ControlID="lg" Type="String" />
                        <asp:ControlParameter Name="MotDEPasse" ControlID="mp" Type="String" />
                        <asp:ControlParameter Name="NomAdmin" ControlID="nom" Type="String" />
                        <asp:ControlParameter Name="PrenomAdmin" ControlID="pre" Type="String" />
                        <asp:ControlParameter Name="DateNaissance" ControlID="dtns" Type="DateTime" />
                    </InsertParameters>
                </asp:SqlDataSource>
                Inscription d'un Administrateur de Rallye</h1>

            <div>

                <asp:Label ID="Label2" runat="server" Text="Il faut remplire tous les champs" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>

            </div>
            <div style="width: 80%; margin: auto;">

                <fieldset>
                    <table style="width: 568px;">
                        <tr>
                            <td style="width=40%">
                                <label>Nom: </label>
                            </td>
                            <td>

                                <asp:TextBox ID="nom" runat="server"></asp:TextBox>

                            </td>
                            <td class="auto-style1"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Prénom: </label>
                            </td>
                            <td>

                                <asp:TextBox ID="pre" runat="server"></asp:TextBox>

                            </td>
                            <td class="auto-style1"></td>
                            <td></td>

                        </tr>
                        <tr>
                            <td>
                                <label>Date de Naissance: </label>
                            </td>
                            <td>

                                <asp:TextBox ID="dtns" runat="server"></asp:TextBox>

                            </td>
                            <td class="auto-style1">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="..." />
                            </td>

                            <td>

                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Login: </label>
                            </td>
                            <td>

                                <asp:TextBox ID="lg" runat="server"></asp:TextBox>

                            </td>
                            <td class="auto-style1"></td>

                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <label>Mot de Passe: </label>
                            </td>
                            <td>

                                <asp:TextBox ID="mp" runat="server"></asp:TextBox>

                            </td>
                            <td class="auto-style1"></td>

                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="4">

                                <asp:Button ID="Button2" runat="server" Text="Valider" Width="60%" OnClick="Button2_Click" />

                            </td>
                        </tr>
                    </table>
                </fieldset>
            </div>

        </div>
    </form>
</asp:Content>

