using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShopBUS
{
    public class BUS
    {
        public static IEnumerable<SanPham> ListSP()
        {
            using (var db = new ShopConnectionDB())
            {
                return db.Query<SanPham>("Select * From SanPham");
            }
        }
        public static IEnumerable<LoaiSanPham> ListMenu()
        {
            using (var db = new ShopConnectionDB())
            {
                return db.Query<LoaiSanPham>("Select * From LoaiSanPham");
            }
        }
        public static IEnumerable<HinhAnh> ListImg(string maSP)
        {
            using (var db = new ShopConnectionDB())
            {
                return db.Query<HinhAnh>("Select * From HinhAnh Where MaSanPham = @0", maSP);
            }
        }
        public static void ThemSP(SanPham ab)
        {
            using (var db = new ShopConnectionDB())
            {
                db.Insert(ab);
            }
        }
    }
}
