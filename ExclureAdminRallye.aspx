<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="ExclureAdminRallye.aspx.cs" Inherits="ExclureAdminRallye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form1" runat="server">
        <div style="width: 20%">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Se  deconnecter</asp:LinkButton>

        </div>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LoginAdminRallye" DataSourceID="SqlDataSource1" Width="90%" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="LoginAdminRallye" HeaderText="Login Admin Rallye" SortExpression="LoginAdminRallye" />
                <asp:BoundField DataField="MotDEPasse" HeaderText="Mot DE Passe" SortExpression="MotDEPasse" />
                <asp:BoundField DataField="NomAdmin" HeaderText="Nom Admin" SortExpression="NomAdmin" />
                <asp:BoundField DataField="PrenomAdmin" HeaderText="Prenom Admin" SortExpression="PrenomAdmin" />
                <asp:BoundField DataField="DateNaissance" HeaderText="Date Naissance" SortExpression="DateNaissance" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionDesRallyesCn1 %>" SelectCommand="SELECT * FROM [AdminRallye]" DeleteCommand="DELETE FROM [AdminRallye] WHERE [LoginAdminRallye] = @LoginAdminRallye">
            <DeleteParameters>
                <asp:Parameter Name="LoginAdminRallye" Type="String" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

