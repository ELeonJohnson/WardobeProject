//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class WomensTop
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WomensTop()
        {
            this.WomensOutfits = new HashSet<WomensOutfit>();
        }
    
        public int WomensTopsID { get; set; }
        public string Name { get; set; }
        public string Photo { get; set; }
        public string Type { get; set; }
        public string Color { get; set; }
        public string Season { get; set; }
        public string Occasion { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<WomensOutfit> WomensOutfits { get; set; }
    }
}
