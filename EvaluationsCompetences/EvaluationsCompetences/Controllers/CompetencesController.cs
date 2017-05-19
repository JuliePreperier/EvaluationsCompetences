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
    public class CompetencesController
    {
        public ActionResult Classes(Professeurs professeur)
        {
            if (Session["professeur"] == null)
                return RedirectToAction("Login", "Home");

            var professeurActuel = professeur;
            var profs = professeur.Id;

            ContactVM vm = new ContactVM();

            vm.Members = members;

            return View(vm);
        }



    }
}