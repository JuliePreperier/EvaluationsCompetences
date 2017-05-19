using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Configuration;


namespace DAL
{
    class ClassesDB
    {
        public static List<Classes> GetClasses(int IdProf)
        {
            List<Classes> results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Classes c, ProfesseurClasses pf where c.id=pf.IdClasse and pf.IdProf=@IdProf ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdProf", IdProf);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new List<Classes>();

                            Classes classe = new Classes();

                            classe.Id = (int)dr["Id"];

                            if (dr["Nom"] != null)
                                classe.Nom = (String)dr["Nom"];

                            if (dr["Cycle"] != null)
                                classe.Cycle = (int)dr["Cycle"];

                            results.Add(classe);

                        }
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
            }

            return results;
        }
    }
}
}
