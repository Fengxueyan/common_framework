
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/11/2015 15:05:30
-- Generated from EDMX file: E:\code\tt\api\wx\Model\Test.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DB_999A5F_WDQWeiXin];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[EventMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EventMsg];
GO
IF OBJECT_ID(N'[dbo].[ImageMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ImageMsg];
GO
IF OBJECT_ID(N'[dbo].[LinkMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LinkMsg];
GO
IF OBJECT_ID(N'[dbo].[LocationMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LocationMsg];
GO
IF OBJECT_ID(N'[dbo].[TextMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TextMsg];
GO
IF OBJECT_ID(N'[dbo].[VideoMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VideoMsg];
GO
IF OBJECT_ID(N'[dbo].[VoiceMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VoiceMsg];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EventMsg'
CREATE TABLE [dbo].[EventMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Event] nvarchar(max)  NULL,
    [Latitude] nvarchar(max)  NULL,
    [Longitude] nvarchar(max)  NULL,
    [Precision] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL,
    [EventKey] nchar(4000)  NOT NULL,
    [Ticket] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ImageMsg'
CREATE TABLE [dbo].[ImageMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PicUrl] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL
);
GO

-- Creating table 'LinkMsg'
CREATE TABLE [dbo].[LinkMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL,
    [Url] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL
);
GO

-- Creating table 'LocationMsg'
CREATE TABLE [dbo].[LocationMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Location_X] nvarchar(max)  NULL,
    [Location_Y] nvarchar(max)  NULL,
    [Scale] nvarchar(max)  NULL,
    [Label] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL
);
GO

-- Creating table 'TextMsg'
CREATE TABLE [dbo].[TextMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL,
    [Content] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL
);
GO

-- Creating table 'VideoMsg'
CREATE TABLE [dbo].[VideoMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MediaId] nvarchar(max)  NULL,
    [ThumbMediaId] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL
);
GO

-- Creating table 'VoiceMsg'
CREATE TABLE [dbo].[VoiceMsg] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MediaId] nvarchar(max)  NULL,
    [Format] nvarchar(max)  NULL,
    [MsgId] nvarchar(max)  NULL,
    [ToUserName] nvarchar(max)  NULL,
    [FromUserName] nvarchar(max)  NULL,
    [CreateTime] nvarchar(max)  NULL,
    [MsgType] nvarchar(max)  NULL,
    [Recognition] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EventMsg'
ALTER TABLE [dbo].[EventMsg]
ADD CONSTRAINT [PK_EventMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ImageMsg'
ALTER TABLE [dbo].[ImageMsg]
ADD CONSTRAINT [PK_ImageMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LinkMsg'
ALTER TABLE [dbo].[LinkMsg]
ADD CONSTRAINT [PK_LinkMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LocationMsg'
ALTER TABLE [dbo].[LocationMsg]
ADD CONSTRAINT [PK_LocationMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TextMsg'
ALTER TABLE [dbo].[TextMsg]
ADD CONSTRAINT [PK_TextMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VideoMsg'
ALTER TABLE [dbo].[VideoMsg]
ADD CONSTRAINT [PK_VideoMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VoiceMsg'
ALTER TABLE [dbo].[VoiceMsg]
ADD CONSTRAINT [PK_VoiceMsg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------