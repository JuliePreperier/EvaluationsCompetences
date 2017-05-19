using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public static class ElevesManager
    {
        public static Eleves GetEleves(int IdClasses)
        {
            return ElevesDB.GetEleves(IdClasses);
        }

        public static List<Eleves> GetAllEleves(int IdClasses)
        {
            return ElevesDB.GetAllEleves(IdClasses);
        }

        public static Eleves GetEleves(String Username, String Password)
        {
            return ElevesDB.GetEleves(Username, Password);
        }
    }
}
