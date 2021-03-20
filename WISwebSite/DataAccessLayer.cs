using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WISwebSite
{
    public class DataAccessLayer
    {
        
        public static int getStdNo() {
            int stdNo = 0;

            string connStr = ConfigurationManager.ConnectionStrings["wisDBconnectionStr"].ConnectionString;

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string query = "SELECT MAX(studentNo)+1 FROM studentInfo";
            SqlCommand cmd = new SqlCommand(query, conn);
            stdNo= (int)cmd.ExecuteScalar();

            return stdNo;
        }

        public static int saveUser() {
            string cm = ConfigurationManager.ConnectionStrings["wisDBconnectionStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(cm);
            SqlCommand cmd = new SqlCommand("AddUser", conn);
            cmd.Parameters.AddWithValue("@userId", "testId");
            cmd.Parameters.AddWithValue("@password", "testpw");
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            conn.Open();
            int no = cmd.ExecuteNonQuery();
            return no;
        }
        public static bool verifyLogin(string id, string pw)
        {
            string cm = ConfigurationManager.ConnectionStrings["wisDBconnectionStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(cm);

            SqlCommand cmd = new SqlCommand("SpLogin", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@password", pw);
            conn.Open();
            return Convert.ToBoolean(cmd.ExecuteScalar());

        }

        public static string getStudentName(string studentId) {
            string cm = ConfigurationManager.ConnectionStrings["wisDBconnectionStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(cm);
            conn.Open();
            string query = "SELECT firstName FROM studentInfo WHERE studentId = '" + studentId + "';";
            SqlCommand cmd = new SqlCommand(query, conn);

            string result = string.Empty;
            if (cmd.ExecuteScalar() != null) {
                result = cmd.ExecuteScalar().ToString();
            }
            else {
                result = "0";
            }

            return result;
        }


        public static void saveStdInfo(int studentNo, string firstName, string lastName, string studentId, string eMail, string programName, string password)
        {
            string connStr = ConfigurationManager.ConnectionStrings["wisDBconnectionStr"].ConnectionString;

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string query = "INSERT INTO studentInfo";
            query += " VALUES (@studentNo, @firstName, @lastName, @studentId, @eMail, @programName, @password)";

            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@studentNo", studentNo);
            cmd.Parameters.AddWithValue("@firstName", firstName);
            cmd.Parameters.AddWithValue("@lastName", lastName);
            cmd.Parameters.AddWithValue("@studentId", studentId);
            cmd.Parameters.AddWithValue("@eMail", eMail);
            cmd.Parameters.AddWithValue("@programName", programName);
            cmd.Parameters.AddWithValue("@password", password);
            int cnt = cmd.ExecuteNonQuery();
        
            
            conn.Close();
            conn = null;
        }
    }
}