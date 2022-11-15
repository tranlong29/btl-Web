using demo_xedap.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace demo_xedap.Controllers
{
    public class HomeController : Controller
    {
        DBWebBanXeDapEntities _db = new DBWebBanXeDapEntities();
        public ActionResult Index()
        {
            List<tProduct> lstProduct = _db.tProducts.ToList();
            return View(lstProduct);
        }
        public PartialViewResult DealsPartial()
        {
            List<tProduct> lstProduct = _db.tProducts.ToList();
            return PartialView(lstProduct);
        }
        public ViewResult DetailPage(string MaSP)
        {
            ViewBag.Name = "Product Details Page";
            ViewBag.smallName = "product-details";
            tProduct tProduct = _db.tProducts.SingleOrDefault(n => n.ProductID == MaSP);
            if(tProduct == null)
            {
                Response.StatusCode = 404;

                return null;
            }
            return View(tProduct);
        }
        public ActionResult CategoryPage(int? page)
        {
            ViewBag.Name = "Shop Category page";
            ViewBag.smallName = "Fashon Category";
            int pagesize = 9;
            int pagenamber = (page ?? 1);
            List<tProduct> lstProduct = _db.tProducts.ToList();
            return View(lstProduct.ToPagedList(pagenamber, pagesize));
        }
        public PartialViewResult CategoryPartial()
        {
            List<tCategory> lstCategorys = _db.tCategories.ToList();
            return PartialView(lstCategorys);
        }
        
        public PartialViewResult SubstancePartial()
        {
            List<tSubstance> lstSubstances = _db.tSubstances.ToList();
            return PartialView(lstSubstances);
        }
        public PartialViewResult CountryPartial()
        {
            List<tCountry> lstCountrys = _db.tCountries.ToList();
            return PartialView(lstCountrys);
        }

        [HttpGet]
        public ActionResult SearchResults(string searchkey, int? page)
        {
            ViewBag.searchkey = searchkey;
            List<tProduct> lstSearchResults = _db.tProducts.Where(n => n.ProducName.Contains(searchkey)).ToList();
            int pagesize = 12;//so sp tren mot trang
            int pagenumber = (page ?? 1);//so trang
            List<tProduct> lstProducts = _db.tProducts.ToList();
            if (lstSearchResults.Count == 0)
            {
                ViewBag.ThongBao = "Khong tim thay san pham";
                return View(_db.tProducts.ToList().ToPagedList(pagenumber, pagesize));
            }
            ViewBag.ThongBao = "da tim thay " + lstSearchResults.Count.ToString() + " san pham";
            return View(lstSearchResults.OrderBy(n => n.ProducName).ToPagedList(pagenumber, pagesize));
        }
    }
}