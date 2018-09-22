EXECUTE Application.Configuration_ApplyFullTextIndexing
EXECUTE [Application].[Configuration_ApplyAuditing]

EXECUTE DataLoadSimulation.PopulateDataToCurrentDate
		@AverageNumberOfCustomerOrdersPerDay = 120,
		@SaturdayPercentageOfNormalWorkDay = 70,
		@SundayPercentageofNormalWorkDay = 50,
		@IsSilentMode = 1,
		@AreDatesPrinted = 1;