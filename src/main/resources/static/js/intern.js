      $(document).ready(function(){

            $(".container .delete").on("click",function(){
                var id=$(this).parent().find("#id").val();
                $("#deleteModal #del_id").val(id);
            });

            $(".container .edit").on("click",function(){
                var id=$(this).parent().parent().find("#id").val();
                $.ajax({
                    type: "POST",
                    url:"/interns/edit/",
                    data:{"id": id },
                    success:function(intern){
                        $("#editModal #id").val(intern.id);
                        $("#editModal #company").val(intern.company);
                        $("#editModal #sem").val(intern.sem);
                        $("#editModal #yr").val(intern.year);
                        $("#editModal #month").val(intern.month);
						$("#editModal #location").val(intern.location);
						$("#editModal #duration").val(intern.duration);
						$("#editModal #cert").val(intern.certificate);
						$("#editModal #existing").text("Existing file : "+intern.certificate);
                    }
                });
            });

        });