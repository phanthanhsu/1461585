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
        public static IEnumerable<LoaiSanPham> ListMenu()
        {
            using (var db = new ShopConnectionDB())
            {
                return db.Query<LoaiSanPham>("Select * From LoaiSanPham");
            }
        }
    }
}
