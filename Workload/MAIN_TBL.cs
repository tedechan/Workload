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
    
    public partial class MAIN_TBL
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MAIN_TBL()
        {
            this.DETAILS_TBL = new HashSet<DETAILS_TBL>();
        }
    
        public int ITEM_ID { get; set; }
        public int SUBJECT_ID { get; set; }
        public short COURSE_NO { get; set; }
        public short SEMESTER_NO { get; set; }
        public int EDUTYPE_ID { get; set; }
        public int EDUFORM_ID { get; set; }
        public decimal VOLUME { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DETAILS_TBL> DETAILS_TBL { get; set; }
        public virtual EDUFORMS_TBL EDUFORMS_TBL { get; set; }
        public virtual EDUTYPES_TBL EDUTYPES_TBL { get; set; }
        public virtual SUBJECTS_TBL SUBJECTS_TBL { get; set; }
    }
}
