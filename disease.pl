
disease(cold).
disease(flu).
disease(covid_19).


symptom(fever).
symptom(cough).
symptom(sore_throat).
symptom(fatigue).
symptom(shortness_of_breath).
symptom(body_aches).

has_disease(cold) :-
    symptom(cough),
    symptom(sore_throat),
    \+ symptom(fever).  

has_disease(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_aches),
    symptom(fatigue).

has_disease(covid_19) :-
    symptom(fever),
    symptom(cough),
    symptom(fatigue),
    symptom(shortness_of_breath).


symptom_list_matches(Disease, SymptomList) :-
    disease(Disease),
    maplist(symptom, SymptomList),
    has_disease(Disease).
