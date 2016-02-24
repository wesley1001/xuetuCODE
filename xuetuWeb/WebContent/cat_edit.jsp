<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="./Style/skin.css" />
</head>
<script src="jquery-1.11.1.js"></script>
<script>
/* function Submit(){
	var insertForm = document.getElementsByName("insertForm")[0];
	insertForm.action ="/studentweb/insert";
	insertForm.submit();
} */
function Confirm(){
	var insertForm = document.getElementsByName("insertForm")[0];
	insertForm.action ="/studentweb/insert";
	insertForm.submit();
}
$(document).ready(function(e) {
	$(":button[name=submit]").click(function(e) {
		var points = $(":input[name=cou_redeem_points]").val();
		var num = $(":input[name=cou_num]").val();
		var validity = $(":input[name=cou_Validity]").val();
		var info = $(":input[name=cou_info]").val();
        if(points==""||num==""||validity==""||info=="")
		{
        	alert("请填写必填项！");
		}
		else
		{
			Confirm();
			alert("增加成功");
		}
})
    });
    </script>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="./Images/mail_left_bg.gif">
                    <img src="./Images/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="./Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="././Images/content_bg.gif">
                        <tr><td height="31"><div class="title">添加栏目</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="./Images/mail_right_bg.gif"><img src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="./Images/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="./Images/mime.gif" /></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">&nbsp;</h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 添加栏目开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="/xuetuWeb/ChangeCouponManagerServlet" method="post">
                                                <table width="100%" class="cont">
                                                <tr>
                                                
                                                        <td>&nbsp;<input hidden="hidden" name="flags" value="2"/>
                                                        <input hidden="hidden" name="couponID" value="${editCoupon.couID }"/>
                                                        <input hidden="hidden" name="storeId" value="${editCoupon.storeName.stoID }"/></td>
                                                        <td>优惠券名称：</td>
                                                        <td><input class="text" type="text" name="cou_name" value="${editCoupon.couName }" /></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>优惠券折扣：</td>
                                                        <td><input class="text" type="text" name="cou_price" value="${editCoupon.couPrice }" /></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>兑换积分价格：</td>
                                                        <td><input class="text" type="text" name="cou_redeem_points" value="${editCoupon.coouRedeemPoints }" /></td>
                                                        <td></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>优惠券数量：</td>
                                                        <td width="20%"><input class="text" type="text" name="cou_num" value="${editCoupon.conNum }" /></td>
                                                        <td>举例:55</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td>优惠券到期时间：</td>
                                                        <td width="20%"><input class="text" type="text" name="cou_Validity" value="${editCoupon.conValidity }" /></td>
                                                        <td>格式:2000-2-15</td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>优惠券信息：</td>
                                                        <td><textarea name="cou_info" >${editCoupon.couInfo }</textarea></td>
                                                        
                                                        <td>&nbsp;50字以内</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td colspan="3"><input class="btn" type="submit" value="提交" name="submit" />
                                                         <form action="/xuetuWeb/CouponListServlet">
                                                        <input type="submit" value="返回"/>
                                                        </form></td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加栏目结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt"><img src="./Images/icon_phone.gif" width="17" height="14" /> 客服电话：1111-1111-1111</td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="./Images/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="./Images/mail_left_bg.gif">
                    <img src="./Images/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="./Images/buttom_bgs.gif">
                    <img src="./Images/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="./Images/mail_right_bg.gif">
                    <img src="./Images/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>
</html>