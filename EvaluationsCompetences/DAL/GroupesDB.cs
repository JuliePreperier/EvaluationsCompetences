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
    public class GroupesDB
    {
        public static Groupes GetBranches(int IdGroupes)
        {
            Groupes results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Groupes where Id=@IdGroupe ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdGroupe", IdGroupes);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new Groupes();

                            Groupes groupe = new Groupes();

                            groupe.Id = (int)dr["Id"];

                            if (dr["Nom"] != null)
                                groupe.Nom = (String)dr["Nom"];

                            if (dr["Cycle"] != null)
                                groupe.Cycle = (int)dr["Cycle"];

                            if (dr["IdBranches"] != null)
                                groupe.IdBranches = (int)dr["IdBranches"];

                            results = groupe;
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

