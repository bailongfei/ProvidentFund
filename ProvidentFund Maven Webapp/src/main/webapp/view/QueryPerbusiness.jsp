<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="../frame/layuiadmin/layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
 
<table class="layui-hide" id="test"></table>
              
          
<script src="../frame/layuiadmin/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 --> 
 
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'../Perbusiness/QuerybyId'
    ,method:'post'
    ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
     layout: ['limit', 'count', 'prev', 'page', 'next', 'skip'] //自定义分页布局
      //,curr: 5 //设定初始在第 5 页
     ,groups: 1 //只显示 1 个连续页码
     ,first: false //不显示首页
     ,last: false //不显示尾页
     ,cellMinWidth: 50 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
    }
    ,cols: [[
      {field:'perbuid',  title: 'perbuid', sort: true}
      ,{field:'personno',  title: 'personno'}
      ,{field:'grzhbhs',  title: 'grzhbhs', sort: true}
      ,{field:'netinfoid',  title: 'netinfoid'}
      ,{field:'grpersonids', title: 'grpersonids', }
      ,{field:'grperbutime',  title: 'grperbutime', sort: true}
      ,{field:'grperbutype', title: 'grperbutype', sort: true}
      ,{field:'perbulimit',  title: 'perbulimit'}
      ,{field:'retrievingmeans', title: 'retrievingmeans', sort: true}
      ,{field:'grapprovalstatuss',  title: 'grapprovalstatuss', sort: true}
      ,{field:'settlementstatus',  title: 'settlementstatus', sort: true}
      ,{field:'strike',  title: 'strike', sort: true}
      ,{field:'unitadvancep',  title: 'unitadvancep', sort: true}
      ,{field:'bglx', title: 'bglx', sort: true}
    ]]
    
  });
});
</script>

</body>
</html>