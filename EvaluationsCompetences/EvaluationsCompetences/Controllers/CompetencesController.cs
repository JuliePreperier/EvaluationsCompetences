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


            var classe = ClassesManager.GetClasses(((DTO.Professeurs)Session["professeur"]).Id);

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
            var groupe = GroupesManager.GetBranches(eleve.Classes_Id);
            var branche = BranchesManager.GetBranches(groupe.IdBranches);

            DetailsElevesVM details = new DetailsElevesVM
            {
                eleves = eleve,
                elevesObjectifs = eleveobjectif,
                objectifs = objectif,
                groupes = groupe,
                branches = branche
    
            };

            return View(details);
        }

        [HttpPost]
        public ActionResult EditEleves(DetailsElevesVM details)
        {
            for(int i=0; i < details.elevesObjectifs.Count() ;i++)
            {
                ElevesObjectifsManager.UpdateElevesObjectifs((int) details.elevesObjectifs.ElementAt(i).IdEleves,(int) details.elevesObjectifs.ElementAt(i).Niveaux, details.elevesObjectifs.ElementAt(i).Evaluation);
            }
            return View();
        }


        public ActionResult DetailsEleves(int IdEleve)
        {
            if (Session["professeur"] == null || Session["eleve"] == null)
                return RedirectToAction("login", "Home");


            var eleve = ElevesManager.GetEleves(IdEleve);
            var eleveobjectif = ElevesObjectifsManager.GetElevesObjectifs(IdEleve);
            var objectif = ObjectifsManager.GetObjectifs(IdEleve);
            var groupe = GroupesManager.GetBranches(eleve.Classes_Id);
            var branche = BranchesManager.GetBranches(groupe.IdBranches);

            DetailsElevesVM details = new DetailsElevesVM
            {
                eleves = eleve,
                elevesObjectifs = eleveobjectif,
                objectifs = objectif,
                groupes = groupe,
                branches = branche

            };

            return View(details);
        }


    }
}