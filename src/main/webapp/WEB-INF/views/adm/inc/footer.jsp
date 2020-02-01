
<footer class="main-footer">
	<div class="float-right d-none d-sm-block">
		<b>Version</b> 3.0.2-pre
	</div>
	<strong>Copyright &copy; 2014-2019 <a
		href="http://adminlte.io">AdminLTE.io</a>.
	</strong> All rights reserved.
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- Bootstrap 4 -->
<script src="/resources/adm/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/adm/js/adminlte.min.js"></script>

<!-- jsgrid.js -->
<script src="/resources/adm/js/jsgrid.js"></script>

<!-- AdminLTE for demo purposes -->
<script src="/resources/adm/js/demo.js"></script>
<!-- ChartJS -->
<script src="/resources/adm/chart.js/Chart.min.js"></script>
<script type="text/javascript">
	$(function(){
		//- DONUT CHART -
		//-------------
		// Get context with jQuery - using jQuery's .get() method.
		var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
		var donutData = {
			labels : [ 'Chrome', 'IE', 'FireFox', 'Safari', 'Opera', 'Navigator', ],
			datasets : [ {
				data : [ 700, 500, 400, 600, 300, 100 ],
				backgroundColor : [ '#f56954', '#00a65a', '#f39c12', '#00c0ef',
						'#3c8dbc', '#d2d6de' ],
			} ]
		}
		var donutOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		var donutChart = new Chart(donutChartCanvas, {
			type : 'doughnut',
			data : donutData,
			options : donutOptions
		})

		//-------------
	});
</script>
</body>
</html>