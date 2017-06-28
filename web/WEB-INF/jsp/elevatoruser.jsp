<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/jsp/nav.jsp"></jsp:include>
<%--<jsp:include page="/user.do/findAll"></jsp:include>--%>
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div>
            <h1 class="page-header">电梯用户信息管理</h1>
        </div>
        <div class="panel-heading">
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        电梯用户
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>单位名称</th>
                                    <th>单位地址</th>
                                    <th>联系人</th>
                                    <th>联系电话</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="elevatorUser" items="${elevatorUserList}">
                                    <tr>
                                        <%--不管实体类第一个字母大小写，el表达式中第一个字母需要小写--%>
                                        <td>${elevatorUser.unitName}</td>
                                        <td>${elevatorUser.address}</td>
                                        <td>${elevatorUser.linkMan}</td>
                                        <td>${elevatorUser.teleNumber}</td>
                                            <%--<td>${role.resourceIdsStr}</td>--%>
                                        <td>
                                            <a href="<%--${pageContext.request.contextPath}/role.do/delete?id=${role.id}--%>"
                                               onclick="return confirm('是否要删除该角色')">删除</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <a href="<%--${pageContext.request.contextPath}/role.do/role_add.view--%>" class="btn btn-primary"
                               role="button">添加电梯使用用户</a>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>

    <!-- /.container-fluid -->
</div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<jsp:include page="/WEB-INF/jsp/bottom.jsp"></jsp:include>

