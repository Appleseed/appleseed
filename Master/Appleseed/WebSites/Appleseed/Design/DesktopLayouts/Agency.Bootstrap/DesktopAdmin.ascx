<%@ Control Language="c#" %>
<%@ Register Assembly="Appleseed.Framework.Core" Namespace="Appleseed.Framework.Web.UI.WebControls" TagPrefix="rbfwebui" %>
<%@ Register Assembly="Appleseed.Framework.Web.UI.WebControls" Namespace="Appleseed.Framework.Web.UI.WebControls" TagPrefix="rbfwebui" %>

<script runat="server">
    public string ContentContainerSelector;
    private void Page_Load(object sender, System.EventArgs e)
    {
        PortalHeaderMenu.DataBind();

        if (Appleseed.Framework.Security.PortalSecurity.IsInRoles("Admins"))
        {
            BarPanel.Visible = true;
        }
        else
        {
            UserPanel.Visible = true;
        }
    }

    protected override void OnPreRender(EventArgs e)
    {
        base.OnPreRender(e);
    }

   
</script>

<asp:Panel ID="BarPanel" runat="server" Visible="false">
    <nav class="navbar navbar-admin navbar-fixed-top navbar-shrink">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle admin-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span>Admin</span>
                </button>
                <a href="/1" class="navbar-brand">
                    <img alt='Appleseed' src='/Design/Themes/Agency.Bootstrap/images/brick.png' class='admin-logo' height='16' width='16' />AS
                </a>
                <ul id="left_admin_menu" class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="/100" class="dropdown-toggle"><span>Administration</span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/240">Site Settings</a></li>
                            <li><a href="/110">Page Manager</a></li>
                            <li><a href="/281">User Manager</a></li>
                            <li><a href="/155">File Manager</a></li>
                            <li><a href="/120">Global Modules</a></li>
                            <li><a href="/215">Recycle Bin</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-collapse collapse userMenu" id="bs-example-navbar-collapse-1">
                    <!-- begin User Menu at the Top of the Page -->
                    <rbfwebui:HeaderMenu ID="PortalHeaderMenu" runat="server"
                        CssClass="SiteLink" RepeatDirection="Horizontal" CellSpacing="0"
                        CellPadding="0" ShowHelp="False" ShowHome="False"
                        ShowLogon="true" ShowRegister="true" ShowDragNDrop="True"
                        DialogLogon="true" ShowLanguages="true" ShowFlags="true" ShowLangString="true">
                        <ItemStyle Wrap="False"></ItemStyle>
                        <ItemTemplate>
                            <%# Container.DataItem %>
                        </ItemTemplate>
                    </rbfwebui:HeaderMenu>
                    <!-- End User Menu -->
                </div>
                <!-- End Portal Menu -->
            </div>
        </div>
        <!-- /.container-fluid -->
    </nav>
</asp:Panel>
<asp:Panel ID="UserPanel" runat="server" Visible="false">
    <div id="as-not-admin-bar" class="navbar navbar-admin navbar-fixed-top navbar-shrink" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle admin-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span>Admin</span>
                </button>
                <div class="navbar-collapse collapse userMenu" id="bs-example-navbar-collapse-2">
                    <!-- begin User Menu at the Top of the Page -->
                    <rbfwebui:HeaderMenu ID="HeaderMenu2" runat="server"
                        CssClass="SiteLink" RepeatDirection="Horizontal" CellSpacing="0"
                        CellPadding="0" ShowHelp="False" ShowHome="False"
                        ShowLogon="true" ShowRegister="true" ShowDragNDrop="True"
                        DialogLogon="true" ShowLanguages="true" ShowFlags="true" ShowLangString="true">
                        <ItemStyle Wrap="False"></ItemStyle>
                        <ItemTemplate>
                            <%# Container.DataItem %>
                        </ItemTemplate>
                    </rbfwebui:HeaderMenu>
                    <!-- End User Menu -->
                </div>
            </div>
        </div>
    </div>
</asp:Panel>
