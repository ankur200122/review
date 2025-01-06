
current_temperature(Temp).  
desired_temperature(Temp).  
time_of_day(Time).          
home_occupied(Occupied).    


comfort_range(18, 24).


adjust_temperature :-
    home_occupied(yes),
    current_temperature(Current),
    desired_temperature(Desired),
    (
        Current < Desired -> activate_heating;
        Current > Desired -> activate_cooling
    ).


adjust_temperature :-
    home_occupied(no),
    time_of_day(night),
    write('Reducing heating or cooling to save energy').


adjust_temperature :-
    home_occupied(yes),
    current_temperature(Current),
    comfort_range(Min, Max),
    (
        Current < Min -> activate_heating;
        Current > Max -> activate_cooling
    ).


activate_heating :-
    write('Heating activated.').

activate_cooling :-
    write('Cooling activated.').
