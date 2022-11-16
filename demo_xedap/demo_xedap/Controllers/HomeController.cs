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
        DBWebBanXeDap1Entities _db = new DBWebBanXeDap1Entities();
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
        public PartialViewResult ListCategoryPartial()
        {
            return PartialView(_db.tCategories.ToList());
        }
        public ActionResult ProductsByListCategory(int? page, string MaLoai = "vali")
        {
            List<tProduct> lstProducts = _db.tProducts.Where(n => n.MaLoai == MaLoai).OrderBy(n => n.MaLoai).ToList();
            if (lstProducts.Count == 0)
            {
                ViewBag.Products = "Khong co san pham nay";
                ViewBag.lstProducts = _db.tProducts.ToList();
            }
            int pagesize = 12;  //số sản phẩm trên một trang
            int pagenumber = (page ?? 1); //số trang

            return View(lstProducts.ToPagedList(pagenumber, pagesize));
        }
        public PartialViewResult SubstancePartial()
        {
            List<tSubstance> lstSubstances = _db.tSubstances.ToList();
            return PartialView(lstSubstances);
        }
        public ActionResult ProductsBySubstance(int? page, string MaChatLieu = "")
        {
            List<tProduct> lstProducts = _db.tProducts.Where(n => n.MaChatLieu == MaChatLieu).OrderBy(n => n.MaChatLieu).ToList();
            if (lstProducts.Count == 0)
            {
                ViewBag.Products = "Khong co san pham nay";
                ViewBag.lstProducts = _db.tProducts.ToList();
            }
            int pagesize = 12;  //số sản phẩm trên một trang
            int pagenumber = (page ?? 1); //số trang

            return View(lstProducts.ToPagedList(pagenumber, pagesize));
        }
        public PartialViewResult CountryPartial()
        {
            List<tCountry> lstCountrys = _db.tCountries.ToList();
            return PartialView(lstCountrys);
        }
        public ActionResult ProductsByCountry(int? page, string MaNuoc = "")
        {
            List<tProduct> lstProducts = _db.tProducts.Where(n => n.MaNuoc == MaNuoc).OrderBy(n => n.MaNuoc).ToList();
            if (lstProducts.Count == 0)
            {
                ViewBag.Products = "Khong co san pham nay";
                ViewBag.lstProducts = _db.tProducts.ToList();
            }
            int pagesize = 12;  //số sản phẩm trên một trang
            int pagenumber = (page ?? 1); //số trang

            return View(lstProducts.ToPagedList(pagenumber, pagesize));
        }
        public PartialViewResult ColorPartial()
        {
            return PartialView(_db.tProducts.ToList());

        }
        public ActionResult ProductsByColor(int? page, string Color = "")
        {
            List<tProduct> lstProducts = _db.tProducts.Where(n => n.Color == Color).OrderBy(n => n.Color).ToList();
            if (lstProducts.Count == 0)
            {
                ViewBag.Products = "Khong co san pham nay";
                ViewBag.lstProducts = _db.tProducts.ToList();
            }
            int pagesize = 12;  //số sản phẩm trên một trang
            int pagenumber = (page ?? 1); //số trang

            return View(lstProducts.ToPagedList(pagenumber, pagesize));
        }

        public PartialViewResult SupplierPartial()
        {
            return PartialView(_db.tSuppliers.ToList());

        }
        public ActionResult ProductsBySupplier(int? page, string MaNSX = "")
        {
            List<tProduct> lstProducts = _db.tProducts.Where(n => n.MaNSX == MaNSX).OrderBy(n => n.MaNSX).ToList();
            if (lstProducts.Count == 0)
            {
                ViewBag.Products = "Khong co san pham nay";
                ViewBag.lstProducts = _db.tProducts.ToList();
            }
            int pagesize = 12;  //số sản phẩm trên một trang
            int pagenumber = (page ?? 1); //số trang

            return View(lstProducts.ToPagedList(pagenumber, pagesize));
        }        
        public ActionResult SearchResults(string searchkey, int? page)
        {
            ViewBag.searchkey = searchkey;
            List<tProduct> lstSearchResults = _db.tProducts.Where(n => n.ProducName.Contains(searchkey)).ToList();
            int pagesize = 12;//so sp tren mot trang
            int pagenumber = (page ?? 1);//so trang
            List<tProduct> lstProducts = _db.tProducts.ToList();
            if (lstSearchResults.Count == 0)
            {
                ViewBag.ThongBao = "No products found";
                return View(_db.tProducts.ToList().ToPagedList(pagenumber, pagesize));
            }
            ViewBag.ThongBao = "Found" + lstSearchResults.Count.ToString() + " products";
            return View(lstSearchResults.OrderBy(n => n.ProducName).ToPagedList(pagenumber, pagesize));
        }       
    }
}