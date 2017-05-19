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
    public class ElevesDB
    {
        public static List<Eleves> GetEleves(int IdClasses)
        {
            List<Eleves> results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Eleves where Classes_Id=@IdClasses ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdClasses", IdClasses);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new List<Eleves>();

                            Eleves eleve = new Eleves();

                            eleve.Id = (int)dr["Id"];

                            if (dr["Nom"] != null)
                                eleve.Nom = (String)dr["Nom"];

                            if (dr["Prenom"] != null)
                                eleve.Prenom = (string)dr["Prenom"];

                            if (dr["Username"] != null)
                                eleve.Username = (string)dr["Username"];

                            if (dr["Password"] != null)
                                eleve.Password = (string)dr["Password"];

                            if (dr["Classes_Id"] != null)
                                eleve.Classes_Id = (int)dr["Classes_Id"];

                            results.Add(eleve);

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

