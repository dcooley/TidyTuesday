
library(shiny)
library(mapdeck)
library(sf)

server <- function( input, output ) {

	set_token( read.dcf(".mapbox", fields = "MAPBOX") )
	sf <- readRDS("./data/sf.rds")

	s <- 859
	e <- 2101

	output$map <- mapdeck::renderMapdeck({
		mapdeck(
			style = mapdeck_style("dark")
			, pitch = 75
			, zoom = 0
		) %>%
			add_trips(
				data = sf
				, start_time = s
				, end_time = e
				, animation_speed = 75
				, trail_length = 25
				, stroke_colour = "end_year"
				, legend = T
				, legend_options = list(title = "year", digits = 0)
			)

	})


}
