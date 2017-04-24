using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOANWEB2.Areas.Admin.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: Admin/SanPham
        public ActionResult Index()
        {
            var db = new ShopConnectionDB();
            IEnumerable<SanPham> dsSP = db.Query<SanPham>("Select * From SanPham");
            return View(dsSP);
        }

        // GET: Admin/SanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/SanPham/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/SanPham/Create
        [HttpPost]
        public ActionResult Create(SanPham sp)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if(hpf.ContentLength > 0)
                {
                    string name = sp.MaSanPham + ".png";
                    string fullName = "~/Public/images/" + name;
                    hpf.SaveAs(Server.MapPath(fullName));
                    sp.HinhAnh = sp.MaSanPham + ".png";
                }
                // TODO: Add insert logic here
                ShopBUS.BUS.ThemSP(sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Edit/5
        public ActionResult Edit(string id)
        {
            var sp = ShopBUS.BUS.SanPham(id);
            return View(sp);
        }

        // POST: Admin/SanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, SanPham sp)
        {
            try
            {
                var hpf = HttpContext.Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    string name = sp.MaSanPham + ".png";
                    string fullName = "~/Public/images/" + name;
                    hpf.SaveAs(Server.MapPath(fullName));
                    sp.HinhAnh = sp.MaSanPham + ".png";
                }
                // TODO: Add update logic here
                ShopBUS.BUS.EditSP(id, sp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/SanPham/Delete/5
        public ActionResult Delete(string id)
        {
            var sp = ShopBUS.BUS.SanPham(id);
            ShopBUS.BUS.DeleteSP(sp);
            return RedirectToAction("Index");
        }

        // POST: Admin/SanPham/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
