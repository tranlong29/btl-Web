using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using demo_xedap.Models;
using System.Data.Entity;


namespace WebBanVali.Controllers
{
    public class LoginController : Controller
    {
        DBWebBanXeDapEntities db = new DBWebBanXeDapEntities();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DangNhap(tMembership user)
        {
            var user2 = db.tMemberships.Where(n => n.TaiKhoan.Equals(user.TaiKhoan) && n.MatKhau.Equals(user.MatKhau)).SingleOrDefault();
            if (user2 == null)
            {
                ViewBag.message = "Sai ten nguoi dung hoac mat khau";
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Session["userName"] = user.TaiKhoan;
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpGet]
        public ActionResult Dangky()
        {
            return View();
        }
        [HttpPost]

        public ActionResult Dangky(tMembership taikhoan1)
        {
            if (ModelState.IsValid)
            {
                db.tMemberships.Add(taikhoan1);
                db.SaveChanges();
                return View("Index");
            }
            return View(taikhoan1);
        }
    }
}