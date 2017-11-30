using NopSolutions.NopCommerce.BusinessLogic.Manufacturers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.SEO;
using NopSolutions.NopCommerce.Common.Utils;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class EShopperSidebar : BaseNopFrontendUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategories();
            BindManufacturers();
        }

        private void BindCategories()
        {
            var categories = CategoryService.GetAllCategories();
            if(categories.Count>0)
            {
                rptrCategories.DataSource = categories;
                rptrCategories.DataBind();
            }
        }

        private void BindManufacturers()
        {
            var manufacturers = ManufacturerService.GetAllManufacturers();
            if (manufacturers.Count > 0)
            {
                rptrManufacturers.DataSource = manufacturers;
                rptrManufacturers.DataBind();
            }
        }
    }
}