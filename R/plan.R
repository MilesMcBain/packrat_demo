tt_plan <-
  drake_plan(
    player_dob = read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-09/player_dob.csv"),

    grand_slams = read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-09/grand_slams.csv"),

    wimbledon_winners = get_wimbledon_winners(grand_slams, player_dob),

    analysis_output = target({
      rmarkdown::render(knitr_in("./output/analysis.Rmd"),
                        output_file = "analysis.html")
      file_out("./output/analysis.html")
    })

  )
