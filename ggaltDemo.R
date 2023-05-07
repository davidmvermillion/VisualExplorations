# Workspace Initialization -------------------------------------------------

packages <- c('tidyverse', 'ggalt')
lapply(packages, library, character.only = TRUE)

# ggplot Themes ----
theme_generic <- function(base_size = 12,
                          base_family = "",
                          base_line_size = base_size / 170,
                          base_rect_size = base_size / 170){
  theme_minimal(base_size = base_size, 
                base_family = base_family,
                base_line_size = base_line_size) %+replace%
    theme(
      axis.title.y = element_text(angle = 0, vjust = 0, hjust = 0.5, size = 15,
                                  color = "grey55", margin =
                                    margin(t = 0, r = 7, b = 0, l = 0,
                                           unit = "pt")),
      axis.title.x = element_text(hjust = 0, size = 15, color = "grey55"),
      axis.text = element_text(size = 12, color = "grey60"),
      axis.line = element_line(color = "grey60"),
      axis.ticks = element_line(color = "grey60"),
      plot.title = element_text(hjust = 0.5, size = 40, color = "grey40",
                                margin =
                                  margin(t = 0, r = 0, b = 10, l = 0,
                                         unit = "pt")),
      panel.grid = element_blank(),
      plot.subtitle = element_text(hjust = 0.5, size = 20, color = "grey40",
                                   margin =
                                     margin(t = 10, r = 0, b = 0, l = 0,
                                            unit = "pt")),
      legend.title = element_text(size = 15, color = "grey40"),
      legend.text = element_text(size = 12, color = "grey30"),
      complete = TRUE
    )
}

theme_void2 <- function(base_size = 12,
                          base_family = "",
                          base_line_size = base_size / 170,
                          base_rect_size = base_size / 170){
  theme_minimal(base_size = base_size, 
                base_family = base_family,
                base_line_size = base_line_size) %+replace%
    theme(
      axis.title.y = element_blank(),
      axis.title.x = element_blank(),
      axis.text = element_blank(),
      axis.line = element_blank(),
      axis.ticks = element_blank(),
      plot.title = element_text(hjust = 0.5, size = 32, color = "grey40",
                                margin =
                                  margin(t = 0, r = 0, b = 10, l = 0,
                                         unit = "pt")),
      panel.grid = element_blank(),
      plot.subtitle = element_text(hjust = 0.5, size = 20, color = "grey40",
                                   margin =
                                     margin(t = 10, r = 0, b = 0, l = 0,
                                            unit = "pt")),
      legend.title = element_text(size = 15, color = "grey40"),
      legend.text = element_text(size = 12, color = "grey30"),
      complete = TRUE
    )
}

# Load Data ----

data_raw <- as_tibble(sunspot.month)
data <- head(data_raw, 24)
data$index = 1:length(data$x)


# Default Chart -----------------------------------------------------------

data %>% ggplot(aes(x = index, y = x)) +
  theme_void2(
    ) +
  geom_line(color = '#e34234', size = 1) +
  ggtitle('Sunspots from 1749 and 1750')
  

# Smoothed Chart ----------------------------------------------------------

data %>% ggplot(aes(x = index, y = x)) +
  theme_void2(
  ) +
  geom_xspline(spline_shape = -0.4, size = 1, color = '#e34234') +
  ggtitle('Sunspots from 1749 and 1750')
