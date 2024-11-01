<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebsiteBanHang.administrator.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            
                $('#myModal').modal('show');
           
            $("#myModal").on('hidden.bs.modal', function () {
                $('#myModal').modal('show');
            });
        });
</script>
    <style type="text/css">
        .bs-example{
    	    margin: 20px;
            width:1000px;
            margin:0 auto;
            padding:10px 0px 10px;
            box-shadow:0px 0px 10px rgba(0, 0, 0, 0.2);
        } 
        .content{
            width:1000px;
            padding-top:50px;
        }
        .form-control{
            width:70%;
        }
    </style>
</head>
<body>
    <form class="form-horizontal" runat="server" id="form2">
        <div id='myModal' class='modal fade'>
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Đăng nhập</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="inputEmail" class="control-label col-xs-2">Tên đăng nhập</label>
                            <div class="col-xs-10">
                                <input type="text" class="form-control" id="txtUser" placeholder="Tên đăng nhập" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="control-label col-xs-2">Mật khẩu</label>
                            <div class="col-xs-10">
                                <input type="password" class="form-control" id="txtPass" placeholder="Mật khẩu" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="form-group">
                            <div class="col-xs-offset-2 col-xs-10">
                                <div class="alert alert-success" runat="server" id="alertSuccess" visible="false" style="width:400px;">
                                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                                    <strong>Hoàn tất!</strong> Đăng nhập thành công.
                                </div>
                                <div class="alert alert-danger alert-error" runat="server" id="alertWarning" visible="false" style="width:400px;">
                                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                                    <strong>Lỗi!</strong> Đăng nhập không thành công.
                                </div>
                                <button type="submit" class="btn btn-primary" id="btnLogin" runat="server" onserverclick="btnLogin_Click">Đăng nhập</button>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
