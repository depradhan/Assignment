﻿CREATE TABLE [Integration].[Order_Staging] (
    [Order Staging Key]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [City Key]            INT             NULL,
    [Customer Key]        INT             NULL,
    [Stock Item Key]      INT             NULL,
    [Order Date Key]      DATE            NULL,
    [Picked Date Key]     DATE            NULL,
    [Salesperson Key]     INT             NULL,
    [Picker Key]          INT             NULL,
    [WWI Order ID]        INT             NULL,
    [WWI Backorder ID]    INT             NULL,
    [Description]         NVARCHAR (100)  NULL,
    [Package]             NVARCHAR (50)   NULL,
    [Quantity]            INT             NULL,
    [Unit Price]          DECIMAL (18, 2) NULL,
    [Tax Rate]            DECIMAL (18, 3) NULL,
    [Total Excluding Tax] DECIMAL (18, 2) NULL,
    [Tax Amount]          DECIMAL (18, 2) NULL,
    [Total Including Tax] DECIMAL (18, 2) NULL,
    [Lineage Key]         INT             NULL,
    [WWI City ID]         INT             NULL,
    [WWI Customer ID]     INT             NULL,
    [WWI Stock Item ID]   INT             NULL,
    [WWI Salesperson ID]  INT             NULL,
    [WWI Picker ID]       INT             NULL,
    [Last Modified When]  DATETIME2 (7)   NULL,
    CONSTRAINT [PK_Integration_Order_Staging] PRIMARY KEY NONCLUSTERED ([Order Staging Key] ASC)
)
;

