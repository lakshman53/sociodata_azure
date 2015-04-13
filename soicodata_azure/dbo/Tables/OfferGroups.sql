CREATE TABLE [dbo].[OfferGroups] (
    [Id]      INT IDENTITY (1, 1) NOT NULL,
    [OfferId] INT NOT NULL,
    [GroupId] INT NOT NULL,
    CONSTRAINT [PK_OfferGroups] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OfferGroups_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([GroupId]),
    CONSTRAINT [FK_OfferGroups_Offer] FOREIGN KEY ([OfferId]) REFERENCES [dbo].[Offer] ([OfferId])
);

