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
        public static List<ElevesObjectifs> GetElevesObjectifs(int IdEleves)
        {
            return ElevesObjectifsDB.GetElevesObjectifs(IdEleves);
        }
    }
}
