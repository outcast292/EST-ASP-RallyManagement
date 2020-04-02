<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="ModifierAdminRallye.aspx.cs" Inherits="ModifierAdminRallye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div style="width: 20%">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Se  deconnecter</asp:LinkButton>

        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionDesRallyesCn1 %>" SelectCommand="SELECT * FROM [AdminRallye]" UpdateCommand="UPDATE [AdminRallye] SET  [MotDEPasse]=@MotDEPasse,[NomAdmin]=@NomAdmin,[PrenomAdmin]=@PrenomAdmin  WHERE  [LoginAdminRallye]=@LoginAdminRallye ">
            <UpdateParameters>
                <asp:Parameter Name="LoginAdminRallye" Type="String" />
                <asp:Parameter Name="MotDEPasse" Type="String" />
                <asp:Parameter Name="NomAdmin" Type="String" />
                <asp:Parameter Name="PrenomAdmin" Type="String" />
            </UpdateParameters>

        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LoginAdminRallye" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="80%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="LoginAdminRallye" HeaderText="LoginAdminRallye" ReadOnly="True" SortExpression="LoginAdminRallye" />
                <asp:BoundField DataField="MotDEPasse" HeaderText="MotDEPasse" SortExpression="MotDEPasse" />
                <asp:BoundField DataField="NomAdmin" HeaderText="NomAdmin" SortExpression="NomAdmin" />
                <asp:BoundField DataField="PrenomAdmin" HeaderText="PrenomAdmin" SortExpression="PrenomAdmin" />
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
    </form>
</asp:Content>

