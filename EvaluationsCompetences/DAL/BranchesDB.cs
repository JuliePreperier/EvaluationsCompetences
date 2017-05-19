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
    public class BranchesDB
    {
        public static Branches GetBranches(int IdGroupes)
        {
             Branches results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Branches where Id=@IdGroupe ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdGroupe", IdGroupes);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new Branches();

                            Branches branches = new Branches();

                            branches.Id = (int)dr["Id"];

                            if (dr["Nom"] != null)
                                branches.Nom = (String)dr["Nom"];

                            results =branches;
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
