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
    
    public partial class TEACHERS_TBL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TEACHERS_TBL()
        {
            this.SUBDETAILS_TBL = new HashSet<SUBDETAILS_TBL>();
        }
    
        public int TEACHER_ID { get; set; }
        public string TEACHER_NAME { get; set; }
        public string TEACHER_POS { get; set; }
        public decimal TEACHER_RATE { get; set; }
        public string TEACHER_MISC { get; set; }
        public string TEACHER_RANK { get; set; }
        public string TEACHER_DEGREE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SUBDETAILS_TBL> SUBDETAILS_TBL { get; set; }
    }
}
