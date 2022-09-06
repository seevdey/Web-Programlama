using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webFinal2.Models;

namespace webFinal2.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {

            return View();
        }

        [HttpPost]
        public ActionResult Sonuc(Sorular2 x)
        {
            CevapList().cevapGetir(
            new Sorular2
            {
                question1 = x.question1,
                question2 = x.question2,
                question3 = x.question3,
                question4 = x.question4,
                text = x.text

            });
            return RedirectToAction("Table");
        }
        
        public ActionResult Table()
        {
            return View(CevapList());
        }

        public Soru CevapList()
        {
            var answerList = (Soru)Session["cevap"];
            if (answerList == null)
            {
                answerList = new Soru();
                Session["cevap"] = answerList;
            }
            return answerList;
        }
    }
}