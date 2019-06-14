
library(shiny)
library(shinydashboard)
library(mapdeck)

ui <- dashboardPage(
	dashboardHeader()
	, dashboardSidebar(disable = T)
	, dashboardBody(
		mapdeck::mapdeckOutput(
			outputId = "map"
			, height = "800"
		)
	)
)
