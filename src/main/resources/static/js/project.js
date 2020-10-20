      $(document).ready(function(){

            $("table .delete").on("click",function(){
                var id=$(this).parent().find("#id").val();
                $("#deleteModal #del_id").val(id);
            });

            $("table .edit").on("click",function(){
                var id=$(this).parent().find("#id").val();
                $.ajax({
                    type: "POST",
                    url:"/projects/edit/",
                    data:{"id": id },
                    success:function(project){
                        $("#editModal #id").val(project.id);
                        $("#editModal #details").val(project.pro_detail);
                        $("#editModal #sems").val(project.sem);
                        $("#editModal #yrs").val(project.year);
                        $("#editModal #months").val(project.month);
						$("#editModal #cert").val(project.certificate);
						$("#editModal #existing").text("Existing file : "+project.certificate);
	
                    }
                });
            });

        });