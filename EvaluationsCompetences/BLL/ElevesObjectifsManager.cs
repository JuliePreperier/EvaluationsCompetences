using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public static class ElevesObjectifsManager
    {
        public static List<ElevesObjectifs> GetBranches(int IdEleves)
        {
            return ElevesObjectifsDB.GetBranches(IdEleves);
        }
    }
}
