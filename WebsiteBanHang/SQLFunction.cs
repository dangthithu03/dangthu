using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteBanHang
{
    class SQLFunction
    {
        public static DataTable KiemTraTaiKhoan(string user, string mk)
        {
            string strQuery = "select * from LoginForm where Username = '"+user+"' and Pass = '"+mk+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }
        public static DataTable Showtaikhoan()
        {
            string strQuery = "select * from LoginForm";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable KiemtraMenuCha()
        {
            string strQuery = "select * from LoaiSanPham where ID = 0";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }
        public static DataTable ShowLoaiSP()
        {
            string strQuery = "select * from LoaiSanPham where ID = 1 or ID = 2 or ID = 3 or ID = 4";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable ShowMenuChaSP()
        {
            string strQuery = "select * from LoaiSanPham where ID = 0";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }


        public static DataTable ShowSP()
        {
            string strQuery = "select * from SanPham";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static void ThemNhomSP(string tenloai, string ghichu, string id)
        {
            string strQuery = "insert into LoaiSanPham(TenLoaiSP, GhiChu, ID) values (N'"+tenloai+"', N'"+ghichu+"', '"+id+"')";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void ThemNhomTT(string tenloai, string ghichu)
        {
            string strQuery = "insert into LoaiTinTuc(TenLoaiTT, GhiChu) values (N'" + tenloai + "', N'" + ghichu + "')";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void ThemSP(string tenloai, string maloai, string gia, string anh, string mota, string chitiet, string baohanh)
        {
            string strQuery = "insert into SanPham(TenSP, MaLoaiSP, GiaSP, Anh, Mota, ChitietSP, BaoHanh) values (N'" + tenloai + "', '" + maloai + "', '"+gia+"', '"+anh+"', N'"+mota+"', N'"+chitiet+"', '"+baohanh+"')";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void Themtaikhoan(string user, string pass, string name, string address)
        {
            string strQuery = "insert into LoginForm(Username, Pass, Fullname, Address) values ('"+user+"', '"+pass+"', N'"+name+"', N'"+address+"')";
            SQLConnection.executeNonquery(strQuery);
        }

        public static string GetTenLoaiSP(string maloai)
        {
            string strQuery = "select TenLoaiSP from LoaiSanPham where MaLoaiSP = '"+maloai+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);

            return dt.Rows[0].ItemArray[0].ToString();
        }

        public static void XoaSP(int masp)
        {
            string strQuery = "delete from SanPham where MaSP = '"+masp+"'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void XoaTK(int id)
        {
            string strQuery = "delete from LoginForm where MaLog = '" + id + "'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void XoaNhomSP(int id)
        {
            string strQuery = "delete from LoaiSanPham where MaLoaiSP = '" + id + "'";
            SQLConnection.executeNonquery(strQuery);
        }
        public static DataTable GetSanPhamByID(int id)
        {
            string strQuery = "select * from SanPham where MaSP = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);

            return dt;
        }

        public static DataTable GetLoaiSanPhamByID(int id)
        {
            string strQuery = "select * from LoaiSanPham where MaLoaiSP = '" + id + "'";
            DataTable dt = SQLConnection.executeQuery(strQuery);

            return dt;
        }

        public static DataTable GetTaiKhoanByID(int id)
        {
            string strQuery = "select * from LoginForm where MaLog = '" + id + "'";
            DataTable dt = SQLConnection.executeQuery(strQuery);

            return dt;
        }
        public static void SuaSP(string tensp, string maloaisp, string gia, string baohanh, string anh, string mota, string chitiet, int masp)
        {
            string strQuery = "update SanPham set TenSP = N'"+tensp+"', MaLoaiSP = '"+maloaisp+"', GiaSP = '"+gia+"', BaoHanh = '"+baohanh+"', Anh = '"+anh+"', Mota = N'"+mota+"', ChitietSP = N'"+chitiet+"' where MaSP = '"+masp+"'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void SuaNhomSP(string tennhom, string ghichu,string id, int manhom)
        {
            string strQuery = "update LoaiSanPham set TenLoaiSP = N'"+tennhom+"', GhiChu = N'"+ghichu+"', ID = '"+id+"' where MaLoaiSP = '"+manhom+"'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void SuaTaiKhoan(string username, string pass, string hoten, string diachi, int id)
        {
            string strQuery = "update LoginForm set Username = '"+username+"', Pass = '"+pass+"', Fullname = N'"+hoten+"', Address = N'"+diachi+"' where MaLog = '"+id+"'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static DataTable MenuCha(string id)
        {
            string strQuery = "select * from LoaiSanPham where ID = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable MenuCon(string id)
        {
            string strQuery = "select * from LoaiSanPham where ID = '" + id + "'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable ShowSanPham(int id)
        {
            string strQuery = "select * from SanPham where MaLoaiSP = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static string GetTenLoaiByMaLoai(int id)
        {
            string strQuery = "select TenLoaiSP from LoaiSanPham where MaLoaiSP = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt.Rows[0].ItemArray[0].ToString();
        }

        public static DataTable ShowChiTietSanPham(int id)
        {
            string strQuery = "select * from SanPham where MaSP = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable ShowSPMoiNhat()
        {
            string strQuery = "select top(10) * from SanPham Order by MaSP DESC";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static void ThemTT(string tieude, string mota, string anh, string chitiet)
        {
            string strQuery = "insert into TinTuc(TieuDe, MoTa, AnhTT, ChitietTT) values (N'"+tieude+"', N'"+mota+"', N'"+anh+"', N'"+chitiet+"')";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void XoaTT(int id)
        {
            string strQuery = "delete from TinTuc where MaTT = '"+id+"'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static void SuaTT(string tieude, string mota, string anh, string chitiet, int id)
        {
            string strQuery = "update TinTuc set TieuDe = N'"+tieude+"', MoTa = N'"+mota+"', AnhTT = N'"+anh+"', ChitietTT = N'"+chitiet+"' where MaTT = '"+id+"'";
            SQLConnection.executeNonquery(strQuery);
        }

        public static DataTable ShowTinTuc()
        {
            string strQuery = "select * from TinTuc Order by MaTT Desc";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable ShowTinTucByID(int id)
        {
            string strQuery = "select * from TinTuc where MaTT = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static void ThemLienHe(string hoten, string email, string sdt, string noidung)
        {
            string strQuery = "insert into LienHe(HoTen, Email, SDT, NoiDung) values (N'"+hoten+"', N'"+email+"', N'"+sdt+"', N'"+noidung+"')";
            SQLConnection.executeNonquery(strQuery);
        }

        public static DataTable ShowLienHe()
        {
            string strQuery = "select * from LienHe Order by ID DESC";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable ShowQuangCao()
        {
            string strQuery = "select * from QuangCao";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static DataTable ShowQC(int id)
        {
            string strQuery = "select * from QuangCao where ID = '"+id+"'";
            DataTable dt = SQLConnection.executeQuery(strQuery);
            return dt;
        }

        public static void UpdateQC(string tieude, string anh, string noidung, string link, int id)
        {
            string strQuery = "update QuangCao set TieuDe = N'"+tieude+"', Anh = N'"+anh+"', NoiDung = N'"+noidung+"', Link = N'"+link+"' where ID = '"+id+"'";
            SQLConnection.executeNonquery(strQuery);
        }
    }
}