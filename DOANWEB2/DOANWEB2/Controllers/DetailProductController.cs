﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DOANWEB2.Controllers
{
    public class ProductController : Controller
    {
        // GET: DetailProduct
        public ActionResult Index()
        {
            return View();
        }

        // GET: DetailProduct/Details/5
        public ActionResult Details(int idSanPham)
        {
            return View();
        }

        // GET: DetailProduct/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DetailProduct/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: DetailProduct/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: DetailProduct/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: DetailProduct/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: DetailProduct/Delete/5
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
