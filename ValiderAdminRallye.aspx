<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="ValiderAdminRallye.aspx.cs" Inherits="ValiderAdminRallye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div style="width: 20%">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Se Deconnecter
            </asp:LinkButton>
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionDesRallyesCn1 %>" SelectCommand="SELECT * FROM [TempAdminRallye]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="80%" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="LoginAdminRallye"  OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="LoginAdminRallye" HeaderText="Login Admin Rallye" ReadOnly="True" SortExpression="LoginAdminRallye" />
                <asp:BoundField DataField="MotDEPasse" HeaderText="Mot DE Passe" SortExpression="MotDEPasse" />
                <asp:BoundField DataField="NomAdmin" HeaderText="Nom Admin" SortExpression="NomAdmin" />
                <asp:BoundField DataField="PrenomAdmin" HeaderText="Prenom Admin" SortExpression="PrenomAdmin" />
                <asp:BoundField DataField="DateNaissance" HeaderText="Date Naissance" SortExpression="DateNaissance" />
                <asp:ButtonField  HeaderText="Statut" ShowHeader="True" Text="Accepter" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <div style="text-align:center;">

            <asp:Button ID="Button1" runat="server" Text="Valider" Width="40%" BackColor="#33CCFF" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" />

        </div>

    </form>
</asp:Content>

