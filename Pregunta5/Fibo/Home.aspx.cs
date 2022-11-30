using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fibo
{
    public partial class Home : System.Web.UI.Page
    {
        double no,no1,no2,no3;
        string op = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            no= Convert.ToInt32(txtNo.Text);
            no1 = 0;
            no2 = 1;
            op = "Fibonnaci Serie  :   " +no1+","+no2+",";
            for (int i =2;i<= no;i++) {
                no3 = no1 + no2;
                op += no3 + ",";
                no1= no2;
                no2 = no3;
            }
           lblOp.Text = op;
        }
    }
}