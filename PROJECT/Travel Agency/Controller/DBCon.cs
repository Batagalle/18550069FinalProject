using MySql.Data.MySqlClient;
using System.Data;

namespace Travel_Agency.Controller
{
    public class DBCon
    {
        public MySqlConnection con = null;
        public MySqlCommand com = null;
        public MySqlDataReader dr = null;
        public DataTable dt = null;
        public DataSet ds = null;
        public MySqlDataAdapter da = null;
        //public string constring = "server=localhost;database=abctours;uid=root;pwd=password;Convert Zero Datetime=true;";
        public string constring = " server=localhost;user id=root;password=root;database=abctours";//server=localhost;database=abctours;uid=root;Convert Zero Datetime=true;
       
        //open connection to the database
        public DBCon()
        {
            con = new MySqlConnection(constring);
            con.Open();
        }

        //
        public void DataInsert(string a, string b, int c, double d, string e)
        {
            con = new MySqlConnection(constring);
            con.Open();
            //string query = "INSERT INTO vehicle VALUES (@A,@B,@C,@D)";
            //com = new MySqlCommand(query, con);
            //com.Parameters.AddWithValue("@A", a);
            //com.Parameters.AddWithValue("@B", b);
            //com.Parameters.AddWithValue("@C", c);
            //com.Parameters.AddWithValue("@D", d);

            string query = "INSERT INTO vehicle(vname,vtype,rate_per_day_US_$,excess_km_US_$,status) VALUES (@A,@B,@C,@D,@E)";
            com = new MySqlCommand(query, con);
            com.Parameters.AddWithValue("@A", a);
            com.Parameters.AddWithValue("@B", b);
            com.Parameters.AddWithValue("@C", c);
            com.Parameters.AddWithValue("@D", d);
            com.Parameters.AddWithValue("@E", e);

            com.ExecuteNonQuery();
            con.Close();



            //if (b == "Select Type")
            //{
            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select a Type')", true);
            //}
            //else
            //{
            //    con = new MySqlConnection(constring);
            //    con.Open();
            //    string query = "INSERT INTO vehicle VALUES (@A,@B,@C,@D)";
            //    com = new MySqlCommand(query, con);
            //    com.Parameters.AddWithValue("@A", a);
            //    com.Parameters.AddWithValue("@B", b);
            //    com.Parameters.AddWithValue("@C", c);
            //    com.Parameters.AddWithValue("@D", d);
            //    com.ExecuteNonQuery();
            //    con.Close();
            //}
        }


        public void ShoppingData(string a, string b, string c, string d)
        {
            con = new MySqlConnection(constring);
            con.Open();
            //string query = "INSERT INTO shopping VALUES(@A,@B,@C,@D)";
            string query = "INSERT INTO shopping(place,description,address,url) VALUES(@A,@B,@C,@D)";
            MySqlCommand com1 = new MySqlCommand(query, con);
            com1.Parameters.AddWithValue("@A", a);
            com1.Parameters.AddWithValue("@B", b);
            com1.Parameters.AddWithValue("@C", c);
            com1.Parameters.AddWithValue("@D", d);
            com1.ExecuteNonQuery();
            con.Close();
        }


        public void CountryCodeData(string a, string b)
        {
            con = new MySqlConnection(constring);
            con.Open();
            string query = "INSERT INTO country_codes(country,code) VALUES(@A,@B)";
            MySqlCommand com1 = new MySqlCommand(query, con);
            com1.Parameters.AddWithValue("@A", a);
            com1.Parameters.AddWithValue("@B", b);           
            com1.ExecuteNonQuery();
            con.Close();
        }




        //
        public void DataUpdate(string query)
        {
            com = new MySqlCommand(query, con);
            com.ExecuteNonQuery();
            com.Dispose();
            con.Close();
        }

        //get existing values on PageLoad
        public MySqlDataReader GetVal(string query)
        {
            com = new MySqlCommand(query, con);
            dr = com.ExecuteReader();
            return dr;
        }

        //get customer details
        public MySqlDataReader GetCusDdata(string ACF)
        {
            string query = "SELECT * FROM customer_master WHERE ACF_NO='" + ACF + "'";
            com = new MySqlCommand(query, con);
            dr = com.ExecuteReader();
            return dr;
        }

        //open the connection
        public void OpenCon()
        {
            con = new MySqlConnection(constring);
            con.Open();
        }

        //close the connection
        public void CloseCon()
        {
            con.Close();
        }

        ////Binding Data To the GridView
        //public DataSet databind(string query)
        //{
        //    DataSet dset = new DataSet();

        //    da = new MySqlDataAdapter(query, con);
        //    da.Fill(ds);
        //    //dset = ds;
        //    return ds;
        //    //return dset;

        //}

        //Binding Data To the GridView
        public DataTable databind(string query)
        {
            da = new MySqlDataAdapter(query, con);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        //public string connectionstring()
        //{
        //    string constring = "server=localhost;database=oltsmodel;uid=root;Convert Zero Datetime=true;";
        //    return constring;
        //}


        //used for Travel Agancy 
        public DataTable fillddl(string q1)
        {
            DataTable dt = new DataTable();

            com = new MySqlCommand(q1, con);            
            dt.Load(com.ExecuteReader());
            return dt;
        }

        //public MySqlDataReader getcountry(string country)
        //{
        //    string query = "SELECT code FROM country_codes where country_name='" + country + "'";
        //    com = new MySqlCommand(query, con);
        //    dr = com.ExecuteReader();
        //    return dr;
        //}

    }
}