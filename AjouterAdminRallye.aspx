<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="AjouterAdminRallye.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">



        <div style="width: 20%">


            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Se deconnecter</asp:LinkButton>


        </div>
        <div>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionDesRallyesCN1 %>" SelectCommand="SELECT * FROM [AdminRallye]" InsertCommand="INSERT INTO [AdminRallye] ([LoginAdminRallye],[MotDEPasse],[NomAdmin],[PrenomAdmin]) VALUES (@LoginAdminRallye,@MotDEPasse,@NomAdmin,@PrenomAdmin)">
                <InsertParameters>
                    <asp:Parameter Name="LoginAdminRallye" Type="String" />
                    <asp:Parameter Name="MotDEPasse" Type="String" />
                    <asp:Parameter Name="NomAdmin" Type="String" />
                    <asp:Parameter Name="PrenomAdmin" Type="String" />       
                </InsertParameters>
            </asp:SqlDataSource>


        </div>
        <div style="margin: 0 auto;" >
            <asp:DetailsView  ID="DetailsView1" runat="server" Height="136px" Width="50%" AllowPaging="True" DataSourceID="SqlDataSource1" AutoGenerateRows="False" CellPadding="5" ForeColor="#333333" GridLines="None" CellSpacing="5" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="LoginAdminRallye" HeaderText="Login Admin Rallye" SortExpression="LoginAdminRallye"  />
                    <asp:BoundField DataField="MotDEPasse" HeaderText="Mot DE Passe" SortExpression="MotDEPasse" />
                    <asp:BoundField DataField="NomAdmin" HeaderText="Nom Admin" SortExpression="NomAdmin" />
                    <asp:BoundField DataField="PrenomAdmin" HeaderText="Prenom Admin" SortExpression="PrenomAdmin" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
        </div>





    </form>

</asp:Content>

