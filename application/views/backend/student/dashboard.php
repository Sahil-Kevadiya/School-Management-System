<!-- row -->
<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-user bg-megna"></i>
                <div class="bodystate">
                    <!-- Add the "count" class here -->
                    <h4 class="count"><?php echo $this->db->count_all_results('student');?></h4>
                    <span class="text-muted"><?php echo get_phrase('Students');?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-user bg-info"></i>
                <div class="bodystate">
                    <!-- Add the "count" class here -->
                    <h4 class="count"><?php echo $this->db->count_all_results('teacher');?></h4>
                    <span class="text-muted"><?php echo get_phrase('Teachers');?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-user bg-success"></i>
                <div class="bodystate">
                    <!-- Add the "count" class here -->
                    <h4 class="count"><?php echo $this->db->count_all_results('parent');?></h4>
                    <span class="text-muted"><?php echo get_phrase('Parents');?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-wallet bg-inverse"></i>
                <div class="bodystate">
                    <h4>
                        <?php 
                            $check_daily_attendance = array('date' => date('Y-m-d'), 'status' => '1');
                            $get_attendance_information = $this->db->get_where('attendance', $check_daily_attendance, 'student_id', $this->session->userdata('student_id'));
                            $display_attendance_here = $get_attendance_information->num_rows();
                            echo $display_attendance_here;
                        ?>
                    </h4>
                    <span class="text-muted"><?php echo get_phrase('Attendance');?></span>
                </div>
            </div>
        </div>
    </div>

    <?php
    // Get the dates for the last three months
    $current_month = date('Y-m');
    $last_month1 = date('Y-m', strtotime('-1 month'));
    $last_month2 = date('Y-m', strtotime('-2 months'));

    // Prepare the query to fetch attendance data for each month
    $attendance_data = array();
    for ($i = 0; $i < 3; $i++) {
        $first_day_of_month = date('Y-m-01', strtotime("-$i month"));
        $last_day_of_month = date('Y-m-t', strtotime("-$i month"));

        $this->db->select('COUNT(*) as count');
        $this->db->from('attendance');
        $this->db->where('date >=', $first_day_of_month);
        $this->db->where('date <=', $last_day_of_month);
        $this->db->where('status', '1'); // Status '1' represents present students
        $this->db->where('student_id', $this->session->userdata('student_id'));
        $query = $this->db->get();
        $attendance_data[] = array( 
            'category' => date('F Y', strtotime("-$i month")),
            'count' => $query->row_array()['count'] // Fetch the count directly
        );
    }
    ?>

    <!-- Attendance Chart -->
    <div class="col-lg-6 col-md-12">
        <div class="white-box">
            <h3>Attendance for Last 3 Months</h3>
            <div id="attendanceChart" style="height: 300px;"></div>
        </div>
    </div>
    
    
</div>

<script>
    $(document).ready(function() {
        $('.count').each(function () {
            $(this).prop('Counter',0).animate({
                Counter: $(this).text()
            }, {
                duration: 2000,
                easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now));
                }
            });
        });
    });
    
    am4core.ready(function() {
        // Attendance Chart
        var attendanceChart = am4core.create("attendanceChart", am4charts.XYChart);
        attendanceChart.data = <?php echo json_encode($attendance_data); ?>;

        // Define the category axis
        var categoryAxis = attendanceChart.xAxes.push(new am4charts.CategoryAxis());
        categoryAxis.dataFields.category = "category"; // Ensure this matches the field name in your data
        categoryAxis.renderer.grid.template.location = 0;
        categoryAxis.renderer.minGridDistance = 30;

        // Define the value axis
        var valueAxis = attendanceChart.yAxes.push(new am4charts.ValueAxis());

        // Create series for attendance
        var series = attendanceChart.series.push(new am4charts.LineSeries());
        series.dataFields.valueY = "count"; // Ensure this matches the field name in your data
        series.dataFields.categoryX = "category"; // Ensure this matches the field name in your data
        series.name = "Attendance"; // Name of the series
        series.tooltipText = "{name}: [bold]{valueY}[/]"; // Tooltip format

        // Add markers
        series.bullets.push(new am4charts.CircleBullet());

        // Add legend
        attendanceChart.legend = new am4charts.Legend();
    });
</script>
