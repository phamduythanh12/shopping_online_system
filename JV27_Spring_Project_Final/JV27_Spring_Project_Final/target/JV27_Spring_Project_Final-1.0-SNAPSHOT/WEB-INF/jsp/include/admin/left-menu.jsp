<%-- 
    Document   : left-menu
    Created on : Mar 16, 2019, 12:27:34 AM
    Author     : ThuAnh
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="index.html"><img class="main-logo" src="<c:url value="/resources/admin/img/logo/logo.png"/>" alt="" /></a>
                <strong><img src="<c:url value="/resources/admin/img/logo/logosn.png"/>" alt="" /></strong>
            </div>
			<div class="nalika-profile">
				<div class="profile-dtl">
                                    <a href="#"><img src="<c:url value="/resources/admin/img/notification/4.jpg"/>" alt="" /></a>
					<h2>Lakian <span class="min-dtn">Das</span></h2>
				</div>
				<div class="profile-social-dtl">
					<ul class="dtl-social">
						<li><a href="#"><i class="icon nalika-facebook"></i></a></li>
						<li><a href="#"><i class="icon nalika-twitter"></i></a></li>
						<li><a href="#"><i class="icon nalika-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li class="active">
                            <a class="has-arrow" href="index.html">
		<i class="icon nalika-home icon-wrap"></i>
		 <span class="mini-click-non">Ecommerce</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li><a title="Home" href="home.jsp"><span class="mini-sub-pro">Home</span></a></li>
                                <li><a title="Product List" href="product-list.html"><span class="mini-sub-pro">Product List</span></a></li>
                                <li><a title="Product Edit" href="product-edit.html"><span class="mini-sub-pro">Product Edit</span></a></li>
                                <li><a title="Product Detail" href="product-detail.html"><span class="mini-sub-pro">Product Detail</span></a></li>
                                <li><a title="Product Cart" href="product-cart.html"><span class="mini-sub-pro">Product Cart</span></a></li>
                                <li><a title="Product Payment" href="product-payment.html"><span class="mini-sub-pro">Product Payment</span></a></li>
                                <li><a title="Analytics" href="analytics.html"><span class="mini-sub-pro">Analytics</span></a></li>
                                <li><a title="Widgets" href="widgets.html"><span class="mini-sub-pro">Widgets</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-mail icon-wrap"></i> <span class="mini-click-non">Mailbox</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Inbox" href="mailbox.html"><span class="mini-sub-pro">Inbox</span></a></li>
                                <li><a title="View Mail" href="mailbox-view.html"><span class="mini-sub-pro">View Mail</span></a></li>
                                <li><a title="Compose Mail" href="mailbox-compose.html"><span class="mini-sub-pro">Compose Mail</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-diamond icon-wrap"></i> <span class="mini-click-non">Interface</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Google Map" href="google-map.html"><span class="mini-sub-pro">Google Map</span></a></li>
                                <li><a title="Data Maps" href="data-maps.html"><span class="mini-sub-pro">Data Maps</span></a></li>
                                <li><a title="Pdf Viewer" href="pdf-viewer.html"><span class="mini-sub-pro">Pdf Viewer</span></a></li>
                                <li><a title="X-Editable" href="x-editable.html"><span class="mini-sub-pro">X-Editable</span></a></li>
                                <li><a title="Code Editor" href="code-editor.html"><span class="mini-sub-pro">Code Editor</span></a></li>
                                <li><a title="Tree View" href="tree-view.html"><span class="mini-sub-pro">Tree View</span></a></li>
                                <li><a title="Preloader" href="preloader.html"><span class="mini-sub-pro">Preloader</span></a></li>
                                <li><a title="Images Cropper" href="images-cropper.html"><span class="mini-sub-pro">Images Cropper</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-pie-chart icon-wrap"></i> <span class="mini-click-non">Miscellaneous</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="File Manager" href="file-manager.html"><span class="mini-sub-pro">File Manager</span></a></li>
                                <li><a title="Blog" href="blog.html"><span class="mini-sub-pro">Blog</span></a></li>
                                <li><a title="Blog Details" href="blog-details.html"><span class="mini-sub-pro">Blog Details</span></a></li>
                                <li><a title="404 Page" href="404.html"><span class="mini-sub-pro">404 Page</span></a></li>
                                <li><a title="500 Page" href="500.html"><span class="mini-sub-pro">500 Page</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-bar-chart icon-wrap"></i> <span class="mini-click-non">Charts</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Bar Charts" href="bar-charts.html"><span class="mini-sub-pro">Bar Charts</span></a></li>
                                <li><a title="Line Charts" href="line-charts.html"><span class="mini-sub-pro">Line Charts</span></a></li>
                                <li><a title="Area Charts" href="area-charts.html"><span class="mini-sub-pro">Area Charts</span></a></li>
                                <li><a title="Rounded Charts" href="rounded-chart.html"><span class="mini-sub-pro">Rounded Charts</span></a></li>
                                <li><a title="C3 Charts" href="c3.html"><span class="mini-sub-pro">C3 Charts</span></a></li>
                                <li><a title="Sparkline Charts" href="sparkline.html"><span class="mini-sub-pro">Sparkline Charts</span></a></li>
                                <li><a title="Peity Charts" href="peity.html"><span class="mini-sub-pro">Peity Charts</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">Data Tables</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Peity Charts" href="static-table.html"><span class="mini-sub-pro">Static Table</span></a></li>
                                <li><a title="Data Table" href="data-table.html"><span class="mini-sub-pro">Data Table</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-forms icon-wrap"></i> <span class="mini-click-non">Forms Elements</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Basic Form Elements" href="basic-form-element.html"><span class="mini-sub-pro">Bc Form Elements</span></a></li>
                                <li><a title="Advance Form Elements" href="advance-form-element.html"><span class="mini-sub-pro">Ad Form Elements</span></a></li>
                                <li><a title="Password Meter" href="password-meter.html"><span class="mini-sub-pro">Password Meter</span></a></li>
                                <li><a title="Multi Upload" href="multi-upload.html"><span class="mini-sub-pro">Multi Upload</span></a></li>
                                <li><a title="Text Editor" href="tinymc.html"><span class="mini-sub-pro">Text Editor</span></a></li>
                                <li><a title="Dual List Box" href="dual-list-box.html"><span class="mini-sub-pro">Dual List Box</span></a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-smartphone-call icon-wrap"></i> <span class="mini-click-non">App views</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Notifications" href="notifications.html"><span class="mini-sub-pro">Notifications</span></a></li>
                                <li><a title="Alerts" href="alerts.html"><span class="mini-sub-pro">Alerts</span></a></li>
                                <li><a title="Modals" href="modals.html"><span class="mini-sub-pro">Modals</span></a></li>
                                <li><a title="Buttons" href="buttons.html"><span class="mini-sub-pro">Buttons</span></a></li>
                                <li><a title="Tabs" href="tabs.html"><span class="mini-sub-pro">Tabs</span></a></li>
                                <li><a title="Accordion" href="accordion.html"><span class="mini-sub-pro">Accordion</span></a></li>
                            </ul>
                        </li>
                        <li id="removable">
                            <a class="has-arrow" href="#" aria-expanded="false"><i class="icon nalika-new-file icon-wrap"></i> <span class="mini-click-non">Pages</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Login" href="login.html"><span class="mini-sub-pro">Login</span></a></li>
                                <li><a title="Register" href="register.html"><span class="mini-sub-pro">Register</span></a></li>
                                <li><a title="Lock" href="lock.html"><span class="mini-sub-pro">Lock</span></a></li>
                                <li><a title="Password Recovery" href="password-recovery.html"><span class="mini-sub-pro">Password Recovery</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
                                        <!-- jquery
		============================================ -->
    <script src="<c:url value="/resources/admin/js/vendor/jquery-1.12.4.min.js"/>"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/bootstrap.min.js"/>"></script>
    <!-- wow JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/wow.min.js"/>"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/jquery-price-slider.js"/>"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/jquery.meanmenu.js"/>"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/owl.carousel.min.js"/>"></script>
    <!-- sticky JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/jquery.sticky.js"/>"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/jquery.scrollUp.min.js"/>"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/metisMenu/metisMenu.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/metisMenu/metisMenu-active.js"/>"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/sparkline/jquery.sparkline.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/sparkline/jquery.charts-sparkline.js"/>"></script>
    <!-- calendar JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/calendar/moment.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/calendar/fullcalendar.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/calendar/fullcalendar-active.js"/>"></script>
	<!-- float JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/flot/jquery.flot.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/flot/jquery.flot.resize.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/flot/jquery.flot.pie.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/flot/jquery.flot.tooltip.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/flot/jquery.flot.orderBars.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/flot/curvedLines.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/flot/flot-active.js"/>"></script>
    <!-- plugins JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/plugins.js"/>"></script>
    <!-- main JS
		============================================ -->
    <script src="<c:url value="/resources/admin/js/main.js"/>"></script>
