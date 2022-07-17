<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>User List</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
   
    <script type="text/javascript">

    
    function getJson() {
	$.ajax({
            type:'get',
            url:'/treelist.do',
            dataType:'json',
            success: function(data) {
                var company = new Array();
                        // 데이터 받아옴
                $.each(data, function(idx, item){
                        company[idx] = {id:item.id, parent:item.parentId, text:item.name};
                });
                       

                        // 트리 생성
                $('#tree').jstree({
                    core: {
                                    data: company    //데이터 연결
                        },
                        types: {
                               'default': {
                                    'icon': 'jstree-folder'
                                }
                        },
                        plugins: [ "themes", "html_data" , "crrm", "contextmenu", "checkbox" ],
                        "contextmenu" : {					

      				      "items" : {

      				          "create" : {

      				              "separator_before" : false,

      				              "separator_after"  : true,

      				              "label"            : "만들기",

      				              "action"           : function (obj) { this.create(obj); }

      				          },

      				          "rename" : {

      				              "separator_before" : false,

      				              "separator_after"  : true,

      				              "label"            : "이름변경",

      				              "action"           : function (obj) { this.create(obj); }

      				          },

      				          "remove" : {

      				              "separator_before" : false,

      				              "separator_after"  : true,

      				              "label"            : "삭제",

      				              "action"           : function (obj) { this.create(obj); }

      				          },    

      				          "ccp" : {

      				              "separator_before" : false,

      				              "separator_after"  : true,

      				              "label"            : "편집",

      				              "action"           : function (obj) { this.create(obj); }

      				          },    

      				          "user_define" : {

      				             "separator_before" : false,

      				              "separator_after"  : true,

      				              "label"            : "사용자정의",

      				              "action"           : function (obj) { this.create(obj); }

      				          },            

      				      }					

      				}

                 })
                 .bind('loaded.jstree', function(event, data){
                        //트리 로딩 롼료 이벤트
                        
                        console.log("11====>", event, data);
                 })
                 .bind('select_node.jstree', function(event, data){
                       //노드 선택 이벤트
                			 var id= data.node.id ;
                			 var name= data.node.text;
                			 apple(id, name);

                 })

            },
            error:function (data) {
                alert("에러");
            }
       });
    }
    
    $(document).ready(function(){
    	getJson();
    });
    
    
    function apple(id, name){
	    	 opener.test(id, name);
	    	 window.close();
    }
    

    </script>
</head>
<body>
    <div id="tree"></div>
<!-- 	<form action ="./main" method="get"> -->
<!--     	<input type="text" name="dptId" /> -->
<!--     	<input type="text" name="dptNm" /> -->
    	<button type="submit" onclick="apple();">제출제출제출</button>
<!--     </form> -->
   
</body>
</html>