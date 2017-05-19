using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public static class BranchesManager
    {
        //Récupère les branches
        public static Branches GetBranches(int IdObjectif)
        {
            return BranchesDB.GetBranches(IdObjectif);
        }



    }
}
