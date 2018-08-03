SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [etl].[sp_CRMInteg_RecentCustData]
AS

TRUNCATE TABLE etl.CRMProcess_RecentCustData

DECLARE @Client VARCHAR(50)
SET @Client = 'ASU_EdPlus' --updateme

/*  Update after Peoplesoft feed has been changed  */

/*
SELECT x.dimcustomerid, MAX(x.maxtransdate) maxtransdate, x.team
INTO #tmpTicketSales
	FROM (
		--Ticketing
		SELECT dc.DimCustomerID, MAX(tk.I_Date) MaxTransDate , @Client Team
		--Select * 
		FROM dbo.TK_ODET tk WITH(NOLOCK)	
		JOIN dbo.DimCustomer dc on tk.Customer = dc.SSID and Sourcesystem = 'Paciolan'	
		WHERE tk.I_Date >= DATEADD(YEAR, -3, GETDATE())
		GROUP BY dc.[DimCustomerId]

		UNION ALL 

		--Adobe
		SELECT dc.DimCustomerID, MAX(dl.EventDate) MaxTransDate , @Client Team
		--Select * 
		FROM [ods].[Adobe_DeliveryLog] dl WITH(NOLOCK)	
		JOIN  dbo.DimCustomer dc on dl.AccountFK = dc.SSID and Sourcesystem = 'Adobe'	
		WHERE dl.EventDate >= DATEADD(Day, -90, GETDATE())
		GROUP BY dc.[DimCustomerId]

		UNION ALL 

		--Sponsor Accounts (added 5/8/2017 AMEITIN)
		SELECT dc.DimCustomerID, MAX(org.Export_Datetime) MaxTransDate, @Client Team
		--Select * 
		FROM dbo.PD_ORG org WITH(NOLOCK)	
		JOIN  dbo.DimCustomer dc on org.ORG = dc.SSID and Sourcesystem = 'Paciolan'	
		WHERE org.ORG_TYPE like 'SP%'
		GROUP BY dc.[DimCustomerId]


		) x
		GROUP BY x.dimcustomerid, x.team
*/

/*
INSERT INTO etl.CRMProcess_RecentCustData (dimcustomerid, SSID, MaxTransDate, Team)
SELECT a.dimcustomerid, SSID, [MaxTransDate], Team FROM [#tmpTicketSales] a 
INNER JOIN dbo.[vwDimCustomer_ModAcctId] b ON [b].[DimCustomerId] = [a].[DimCustomerId]
*/
GO
