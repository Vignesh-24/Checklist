      $(document).ready(function(){

            $("ul .delete").on("click",function(){
                var id=$(this).parent().parent().find("#id").val();
                $("#deleteModal #del_id").val(id);
            });

            $("ul .edit").on("click",function(){
                var id=$(this).parent().parent().find("#id").val();
                $.ajax({
                    type: "POST",
                    url:"/skills/edit/",
                    data:{"id": id },
                    success:function(course){
                        $("#editModal #id").val(course.id);
                        $("#editModal #details").val(course.details);
                        $("#editModal #sems").val(course.sem);
                        $("#editModal #yrs").val(course.year);
                        $("#editModal #months").val(course.month);
						$("#editModal #train").val(course.trainer);
						$("#editModal #duration").val(course.duration);
						$("#editModal #cert").val(course.certificate);
						$("#editModal #existing").text("Existing file : "+course.certificate);
                    }
                });
            });

        });