using EvaluationsCompetences.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DTO;
using BLL;



namespace EvaluationsCompetences.Controllers
{
    public class CompetencesController : Controller
    {
        
        public ActionResult Classes()
        {

            if (Session["professeur"] == null || Session["eleve"] !=null )
                return RedirectToAction("login", "Home");

            var classe = ClassesManager.GetClasses(((Professeurs)Session["professeur"]).Id);

            return View(classe);
        }

        public ActionResult Eleves(int IdClasse)
        {
            if (Session["professeur"] == null || Session["eleve"] != null)
                return RedirectToAction("login", "Home");


            var classe = ElevesManager.GetAllEleves(IdClasse);

            return View(classe);
        }

        public ActionResult EditEleves(int IdEleve)
        {
            if (Session["professeur"] == null || Session["eleve"] != null)
                return RedirectToAction("login", "Home");


            var eleve = ElevesManager.GetEleves(IdEleve);
            var eleveobjectif = ElevesObjectifsManager.GetElevesObjectifs(IdEleve);
            var objectif = ObjectifsManager.GetObjectifs(IdEleve);

            return View();
        }


    }
}