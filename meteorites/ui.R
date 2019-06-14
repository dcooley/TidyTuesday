
library(shiny)
library(shinydashboard)
library(mapdeck)

ui <- dashboardPage(
	dashboardHeader()
	, dashboardSidebar(disable = T)
	, dashboardBody(
		output$map <- mapdeck::mapdeckOutput(
			outputId = "map"
		)
	)
)
