SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [etl].[vwCRMProcess_SeasonTicketHolders]
AS

--SELECT DISTINCT CAST(dc.SSID AS VARCHAR(50)) SSID
--, CAST(s.SeasonYear AS VARCHAR(50)) SeasonYear
--, CAST(s.SeasonYear AS VARCHAR(50)) SeasonYr
-- FROM [dbo].[FactTicketSales] t WITH(NOLOCK)
--       INNER JOIN dbo.DimCustomer dc WITH(NOLOCK) on t.DimTicketCustomerId = dc.SSID and Sourcesystem = 'Paciolan' 
--	   INNER JOIN [dbo].[DimSeason] s WITH(NOLOCK)  ON t.DimSeasonId =s.DimSeasonId 
--       INNER JOIN [dbo].[DimItem] i  WITH(NOLOCK)  ON t.DimSeasonId =s.DimSeasonId and t.DimItemId = i.DimItemId  
--WHERE i.ItemClass = 'ST'

select ssid, 'NA' AS SeasonYear, 'NA' as SeasonYr
FROM dimcustomer WITH (NOLOCK)
WHERE 1=2
GO
