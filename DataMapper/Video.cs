//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataMapper
{
    using System;
    using System.Collections.Generic;
    
    public partial class Video
    {
        public System.Guid Id { get; set; }
        public Nullable<System.Guid> IdCanal { get; set; }
        public Nullable<System.Guid> IdPlayList { get; set; }
        public string Titulo { get; set; }
        public string Descricao { get; set; }
        public string Tags { get; set; }
        public int OrdemNaPlayList { get; set; }
        public string IdVideoYoutube { get; set; }
        public Nullable<System.Guid> IdUsuario { get; set; }
        public int Status { get; set; }
    
        public virtual Canal Canal { get; set; }
        public virtual PlayList PlayList { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
