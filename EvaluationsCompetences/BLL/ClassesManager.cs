using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BLL
{
    public static class ClassesManager
    {
        //Récupère les classes 
        public static List<Classes> GetClasses(int IdProf)
        {
            return ClassesDB.GetClasses(IdProf);
        }



    }
}
