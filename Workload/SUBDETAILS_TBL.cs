//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Workload
{
    using System;
    using System.Collections.Generic;
    
    public partial class SUBDETAILS_TBL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SUBDETAILS_TBL()
        {
            this.GROUPS_TBL = new HashSet<GROUPS_TBL>();
        }
    
        public int SUBDETAIL_ID { get; set; }
        public int DETAIL_ID { get; set; }
        public int TEACHER_ID { get; set; }
        public decimal HOURS { get; set; }
    
        public virtual DETAILS_TBL DETAILS_TBL { get; set; }
        public virtual TEACHERS_TBL TEACHERS_TBL { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GROUPS_TBL> GROUPS_TBL { get; set; }
    }
}
