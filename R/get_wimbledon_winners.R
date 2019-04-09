get_wimbledon_winners <- function(grand_slams, player_dob){

  grand_slams %>%
    left_join(select(player_dob, -grand_slam, age), by = "name") %>%
    filter(grand_slam == "wimbledon") %>%
    select(year, name, gender, tournament_date, date_of_birth) %>%
    mutate(age = as.numeric((tournament_date - date_of_birth))/365)

}
