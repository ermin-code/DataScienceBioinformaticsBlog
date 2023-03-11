using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Create_Project
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select COUNT(case when Blogcategory = 'Genomics' then 1 end) as Genomics,COUNT(case when Blogcategory = 'Proteomics' then 1 end) as Proteomics,COUNT(case when Blogcategory = 'Metagenomics' then 1 end) as Metagenomics,COUNT(case when Blogcategory = 'Structural Bioinformatics' then 1 end) as StructBioinfo from [dbo].[gpblog]";
            sqlconn.Open();
            SqlCommand sqlcomm=new SqlCommand(sqlquery,sqlconn);
            SqlDataReader sdr=sqlcomm.ExecuteReader();  
            if(sdr.Read())
            {
                Topic_1.Text=sdr.GetValue(0).ToString();
                Topic_2.Text=sdr.GetValue(1).ToString();  
                Topic_3.Text =sdr.GetValue(2).ToString();
                Topic_4.Text = sdr.GetValue(3).ToString();
            }


            sqlconn.Close();
        }
    }
}