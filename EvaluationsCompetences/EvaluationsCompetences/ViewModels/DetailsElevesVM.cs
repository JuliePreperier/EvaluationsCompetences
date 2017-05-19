using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DTO;

namespace EvaluationsCompetences.ViewModels
{
    public class DetailsElevesVM
    {
        public Eleves eleves { get; set; }
        public IEnumerable<ElevesObjectifs> elevesObjectifs { get; set; }
        public IEnumerable<Objectifs> objectifs { get; set; }
        public Groupes groupes { get; set; }
        public Branches branches { get; set; }


    }
}