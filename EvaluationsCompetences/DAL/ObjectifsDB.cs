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
    public class ObjectifsDB
    {
        public static List<Objectifs> GetObjectifs(int IdEleves)
        {
            List<Objectifs> results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Objectifs o, ElevesObjectifs eo where  @IdEleves=eo.IdEleves and o.id=eo.IdObjectifs";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdEleves", IdEleves);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new List<Objectifs>();

                            Objectifs objectif = new Objectifs();

                            objectif.Id = (int)dr["Id"];

                            if (dr["Nom"] != null)
                                objectif.Nom = (String)dr["Nom"];

                            if (dr["Minima"] != null)
                                objectif.Minima = (Boolean)dr["Minima"];

                            if (dr["IdGroupe"] != null)
                                objectif.IdGroupe = (int)dr["IdGroupe"];

                            results.Add(objectif);

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
