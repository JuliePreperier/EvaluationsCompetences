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
        public static List<Eleves> GetAllEleves(int IdClasses)
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

        public static Eleves GetEleves(int IdEleve)
        {
            Eleves results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Eleves where Id=@IEleve ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@IdEleve", IdEleve);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new Eleves();

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

                            results = eleve;

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

        public static Eleves GetEleves(String Username, String Password)
        {
            Eleves results = null;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            try
            {
                using (SqlConnection cn = new SqlConnection(connectionString))
                {
                    string query = "Select * from Eleves where Username=@Username and Password=@Password ";
                    SqlCommand cmd = new SqlCommand(query, cn);
                    cmd.Parameters.AddWithValue("@Username", Username);
                    cmd.Parameters.AddWithValue("@Password", Password);

                    cn.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            if (results == null)
                                results = new Eleves();

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

                            results = eleve;

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

