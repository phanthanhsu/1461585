﻿using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOANWEB2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var db = new ShopConnectionDB();
            IEnumerable<SanPham> dsSP = db.Query<SanPham>("SELECT * FROM (SELECT TOP 3 * FROM SanPham ORDER BY MaSanPham DESC) SQ ORDER BY MaSanPham ASC");
            return View(dsSP);
        }

        public ActionResult Product()
        {
            var db = new ShopConnectionDB();
            IEnumerable<SanPham> dsSP = db.Query<SanPham>("Select * From SanPham");
            return View(dsSP);
        }

        public ActionResult Contact()
        {

            return View();
        }
    }
}