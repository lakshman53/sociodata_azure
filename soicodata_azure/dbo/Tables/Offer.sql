CREATE TABLE [dbo].[Offer] (
    [OfferId] INT            IDENTITY (1, 1) NOT NULL,
    [sender]  NVARCHAR (100) NULL,
    [subject] NVARCHAR (50)  NOT NULL,
    [message] NVARCHAR (255) NULL,
    [sent]    DATETIME       NULL,
    CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED ([OfferId] ASC)
);

