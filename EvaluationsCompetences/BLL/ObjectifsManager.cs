using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public static class ObjectifsManager
    {
        public static List<Objectifs> GetObjectifs(int IdObjectifs)
        {
            return ObjectifsDB.GetObjectifs(IdObjectifs);
        }


    }
}
