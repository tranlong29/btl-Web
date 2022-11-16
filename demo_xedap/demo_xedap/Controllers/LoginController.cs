using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using demo_xedap.Models;
using System.Data.Entity;
using System.Diagnostics;

namespace WebBanVali.Controllers
{
    public class LoginController : Controller
    {
        DBWebBanXeDap1Entities db = new DBWebBanXeDap1Entities();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult PageLogout()
        {
            return View();
        }
        public ActionResult DangNhap(tCustumer user)
        {
            var user2 = db.tCustumers.Where(n => n.TaiKhoan.Equals(user.TaiKhoan) && n.MatKhau.Equals(user.MatKhau)).SingleOrDefault();
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

        public ActionResult Dangky(tCustumer taikhoan1)
        {
            if (ModelState.IsValid)
            {
                db.tCustumers.Add(taikhoan1);
                db.SaveChanges();
                return View("Index");
            }
            return View(taikhoan1);
        }
        public ActionResult Logout()
        {
            Console.WriteLine(Session.ToString());
            Session.Clear();//remove session
            Console.WriteLine(Session.ToString());
            return RedirectToAction("Index", "Home");
        }
    }
}