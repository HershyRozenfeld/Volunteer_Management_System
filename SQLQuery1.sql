CREATE TABLE [dbo].[T_Activitie] (
    [ActivitieID]     INT            IDENTITY (200, 1) NOT NULL,
    [ActivityName]    NVARCHAR (20)  NOT NULL,
    [ADescription]    NVARCHAR (100) NOT NULL,
    [City]            INT            NOT NULL,
    [GuarantorID]     INT            NOT NULL,
    [MinParticipants] INT            NULL,
    [MaxParticipants] INT            NULL,
    [SpecialDemands]  NVARCHAR (100) NULL,
    [Category]        INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([ActivitieID] ASC)
);




CREATE TABLE [dbo].[T_Availability] (
    [AvailabilityID] INT      IDENTITY (100, 1) NOT NULL,
    [UserID]         INT      NOT NULL,
    [numOfDay]       INT      NULL,
    [BeginningTime]  DATETIME NULL,
    [EndingTime]     DATETIME NULL,
    [OneTime]        INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([AvailabilityID] ASC)
);



CREATE TABLE [dbo].[T_Availadility] (
    [AvailabilityID] INT      IDENTITY (100, 1) NOT NULL,
    [UserID]         INT      NOT NULL,
    [numOfDay]       INT      NULL,
    [BeginningTime]  DATETIME NULL,
    [EndingTime]     DATETIME NULL,
    [OneTime]        INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([AvailabilityID] ASC)
);



CREATE TABLE [dbo].[T_Category] (
    [CategoryID]   INT           IDENTITY (300, 1) NOT NULL,
    [CategoryName] NVARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);



CREATE TABLE [dbo].[T_City] (
    [CityID] INT          IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (1) NOT NULL,
    PRIMARY KEY CLUSTERED ([CityID] ASC)
);



CREATE TABLE [dbo].[T_Registr] (
    [RegistrID]   INT      IDENTITY (500, 1) NOT NULL,
    [UserID]      INT      NOT NULL,
    [ActivitieID] INT      NULL,
    [RegistrData] DATETIME DEFAULT (getdate()) NULL,
    [Status]      INT      NULL,
    PRIMARY KEY CLUSTERED ([RegistrID] ASC)
);




CREATE TABLE [dbo].[T_Task] (
    [TID]           INT           IDENTITY (600, 1) NOT NULL,
    [TDescription]  NVARCHAR (50) NULL,
    [TName]         NVARCHAR (15) NULL,
    [InCharge]      NVARCHAR (15) NULL,
    [Email]         NVARCHAR (15) NULL,
    [Phone]         NVARCHAR (15) NULL,
    [Date]          DATETIME      NULL,
    [BeginningTime] TIME (7)      NULL,
    [EndTime]       TIME (7)      NULL,
    [Cyclical]      INT           NOT NULL,
    [Status]        INT           NULL,
    [Remark]        NVARCHAR (80) NULL,
    [Address]       NVARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([TID] ASC)
);



CREATE TABLE [dbo].[T_TaskHouers] (
    [OperatingHoursCode] INT      IDENTITY (700, 1) NOT NULL,
    [NumOfDay]           INT      NULL,
    [BeginningTime]      TIME (7) NULL,
    [EndTime]            TIME (7) NULL,
    PRIMARY KEY CLUSTERED ([OperatingHoursCode] ASC)
);



CREATE TABLE [dbo].[T_User] (
    [UserID]      INT           IDENTITY (400, 1) NOT NULL,
    [FName]       NVARCHAR (15) NOT NULL,
    [LName]       NVARCHAR (15) NOT NULL,
    [Email]       NVARCHAR (20) NOT NULL,
    [DateOfBirth] DATETIME      NOT NULL,
    [Phone]       NVARCHAR (10) NOT NULL,
    [Category]    NVARCHAR (20) NULL,
    [City]        NVARCHAR (15) NULL,
    [Address]     NVARCHAR (20) NULL,
    [Pass]        NVARCHAR (20) NOT NULL,
    [skills]      NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);

