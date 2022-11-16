
using demo_xedap.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace demo_xedap.Areas.Admin.Controllers
{
    public class ProductsController : Controller
    {
        DBWebBanXeDap1Entities1 _db = new DBWebBanXeDap1Entities1();
        // GET: Admin/Products

        public ActionResult Index()
        {
            if (Session["admin"] == null)
            {
                return RedirectToAction("Login");
            }
            
            List<tProduct> lstProducts = _db.tProducts.ToList();
            return View(lstProducts);
            
        }

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(string adminName, string password)
        {
            if(adminName == "admin" & password == "123456")
            {
                Session.Add("admin", adminName);
                return RedirectToAction("Index");
            }
            else
            {
                return View();
            }

        }

        public ActionResult ThemSP()
        {
            ViewBag.MaChatLieu = new SelectList(_db.tSubstances.ToList().OrderBy(n => n.ChatLieu), "MaChatLieu", "ChatLieu");
            ViewBag.MaNSX = new SelectList(_db.tSuppliers.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            ViewBag.MaNuoc = new SelectList(_db.tCountries.ToList().OrderBy(n => n.TenNuoc), "MaNuoc", "TenNuoc");
            ViewBag.MaLoai = new SelectList(_db.tCategories.ToList().OrderBy(n => n.TenLoai), "MaLoai", "TenLoai");

            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ThemSP(tProduct sanpham)
        {
            
                /*ViewBag.MaChatLieu = new SelectList(_db.tSubstances.ToList().OrderBy(n => n.ChatLieu), "MaChatLieu", "ChatLieu");
                ViewBag.MaNSX = new SelectList(_db.tSuppliers.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
                ViewBag.MaNuoc = new SelectList(_db.tCountries.ToList().OrderBy(n => n.TenNuoc), "MaNuoc", "TenNuoc");
                ViewBag.MaLoai = new SelectList(_db.tCategories.ToList().OrderBy(n => n.TenLoai), "MaLoai", "TenLoai");*/
            if (string.IsNullOrEmpty(sanpham.ProductID) == true)
            {
                ModelState.AddModelError("", "Id không đc để trống!!!");
                return View(sanpham);
            }
            if (string.IsNullOrEmpty(sanpham.ProducName) == true)
            {
                ModelState.AddModelError("", "Tên không đc để trống!!!");
                return View(sanpham);
            }
            if (sanpham.Price < 0)
            {
                ModelState.AddModelError("", "Giá bán phải lớn hơn 0!!!");
                return View(sanpham);
            }

            if (ModelState.IsValid)
                {
                    _db.tProducts.Add(sanpham);
                    _db.SaveChanges();
                    return RedirectToAction("Index");

                }
            
            return View(sanpham);
            
        }
        [HttpGet]
        public ActionResult SuaSP(string productID)
        {
            if (productID == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tProduct sanpham = _db.tProducts.Find(productID);
            ViewBag.MaChatLieu = new SelectList(_db.tSubstances.ToList().OrderBy(n => n.ChatLieu), "MaChatLieu", "ChatLieu");
            ViewBag.MaNSX = new SelectList(_db.tSuppliers.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            ViewBag.MaNuoc = new SelectList(_db.tCountries.ToList().OrderBy(n => n.TenNuoc), "MaNuoc", "TenNuoc");
            ViewBag.MaLoai = new SelectList(_db.tCategories.ToList().OrderBy(n => n.TenLoai), "MaLoai", "TenLoai");
            if (sanpham == null)
            {
                return HttpNotFound();
            }
            return View(sanpham);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SuaSP(tProduct sanpham)
        {
            if (ModelState.IsValid)
            {
                _db.Entry(sanpham).State = EntityState.Modified;
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sanpham);
        }

        [HttpGet]
        public ActionResult XoaSanPham(string productID)
        {
            tProduct sanpham = _db.tProducts.SingleOrDefault(n => n.ProductID == productID);
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sanpham);
        }
        [HttpPost, ActionName("XoaSanPham")]
        public ActionResult XacNhanXoa(string productID)
        {
            tProduct sanpham = _db.tProducts.SingleOrDefault(n => n.ProductID == productID);
            var anhsp = from p in _db.tProduct_Img
                        where p.ProductID == sanpham.ProductID                      
                        select p;
            var orderdetail = from p in _db.tOrder_detall
                        where p.ProductID == sanpham.ProductID
                        select p;
            if (sanpham == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            _db.tOrder_detall.RemoveRange(orderdetail);
            _db.tProduct_Img.RemoveRange(anhsp);
            _db.tProducts.Remove(sanpham);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}