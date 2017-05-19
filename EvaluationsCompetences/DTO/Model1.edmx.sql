-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/19/2017 21:27:44
-- Generated from EDMX file: C:\Users\Julie\Source\Repos\EvaluationsCompetences\EvaluationsCompetences\DTO\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_GroupesIdBranc_49C3F6B7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Groupes] DROP CONSTRAINT [FK_GroupesIdBranc_49C3F6B7];
GO
IF OBJECT_ID(N'[dbo].[FK_ObjectifsIdGro_6E01572D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Objectifs] DROP CONSTRAINT [FK_ObjectifsIdGro_6E01572D];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassesEleves]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Eleves] DROP CONSTRAINT [FK_ClassesEleves];
GO
IF OBJECT_ID(N'[dbo].[FK_ElevesObjIdEle_619B8048]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElevesObjectifs] DROP CONSTRAINT [FK_ElevesObjIdEle_619B8048];
GO
IF OBJECT_ID(N'[dbo].[FK_ElevesObjIdObj_60A75C0F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ElevesObjectifs] DROP CONSTRAINT [FK_ElevesObjIdObj_60A75C0F];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfesseuIdCla_5DCAEF64]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfesseursClasses] DROP CONSTRAINT [FK_ProfesseuIdCla_5DCAEF64];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfesseuIdPro_5CD6CB2B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfesseursClasses] DROP CONSTRAINT [FK_ProfesseuIdPro_5CD6CB2B];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Branches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Branches];
GO
IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO
IF OBJECT_ID(N'[dbo].[Eleves]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Eleves];
GO
IF OBJECT_ID(N'[dbo].[ElevesObjectifs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ElevesObjectifs];
GO
IF OBJECT_ID(N'[dbo].[Groupes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Groupes];
GO
IF OBJECT_ID(N'[dbo].[Objectifs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Objectifs];
GO
IF OBJECT_ID(N'[dbo].[Professeurs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Professeurs];
GO
IF OBJECT_ID(N'[dbo].[ProfesseursClasses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfesseursClasses];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Branches'
CREATE TABLE [dbo].[Branches] (
    [Id] int  NOT NULL,
    [Nom] varchar(250)  NOT NULL
);
GO

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [Id] int  NOT NULL,
    [Nom] varchar(250)  NOT NULL,
    [Cycle] int  NOT NULL
);
GO

-- Creating table 'Eleves'
CREATE TABLE [dbo].[Eleves] (
    [Id] int  NOT NULL,
    [Nom] varchar(250)  NOT NULL,
    [Prenom] varchar(250)  NOT NULL,
    [Username] varchar(250)  NOT NULL,
    [Password] varchar(250)  NOT NULL,
    [Classes_Id] int  NOT NULL
);
GO

-- Creating table 'ElevesObjectifs'
CREATE TABLE [dbo].[ElevesObjectifs] (
    [Id] int  NOT NULL,
    [Niveaux] int  NULL,
    [IdObjectifs] int  NULL,
    [IdEleves] int  NULL,
    [Evaluation] varchar(250)  NULL
);
GO

-- Creating table 'Groupes'
CREATE TABLE [dbo].[Groupes] (
    [Id] int  NOT NULL,
    [Nom] varchar(250)  NOT NULL,
    [Cycle] int  NOT NULL,
    [IdBranches] int  NOT NULL
);
GO

-- Creating table 'Objectifs'
CREATE TABLE [dbo].[Objectifs] (
    [Id] int  NOT NULL,
    [Nom] varchar(250)  NOT NULL,
    [Minima] bit  NOT NULL,
    [IdGroupe] int  NOT NULL
);
GO

-- Creating table 'Professeurs'
CREATE TABLE [dbo].[Professeurs] (
    [Id] int  NOT NULL,
    [Nom] varchar(250)  NOT NULL,
    [Prenom] varchar(250)  NOT NULL,
    [Username] varchar(250)  NOT NULL,
    [Password] varchar(250)  NOT NULL
);
GO

-- Creating table 'ProfesseursClasses'
CREATE TABLE [dbo].[ProfesseursClasses] (
    [Id] int  NOT NULL,
    [IdProfesseurs] int  NOT NULL,
    [IdClasses] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Branches'
ALTER TABLE [dbo].[Branches]
ADD CONSTRAINT [PK_Branches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Eleves'
ALTER TABLE [dbo].[Eleves]
ADD CONSTRAINT [PK_Eleves]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ElevesObjectifs'
ALTER TABLE [dbo].[ElevesObjectifs]
ADD CONSTRAINT [PK_ElevesObjectifs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Groupes'
ALTER TABLE [dbo].[Groupes]
ADD CONSTRAINT [PK_Groupes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Objectifs'
ALTER TABLE [dbo].[Objectifs]
ADD CONSTRAINT [PK_Objectifs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Professeurs'
ALTER TABLE [dbo].[Professeurs]
ADD CONSTRAINT [PK_Professeurs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProfesseursClasses'
ALTER TABLE [dbo].[ProfesseursClasses]
ADD CONSTRAINT [PK_ProfesseursClasses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [IdBranches] in table 'Groupes'
ALTER TABLE [dbo].[Groupes]
ADD CONSTRAINT [FK_GroupesIdBranc_49C3F6B7]
    FOREIGN KEY ([IdBranches])
    REFERENCES [dbo].[Branches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupesIdBranc_49C3F6B7'
CREATE INDEX [IX_FK_GroupesIdBranc_49C3F6B7]
ON [dbo].[Groupes]
    ([IdBranches]);
GO

-- Creating foreign key on [Classes_Id] in table 'Eleves'
ALTER TABLE [dbo].[Eleves]
ADD CONSTRAINT [FK_ClassesEleves]
    FOREIGN KEY ([Classes_Id])
    REFERENCES [dbo].[Classes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassesEleves'
CREATE INDEX [IX_FK_ClassesEleves]
ON [dbo].[Eleves]
    ([Classes_Id]);
GO

-- Creating foreign key on [IdClasses] in table 'ProfesseursClasses'
ALTER TABLE [dbo].[ProfesseursClasses]
ADD CONSTRAINT [FK_ProfesseuIdCla_5DCAEF64]
    FOREIGN KEY ([IdClasses])
    REFERENCES [dbo].[Classes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfesseuIdCla_5DCAEF64'
CREATE INDEX [IX_FK_ProfesseuIdCla_5DCAEF64]
ON [dbo].[ProfesseursClasses]
    ([IdClasses]);
GO

-- Creating foreign key on [IdEleves] in table 'ElevesObjectifs'
ALTER TABLE [dbo].[ElevesObjectifs]
ADD CONSTRAINT [FK_ElevesObjIdEle_619B8048]
    FOREIGN KEY ([IdEleves])
    REFERENCES [dbo].[Eleves]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ElevesObjIdEle_619B8048'
CREATE INDEX [IX_FK_ElevesObjIdEle_619B8048]
ON [dbo].[ElevesObjectifs]
    ([IdEleves]);
GO

-- Creating foreign key on [IdObjectifs] in table 'ElevesObjectifs'
ALTER TABLE [dbo].[ElevesObjectifs]
ADD CONSTRAINT [FK_ElevesObjIdObj_60A75C0F]
    FOREIGN KEY ([IdObjectifs])
    REFERENCES [dbo].[Objectifs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ElevesObjIdObj_60A75C0F'
CREATE INDEX [IX_FK_ElevesObjIdObj_60A75C0F]
ON [dbo].[ElevesObjectifs]
    ([IdObjectifs]);
GO

-- Creating foreign key on [IdGroupe] in table 'Objectifs'
ALTER TABLE [dbo].[Objectifs]
ADD CONSTRAINT [FK_ObjectifsIdGro_6E01572D]
    FOREIGN KEY ([IdGroupe])
    REFERENCES [dbo].[Groupes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ObjectifsIdGro_6E01572D'
CREATE INDEX [IX_FK_ObjectifsIdGro_6E01572D]
ON [dbo].[Objectifs]
    ([IdGroupe]);
GO

-- Creating foreign key on [IdProfesseurs] in table 'ProfesseursClasses'
ALTER TABLE [dbo].[ProfesseursClasses]
ADD CONSTRAINT [FK_ProfesseuIdPro_5CD6CB2B]
    FOREIGN KEY ([IdProfesseurs])
    REFERENCES [dbo].[Professeurs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfesseuIdPro_5CD6CB2B'
CREATE INDEX [IX_FK_ProfesseuIdPro_5CD6CB2B]
ON [dbo].[ProfesseursClasses]
    ([IdProfesseurs]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------