﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class YouLearnCursoEntities : DbContext
    {
        public YouLearnCursoEntities()
            : base("name=YouLearnCursoEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__EFMigrationsHistory> C__EFMigrationsHistory { get; set; }
        public virtual DbSet<Canal> Canal { get; set; }
        public virtual DbSet<PlayList> PlayList { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }
        public virtual DbSet<Video> Video { get; set; }
    }
}
