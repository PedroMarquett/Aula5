//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjAula05
{
    using System;
    using System.Collections.Generic;
    
    public partial class Material
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Material()
        {
            this.Venda = new HashSet<Venda>();
        }
    
        public int Id { get; set; }
        public string Descricao { get; set; }
        public System.DateTime DataEntrega { get; set; }
        public int IdTipo { get; set; }
        public decimal Valor { get; set; }
        public int IdFornecedor { get; set; }
    
        public virtual Fornecedor Fornecedor { get; set; }
        public virtual Tipo Tipo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Venda> Venda { get; set; }
    }
}
