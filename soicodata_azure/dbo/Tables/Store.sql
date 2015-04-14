CREATE TABLE [dbo].[Store] (
    [StoreId]    INT            IDENTITY (1, 1) NOT NULL,
    [StoreName]  NVARCHAR (50)  NOT NULL,
    [Latitude]   FLOAT (53)     NULL,
    [Longitude]  FLOAT (53)     NULL,
    [StoreOpen]  TIME (7)       NULL,
    [StoreClose] TIME (7)       NULL,
    [Address]    NVARCHAR (100) NULL,
    [Area]       INT            NULL,
    [City]       INT            NULL,
    [Region]     INT            NULL,
    [StoreOff]   SMALLINT       NULL,
    [StoreCode] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED ([StoreId] ASC),
    CONSTRAINT [FK_Store_Area] FOREIGN KEY ([Area]) REFERENCES [dbo].[Area] ([AreaId]),
    CONSTRAINT [FK_Store_City] FOREIGN KEY ([City]) REFERENCES [dbo].[City] ([CityId]),
    CONSTRAINT [FK_Store_Region] FOREIGN KEY ([Region]) REFERENCES [dbo].[Region] ([RegionId])
);

