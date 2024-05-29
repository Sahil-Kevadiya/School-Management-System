<!--row -->
<div class="row">
    <div class="col-md-3 col-sm-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-user bg-megna"></i>
                <div class="bodystate">
                    <h4 class="count"><?php echo $this->db->count_all_results('student');?></h4>
                    <span class="text-muted"><?php echo get_phrase('Students');?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-user bg-info"></i>
                <div class="bodystate">
                    <h4 class="count"><?php echo $this->db->count_all_results('teacher');?></h4>
                    <span class="text-muted"><?php echo get_phrase('Teachers');?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-user bg-success"></i>
                <div class="bodystate">
                    <h4 class="count"><?php echo $this->db->count_all_results('parent');?></h4>
                    <span class="text-muted"><?php echo get_phrase('parents');?></span>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="white-box">
            <div class="r-icon-stats">
                <i class="ti-wallet bg-inverse"></i>
                <div class="bodystate">
                    <h4 class='count'>
                        <?php 
                        // Fetch the student ID
                        $student_id = $this->db->get_where('student', array('parent_id'=> $this->session->userdata('parent_id')))->row()->student_id;
                        
                        // Count all attendance records for the student in the database
                        $total_student_attendance_count = $this->db->where('student_id', $student_id)->count_all_results('attendance');
                        echo $total_student_attendance_count;
                        ?>
                    </h4>
                    <span class="text-muted"><?php echo get_phrase('Attendance');?></span>
                </div>
            </div>
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
</script>
