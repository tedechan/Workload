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
    
    public partial class WORKS_TBL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WORKS_TBL()
        {
            this.DETAILS_TBL = new HashSet<DETAILS_TBL>();
        }
    
        public int WORK_ID { get; set; }
        public string WORK_NAME { get; set; }
        public Nullable<decimal> HRS_PER_STUD { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DETAILS_TBL> DETAILS_TBL { get; set; }
    }
}
