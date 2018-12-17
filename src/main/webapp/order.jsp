<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单确认</title>
	  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
	    <script type="text/javascript">
	    	$(function(){
	    	  		$.ajax({
   							type:"GET",
   							url:"${pageContext.request.contextPath}/order/getAllOrder",
   							dataType:"JSON",
   							success:function(result){
   								console.log(result)    								
								for(var i=0;i<result.length;i++){
									$("tbody").append(
										"<tr><td>"+result[i].orderId+"</td>"+
											"<td>"+result[i].orderCreattime+"</td>"+
											"<td>"+result[i].orderUsername+"</td>"+
											"<td>"+result[i].orderUseraddress+"</td>"+
											"<td>"+result[i].orderTelphone+"</td>"+
											"<td><a href='${pageContext.request.contextPath}/product/deleteOrder?id="+result[i].order_id+"'>"+"删除该订单</a></td>"
									);
								}
								var tbody=$("tbody");
								tbody.removeChild(tr);
   							}
	    						});	
	    	});
	    </script>
  </head>
  
  <body>
  	
  
    <!-- 订单展示 -->
    <table id="table1" border="1px" cellspacing="0" bordercolor="lightblue"  align="center" width="70%">
    	<thead>
	     <tr align="center" bgcolor="#e8eaec">
	       <td><b>订单编号</b></td>
           <td><b>订单创建时间</b></td>
		   <td><b>收货人</b></td>
	       <td><b>地址</b></td>
	       <td><b>手机号</b></td>
	       <td><b>操作</b></td>
	     </tr>
	    </thead> 
	     <tbody  align="center" width="70%"></tbody>
   </table>
   <p>&nbsp;</p>
      	<center>
  	    <hr/>
  	    <a href="${pageContext.request.contextPath }/jsp/product.jsp">回到商品页面</a>
  	</center>
  </body>
</html>
