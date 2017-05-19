using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public static class GroupesManager
    {
        public static Groupes GetBranches(int IdGroupes)
        {
            return GroupesDB.GetBranches(IdGroupes);
        }

    }
}
