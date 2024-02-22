suppressPackageStartupMessages(library(slickR))
suppressPackageStartupMessages(library(htmltools))

generate_div <- function(header, sub_header, description, img_path) {
    description_div <- tags$div(
        tags$h3(header,
                style = css(color = "black")), 
        tags$div(
            tags$h4(sub_header,
                    style = css(color = "black")), 
            tags$p(description,
                   style = css(color = "black"))
        )
    )
    
    d <- tags$div(
        style = css(display = "flex", "align-items" = "center"),
        tags$div(
            style = css(display = "flex", "flex-direction" = "column", "margin-right" = "20px", width = "20%"),
            tags$img(src=img_path)
        ),
        tags$div(
            style = css(display = "flex", "flex-direction" = "column", "margin-right" = "20px", width = "80%", "text-align" = "left"), 
            description_div
        )
    )
    return(d)
}