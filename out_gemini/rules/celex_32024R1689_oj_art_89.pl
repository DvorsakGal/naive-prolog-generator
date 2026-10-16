% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : efdc78f14f8634e58a599137210b6b00e8b10fa8a5398d661753afebdb5558e5
% cached     : False
% title      : Monitoring actions
:- pred permitted_monitoring_action/2, gloss('AI Office may take necessary actions to monitor implementation and compliance by providers of general-purpose AI models'), source('celex:32024R1689/oj#art_89').
:- pred general_purpose_ai_model_provider/1, gloss('Provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_89').
:- pred permitted_lodge_complaint/2, gloss('A downstream provider is permitted to lodge a complaint alleging an infringement against a general-purpose AI model provider'), source('celex:32024R1689/oj#art_89').
:- pred duly_reasoned_complaint/1, gloss('A complaint is duly reasoned with required content'), source('celex:32024R1689/oj#art_89').
:- pred complaint_point_of_contact/2, gloss('Complaint indicates point of contact of the provider concerned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_facts_and_reasons/2, gloss('Complaint describes relevant facts, provisions concerned, and reasons for alleging infringement'), source('celex:32024R1689/oj#art_89').

provenance(permitted_monitoring_action/2, 'celex:32024R1689/oj#art_89').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(duly_reasoned_complaint/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

general_purpose_ai_model_provider(P) :-
    provider(P).

permitted_monitoring_action(Office, monitor(compliance(P))) :-
    ai_office(Office),
    general_purpose_ai_model_provider(P).

permitted_monitoring_action(Office, monitor(adherence_to_codes_of_practice(P))) :-
    ai_office(Office),
    general_purpose_ai_model_provider(P).

permitted_lodge_complaint(D, complaint(alleging_infringement(P), C)) :-
    downstream_provider(D),
    general_purpose_ai_model_provider(P),
    duly_reasoned_complaint(C).

duly_reasoned_complaint(C) :-
    complaint_point_of_contact(C, _Contact),
    complaint_facts_and_reasons(C, _Reasons).
