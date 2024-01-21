using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string s = this.Page.Request.FilePath;
            if (s.Contains("home.aspx"))
            {
                lihome.Attributes.Add("class", "active");
                liAbout.Attributes.Add("class", "");
                liProduct.Attributes.Add("class", "");
                licontact.Attributes.Add("class", "");
            }
            if (s.Contains("aboutus.aspx"))
            {
                lihome.Attributes.Add("class", "");
                liAbout.Attributes.Add("class", "active");
                liProduct.Attributes.Add("class", "");
                licontact.Attributes.Add("class", "");
            }
            if (s.Contains("Product.aspx"))
            {
                lihome.Attributes.Add("class", "");
                liAbout.Attributes.Add("class", "");
                liProduct.Attributes.Add("class", "active");
                licontact.Attributes.Add("class", "");
            }
            if (s.Contains("Contactus.aspx"))
            {
                lihome.Attributes.Add("class", "");
                liAbout.Attributes.Add("class", "");
                liProduct.Attributes.Add("class", "");
                licontact.Attributes.Add("class", "active");
            }
        }
    }
}
