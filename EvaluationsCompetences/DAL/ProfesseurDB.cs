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
    public class ProfesseurDB
    {
        public static List<Professeurs> GetProfesseurs(String Username, String Password)
        {
            List<Professeurs> results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Professeurs where Username=@Username and Password=@Password ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@Password", Password);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new List<Professeurs>();

                            Professeurs professeur = new Professeurs();

                            professeur.Id = (int)dr["Id"];

                            if (dr["Nom"] != null)
                               professeur.Nom = (String)dr["Nom"];

                            if (dr["Prénom"] != null)
                                professeur.Prénom = (string)dr["Prénom"];

                            if (dr["Username"] != null)
                                professeur.Prénom = (string)dr["Username"];

                            if (dr["Password"] != null)
                                professeur.Prénom = (string)dr["Password"];

                            results.Add(professeur);

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
