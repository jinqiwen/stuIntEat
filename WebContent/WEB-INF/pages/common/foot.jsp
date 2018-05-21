<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
					<!-- content ends -->
			<!--/#content.span10-->
			<!--/fluid-row-->
		
	<!-- 	<footer>
			<p class="pull-left">&copy; <a href="#" target="_blank">bdqn</a> 2014</p>
			<p class="pull-right">Powered by: <a href="#">北大青鸟</a></p>
		</footer> -->
		
	<!--/.fluid-container-->
   <!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script>
		<%-- <script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script> --%>
    <script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
    <!-- rich text editor library -->
	<script src="${pageContext.request.contextPath}/statics/js2/jquery-ui.min.js"></script>
	<!-- notification plugin -->
	<script src="${pageContext.request.contextPath}/statics/js2/jquery.cookie.js"></script>
	<!-- file manager library -->
	<script src="${pageContext.request.contextPath}/statics/js2/jquery.easing.1.3.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js2/charisma.js"></script> 
	<!-- add by bdqn_hl 2013-2-27 end-->
	<!-- add by bdqn_hl 2013-3-17 start WdatePicker plugin-->

	<!-- add by bdqn_hl 2013-3-17 end-->
	<!--  新引入 -->
	<!-- 华丽丽滴分割线 北大青鸟 end 2014 -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.animator.min.js"></script>
	<!-- jQuery UI -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.js"></script>
	<!-- transition / effect library -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.orderBar.js"></script>
	<!-- alert enhancer library -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.pie.min.js"></script>
	<!-- modal / dialog library -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.resize.min.js"></script>
	<!-- custom dropdown library -->
	<script src="${pageContext.request.contextPath}/statics/js2/file-manager/elfinder.min.js"></script>
	<!-- scrolspy library -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts/jquery.flot.animator.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/maps/jvectormap.min.js"></script>
	<!-- library for creating tabs -->
	<script src="${pageContext.request.contextPath}/statics/js2/maps/usa.js"></script>
	<!-- library for advanced tooltip -->
	<script src="${pageContext.request.contextPath}/statics/js2/maps/world.js"></script>
	<!-- popover effect library -->
	<script src="${pageContext.request.contextPath}/statics/js2/validation/validate.min.js"></script>
	<!-- button enhancer library -->
	<script src="${pageContext.request.contextPath}/statics/js2/validation/validationEngine.min.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="${pageContext.request.contextPath}/statics/js2/autosize.min.js"></script>
	
	<!-- autocomplete library -->
	<script src="${pageContext.request.contextPath}/statics/js2/calendar.min.js"></script>
	<!-- tour library -->
	<script src="${pageContext.request.contextPath}/statics/js2/charts.js"></script>
	<!-- library for cookie management -->
	<script src="${pageContext.request.contextPath}/statics/js2/chosen.min.js"></script>
	<!-- calander plugin -->
	<script src="${pageContext.request.contextPath}/statics/js2/colorpicker.min.js"></script>
	<!-- data table plugin -->
	<script src="${pageContext.request.contextPath}/statics/js2/datetimepicker.min.js"></script>

	<!-- chart libraries start -->
	<script src="${pageContext.request.contextPath}/statics/js2/easypiechart.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/editor.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/editor2.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/feeds.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/fileupload.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/ajaxfileupload.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="${pageContext.request.contextPath}/statics/js2/functions.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="${pageContext.request.contextPath}/statics/js2/icheck.js"></script>
	<!-- plugin for gallery image view -->
	<script src="${pageContext.request.contextPath}/statics/js2/input-mask.min.js"></script>
	
	<!-- star rating plugin -->
	<script src="${pageContext.request.contextPath}/statics/js2/markdown.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="${pageContext.request.contextPath}/statics/js2/media-player.min.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="${pageContext.request.contextPath}/statics/js2/pirobox.min.js"></script>
	<!-- multiple file upload plugin -->
	<script src="${pageContext.request.contextPath}/statics/js2/scroll.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="${pageContext.request.contextPath}/statics/js2/select.min.js"></script>
	<!-- application script for Charisma demo -->
	<script src="${pageContext.request.contextPath}/statics/js2/slider.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/spinner.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/toggler.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js2/weather.min.js"></script>
 	<%-- <script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script> --%>
	
	
        <script type="text/javascript">
            $(document).ready(function(){
                //Editor
                $('.message-editor').summernote({
                    toolbar: [
                      //['style', ['style']], // no style button
                      ['style', ['bold', 'italic', 'underline', 'clear']],
                      ['fontsize', ['fontsize']],
                      ['color', ['color']],
                      ['para', ['ul', 'ol', 'paragraph']],
                      //['height', ['height']],
                      ['insert', ['picture', 'link']], // no insert buttons
                      //['table', ['table']], // no table button
                      //['help', ['help']] //no help button
                    ],
                    height: 200,
                    resizable: false
                });
                
                $('.message-options').click(function(){
                    $(this).closest('.modal').find('.note-toolbar').toggle(); 
                });  
            });
        </script>
	</html>