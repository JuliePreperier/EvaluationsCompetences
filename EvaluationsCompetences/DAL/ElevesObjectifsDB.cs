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
    public class ElevesObjectifsDB
    {
        public static List<ElevesObjectifs> GetElevesObjectifs(int IdEleves)
        {
            List<ElevesObjectifs> results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from ElevesObjectifs where IdEleves=@IdElves";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdEleves", IdEleves);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new List<ElevesObjectifs>();

                            ElevesObjectifs elveobjectif = new ElevesObjectifs();

                            elveobjectif.Id = (int)dr["Id"];

                            if (dr["Niveaux"] != null)
                                elveobjectif.Niveaux = (int)dr["Niveaux"];

                            if (dr["IdObjectifs"] != null)
                                elveobjectif.IdObjectifs = (int)dr["IdObjectifs"];

                            if (dr["IdEleves"] != null)
                                elveobjectif.IdEleves = (int)dr["IdEleves"];

                            if (dr["Evaluation"] != null)
                                elveobjectif.Evaluation = (String)dr["Evaluation"];

                            results.Add(elveobjectif);
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


        public static void UpdateBranches(int IdEleve, int Niveaux)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Update ElevesObjectifs set Niveaux = @Niveaux where IdEleves=@IdElves";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdEleves", IdEleve);
                    cmd.Parameters.AddWithValue("@Niveaux", Niveaux);

                    cn.Open();

                    cmd.ExecuteNonQuery();
                }

            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public static void UpdateBranches(int IdEleve, String Evaluation)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Update ElevesObjectifs set Evaluation = @Evaluation where IdEleves=@IdElves";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdEleves", IdEleve);
                    cmd.Parameters.AddWithValue("@Evaluation", Evaluation);

                    cn.Open();

                    cmd.ExecuteNonQuery();
                }

            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}


