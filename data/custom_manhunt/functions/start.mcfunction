scoreboard objectives setdisplay sidebar
execute if score StarterKitsEnabled setting matches 1 run schedule function custom_manhunt:level_up_starter_kit 1800s append
function custom_manhunt:loop