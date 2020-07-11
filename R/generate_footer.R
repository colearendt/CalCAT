generate_footer <- function(date_updated, contact_info = "YOUR CONTACT INFO HERE", additional_html = NULL) {
  htmltools::tagList(
    shiny::fluidRow(
      htmltools::br(),
      htmltools::br(),
      htmltools::hr()
    ), #End of fluidRow
    shiny::fluidRow(
        shiny::column(2,""),
        shiny::column(4,
               htmltools::h4(glue::glue("Alpha Version | Released {date_updated}")),
               #h4("EXPIRES: April 10, 2020"),
               htmltools::HTML(glue::glue("<h5>CONTACT: {contact_info}</h5>")),
               htmltools::HTML("<h5><a href='https://www.cdph.ca.gov/Programs/CID/DCDC/Pages/Immunization/ncov2019.aspx' target='_blank'>CDPH COVID-19 Page</a>  |  <a href='https://covid19.ca.gov/' target='_blank'>ca.gov COVID-19 Page</a> | <a href= 'https://github.com/StateOfCalifornia/CalCAT' target='_blank'>CalCAT Open Source</a></h5> "),
               additional_html
        ),
        shiny::column(4,
               htmltools::img(src = 'calcat_logo.gif', align = "right"),
               htmltools::br()

        ),
        shiny::column(2,"")
    ) #End of fluidRow
  )
}
