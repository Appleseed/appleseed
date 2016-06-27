<%@ Control Language="c#" %>

<%@ Register Assembly="Appleseed.Framework.Core" Namespace="Appleseed.Framework.Web.UI.WebControls" TagPrefix="rbfwebui" %>
<%@ Register Assembly="Appleseed.Framework.Web.UI.WebControls" Namespace="Appleseed.Framework.Web.UI.WebControls" TagPrefix="rbfwebui" %>
<script runat="server">
    private void Page_Load( object sender, System.EventArgs e ) {
        PortalHeaderMenu.DataBind();
    PortalTitle.DataBind();
        PortalImage.DataBind();
    }
</script>

<div id="header"> 
  
    <!--<div class="fl_left">-->
      <!-- Portal Title -->
        <!--<h1><rbfwebui:headertitle id="PortalTitle" runat="server" cssclass="SiteTitle" enableviewstate="false"></rbfwebui:headertitle></h1>-->
      <!-- End Portal Title -->
    <!--</div>
    <div class="fl_right">
      <a href="#"><img src="/Design/Themes/Appleseed.One.Theme/images/demo/468x60.gif" alt="" /></a>
    </div>-->
    
    <!-- 960 Container -->
    <div class="container">
  
        <div class="userMenu">
          <!-- begin User Menu at the Top of the Page -->
          <rbfwebui:HeaderMenu   ID="PortalHeaderMenu" runat="server" 
              CssClass="SiteLink" RepeatDirection="Horizontal" cellspacing="0"
              CellPadding="0" ShowHelp="False" ShowHome="False" 
              ShowLogon="true" ShowRegister="true" ShowDragNDrop="True">
            <ItemStyle Wrap="False"></ItemStyle>
            <ItemTemplate>
              <!-- used to stylize the left border ex: border with images-->
                <div class="SiteLink_Border_Left"></div>
              <!-- End left border -->
                <div class="SiteLink_bg">
                  <span class="SiteLink">
                    <%# Container.DataItem %>
                  </span>
                </div>
              <!-- used to stylize the right border-->
                <div class="SiteLink_Border_Right"></div>
              <!-- End right border -->
            </ItemTemplate>
            <SeparatorTemplate>
              <span class="SiteLink">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
            </SeparatorTemplate>
          </rbfwebui:HeaderMenu>
        </div>
        <!-- End User Menu -->
        
        <!-- Logo -->
        <div class="four columns">
            <div id="logo">
                <!-- Portal Logo Image Uploaded-->
                    <rbfwebui:headerimage id="PortalImage" runat="server" enableviewstate="false"/>
                <!-- End Portal Logo-->
            </a></div>
        </div><!-- end Logo -->
    
        <div id="topbar">
          <!-- Begin Portal Menu -->
            <div id="navigation">
                <asp:Menu   ID="biMenu"  runat="server" 
                      DataSourceID="biSMDS" 
                      Orientation="Horizontal"
                      CssClass="menu" 
                      DynamicEnableDefaultPopOutImage="False" 
                      StaticEnableDefaultPopOutImage="False">                                
                </asp:Menu>
            </div>
          <!-- End Portal Menu -->
        </div>
        
    </div><!-- end 960 Container -->

</div><!-- end #header -->

<asp:SiteMapDataSource ID="biSMDS" ShowStartingNode="false" runat="server" />