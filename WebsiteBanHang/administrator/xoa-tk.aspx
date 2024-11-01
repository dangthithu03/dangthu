<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xoa-tk.aspx.cs" Inherits="WebsiteBanHang.administrator.xoa_tk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
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
    <form runat="server" id="form2">
    <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Xóa tài khoản</h4>
            </div>
            <div class="modal-body">
                <p>Bạn chắc chắn xóa không?</p>
                <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Không</button>
                <button type="submit" class="btn btn-primary" id="btnXoa" runat="server" onserverclick="btnXoa_Click">Xóa</button>
            </div>
        </form>
</body>
</html>
