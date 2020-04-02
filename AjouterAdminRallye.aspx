<%@ Page Title="" Language="C#" MasterPageFile="~/App_Data/GestionAdminGeneral.master" AutoEventWireup="true" CodeFile="AjouterAdminRallye.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">



        <div style="width: 20%">


            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Se deconnecter</asp:LinkButton>


        </div>
        <div>
          

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionDesRallyesCN1 %>" SelectCommand="SELECT * FROM [AdminRallye]"></asp:SqlDataSource>
          

        </div>
         <div>
             <asp:DetailsView ID="DetailsView1" runat="server" Height="126px" Width="399px" AllowPaging="True" DataSourceID="SqlDataSource1" AutoGenerateRows="False">
                 <Fields>
                     <asp:BoundField DataField="LoginAdminRallye" HeaderText="LoginAdminRallye" SortExpression="LoginAdminRallye" />
                     <asp:BoundField DataField="MotDEPasse" HeaderText="MotDEPasse" SortExpression="MotDEPasse" />
                     <asp:BoundField DataField="NomAdmin" HeaderText="NomAdmin" SortExpression="NomAdmin" />
                     <asp:BoundField DataField="PrenomAdmin" HeaderText="PrenomAdmin" SortExpression="PrenomAdmin" />
                     <asp:BoundField DataField="DateNaissance" HeaderText="DateNaissance" SortExpression="DateNaissance" />
                 </Fields>
             </asp:DetailsView>
         </div>





    </form>

</asp:Content>

