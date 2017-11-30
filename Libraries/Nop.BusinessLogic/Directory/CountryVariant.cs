using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;
using NopSolutions.NopCommerce.BusinessLogic.Tax;

namespace NopSolutions.NopCommerce.BusinessLogic.Directory
{
    public partial class CountryVariant : BaseEntity
    {
        private List<CountryVariantLocalized> _cvLocalized;

        public int CountryVariantId { get; set; }
        public int CountryId { get; set; }
        public string Name { get; set; }
        public bool IsShipEnabled { get; set; }
        public bool IsFreeShipping { get; set; }
        public bool IsTaxExempt { get; set; }
        public int TaxCategoryId { get; set; }
        public bool DisableBuyButton { get; set; }
        public bool Published { get; set; }
        public bool Deleted { get; set; }
        public int DisplayOrder { get; set; }
        public DateTime CreatedOn { get; set; }
        public DateTime UpdatedOn { get; set; }

        public string GetLocalizedName(int languageId)
        {
            if(NopContext.Current.LocalizedEntityPropertiesEnabled)
            {
                if(languageId>0)
                {
                    if (_cvLocalized == null) _cvLocalized = IoC.Resolve<ICountryService>().GetCountryVariantLocalizedByCountryVariantId(CountryVariantId);

                    var temp1 = _cvLocalized.FirstOrDefault(c1 => c1.LanguageId == languageId);
                    if (temp1 != null && !String.IsNullOrWhiteSpace(temp1.Name))
                        return temp1.Name;
                }
            }
            return Name;
        }

        public string LocalizedName
        {
            get
            {
                return GetLocalizedName(NopContext.Current.WorkingLanguage.LanguageId);
            }
        }

        public TaxCategory TaxCategory
        {
            get
            {
                return IoC.Resolve<ITaxCategoryService>().GetTaxCategoryById(TaxCategoryId);
            }
        }

        public Country Country
        {
            get
            {
                return IoC.Resolve<ICountryService>().GetCountryById(CountryId);
            }
        }

        public virtual ICollection<CountryVariantLocalized> NpCountryVariantLocalized { get; set; }

        public virtual Country NpCountry { get; set; }
    }
}
