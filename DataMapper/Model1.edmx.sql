
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/21/2020 00:03:09
-- Generated from EDMX file: C:\Users\cleilson\source\repos\DataMapper\DataMapper\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [YouLearnCurso];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Canal_Usuario_IdUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Canal] DROP CONSTRAINT [FK_Canal_Usuario_IdUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayList_Usuario_IdUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlayList] DROP CONSTRAINT [FK_PlayList_Usuario_IdUsuario];
GO
IF OBJECT_ID(N'[dbo].[FK_Video_Canal_IdCanal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Video] DROP CONSTRAINT [FK_Video_Canal_IdCanal];
GO
IF OBJECT_ID(N'[dbo].[FK_Video_PlayList_IdPlayList]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Video] DROP CONSTRAINT [FK_Video_PlayList_IdPlayList];
GO
IF OBJECT_ID(N'[dbo].[FK_Video_Usuario_IdUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Video] DROP CONSTRAINT [FK_Video_Usuario_IdUsuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__EFMigrationsHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__EFMigrationsHistory];
GO
IF OBJECT_ID(N'[dbo].[Canal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Canal];
GO
IF OBJECT_ID(N'[dbo].[PlayList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlayList];
GO
IF OBJECT_ID(N'[dbo].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario];
GO
IF OBJECT_ID(N'[dbo].[Video]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Video];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__EFMigrationsHistory'
CREATE TABLE [dbo].[C__EFMigrationsHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'Canal'
CREATE TABLE [dbo].[Canal] (
    [Id] uniqueidentifier  NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [UrlLogo] nvarchar(255)  NOT NULL,
    [IdUsuario] uniqueidentifier  NULL
);
GO

-- Creating table 'PlayList'
CREATE TABLE [dbo].[PlayList] (
    [Id] uniqueidentifier  NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [IdUsuario] uniqueidentifier  NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [Id] uniqueidentifier  NOT NULL,
    [PrimeiroNome] nvarchar(50)  NOT NULL,
    [UltimoNome] nvarchar(50)  NOT NULL,
    [Email] nvarchar(200)  NOT NULL,
    [Senha] nvarchar(36)  NOT NULL
);
GO

-- Creating table 'Video'
CREATE TABLE [dbo].[Video] (
    [Id] uniqueidentifier  NOT NULL,
    [IdCanal] uniqueidentifier  NULL,
    [IdPlayList] uniqueidentifier  NULL,
    [Titulo] nvarchar(200)  NOT NULL,
    [Descricao] nvarchar(255)  NOT NULL,
    [Tags] nvarchar(100)  NOT NULL,
    [OrdemNaPlayList] int  NOT NULL,
    [IdVideoYoutube] nvarchar(50)  NOT NULL,
    [IdUsuario] uniqueidentifier  NULL,
    [Status] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId] in table 'C__EFMigrationsHistory'
ALTER TABLE [dbo].[C__EFMigrationsHistory]
ADD CONSTRAINT [PK_C__EFMigrationsHistory]
    PRIMARY KEY CLUSTERED ([MigrationId] ASC);
GO

-- Creating primary key on [Id] in table 'Canal'
ALTER TABLE [dbo].[Canal]
ADD CONSTRAINT [PK_Canal]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PlayList'
ALTER TABLE [dbo].[PlayList]
ADD CONSTRAINT [PK_PlayList]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Video'
ALTER TABLE [dbo].[Video]
ADD CONSTRAINT [PK_Video]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdUsuario] in table 'Canal'
ALTER TABLE [dbo].[Canal]
ADD CONSTRAINT [FK_Canal_Usuario_IdUsuario]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuario]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Canal_Usuario_IdUsuario'
CREATE INDEX [IX_FK_Canal_Usuario_IdUsuario]
ON [dbo].[Canal]
    ([IdUsuario]);
GO

-- Creating foreign key on [IdCanal] in table 'Video'
ALTER TABLE [dbo].[Video]
ADD CONSTRAINT [FK_Video_Canal_IdCanal]
    FOREIGN KEY ([IdCanal])
    REFERENCES [dbo].[Canal]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Video_Canal_IdCanal'
CREATE INDEX [IX_FK_Video_Canal_IdCanal]
ON [dbo].[Video]
    ([IdCanal]);
GO

-- Creating foreign key on [IdUsuario] in table 'PlayList'
ALTER TABLE [dbo].[PlayList]
ADD CONSTRAINT [FK_PlayList_Usuario_IdUsuario]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuario]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayList_Usuario_IdUsuario'
CREATE INDEX [IX_FK_PlayList_Usuario_IdUsuario]
ON [dbo].[PlayList]
    ([IdUsuario]);
GO

-- Creating foreign key on [IdPlayList] in table 'Video'
ALTER TABLE [dbo].[Video]
ADD CONSTRAINT [FK_Video_PlayList_IdPlayList]
    FOREIGN KEY ([IdPlayList])
    REFERENCES [dbo].[PlayList]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Video_PlayList_IdPlayList'
CREATE INDEX [IX_FK_Video_PlayList_IdPlayList]
ON [dbo].[Video]
    ([IdPlayList]);
GO

-- Creating foreign key on [IdUsuario] in table 'Video'
ALTER TABLE [dbo].[Video]
ADD CONSTRAINT [FK_Video_Usuario_IdUsuario]
    FOREIGN KEY ([IdUsuario])
    REFERENCES [dbo].[Usuario]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Video_Usuario_IdUsuario'
CREATE INDEX [IX_FK_Video_Usuario_IdUsuario]
ON [dbo].[Video]
    ([IdUsuario]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------