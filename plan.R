tt_plan <-
  drake_plan(
    player_dob = read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-09/player_dob.csv"),

    grand_slams = read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-09/grand_slams.csv"),

    winner_ages = combine_slams_ages(grand_slams, player_ages)
  )
