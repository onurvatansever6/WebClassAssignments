<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Assignment.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource runat="server" ID="productsData1" ConnectionString="<%$ ConnectionStrings:AssignmentDBConnectionString %>" SelectCommand="SELECT [p_name], [p_material], [p_diameter] FROM [Products] WHERE p_id = 1"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="productsData2" ConnectionString="<%$ ConnectionStrings:AssignmentDBConnectionString %>" SelectCommand="SELECT [p_name], [p_material], [p_diameter] FROM [Products] WHERE p_id = 2"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="productsData3" ConnectionString="<%$ ConnectionStrings:AssignmentDBConnectionString %>" SelectCommand="SELECT [p_name], [p_material], [p_diameter] FROM [Products] WHERE p_id = 3"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="productsData4" ConnectionString="<%$ ConnectionStrings:AssignmentDBConnectionString %>" SelectCommand="SELECT [p_name], [p_material], [p_diameter] FROM [Products] WHERE p_id = 4"></asp:SqlDataSource>
    <div class="outerGrid" style="display:grid;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="productsData1">
        <ItemTemplate>
            <img src="https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126900-0001.png?impolicy=v6-upright&imwidth=420">
            <asp:Label Text='<%# Eval("p_name") %>' runat="server" ID="p_nameLabel1" />
            <asp:Label Text='<%# Eval("p_material") %>' runat="server" ID="p_materialLabel1" />
            <asp:Label Text='<%# Eval("p_diameter") %>' runat="server" ID="p_diameterLabel1" />
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList2" runat="server" DataSourceID="productsData2">
        <ItemTemplate>
            <img src="https://content.rolex.com/dam/2022/upright-bba-with-shadow/m126711chnr-0002.png?impolicy=v6-upright&imwidth=420">
            <asp:Label Text='<%# Eval("p_name") %>' runat="server" ID="p_nameLabel2" />
            <asp:Label Text='<%# Eval("p_material") %>' runat="server" ID="p_materialLabel2" />
            <asp:Label Text='<%# Eval("p_diameter") %>' runat="server" ID="p_diameterLabel2" />
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList3" runat="server" DataSourceID="productsData3">
        <ItemTemplate>
            <img src="https://content.rolex.com/dam/2022/upright-bba-with-shadow/m228236-0012.png?impolicy=v6-upright&imwidth=420">
            <asp:Label Text='<%# Eval("p_name") %>' runat="server" ID="p_nameLabel3" />
            <asp:Label Text='<%# Eval("p_material") %>' runat="server" ID="p_materialLabel3" />
            <asp:Label Text='<%# Eval("p_diameter") %>' runat="server" ID="p_diameterLabel3" />
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList4" runat="server" DataSourceID="productsData4">
        <ItemTemplate>
            <img src="https://content.rolex.com/dam/2022/upright-bba-with-shadow/m226658-0001.png?impolicy=v6-upright&imwidth=420">
            <asp:Label Text='<%# Eval("p_name") %>' runat="server" ID="p_nameLabel4" />
            <asp:Label Text='<%# Eval("p_material") %>' runat="server" ID="p_materialLabel4" />
            <asp:Label Text='<%# Eval("p_diameter") %>' runat="server" ID="p_diameterLabe4l" />
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>
