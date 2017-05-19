using EvaluationsCompetences.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EvaluationsCompetences.Controllers
{
    public class HomeController : Controller
    {
        //Montre le login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(LoginVM loginVM)
        {
            if (ModelState.IsValid)
            {
                var professeur = BLL.ProfesseurManager.GetProfesseurs(loginVM.Username, loginVM.Password);

                if (professeur == null)
                {
                    var eleve = BLL.ElevesManager.GetEleves(loginVM.Username, loginVM.Password);

                    if (eleve == null)
                    {
                        ModelState.AddModelError(string.Empty, "Invalid email or password");
                        return View(loginVM);
                    }
                    else
                    {
                        Session["eleve"] = eleve; return RedirectToAction("Index", "DetailsEleves");
                    }
                   
                }

                if (professeur != null)
                {
                    Session["professeur"] = professeur;
                    return RedirectToAction("Index", "Classes");
                }
              
                
            }
            return View(loginVM);
        }
    }
}