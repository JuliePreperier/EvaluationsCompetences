﻿using DTO;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public static class ProfesseurManager
    {
        public static Professeurs GetProfesseurs(String Username, String Password)
        {
            return ProfesseurDB.GetProfesseurs(Username, Password);
        }

    }
}
