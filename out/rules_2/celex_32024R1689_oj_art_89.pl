% unit       : celex:32024R1689/oj#art_89
% title      : Monitoring actions
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : gpt-oss:120b-cloud
% prompt sha : 913ba125d705af12ac6bd7c23bd2e426c7e44b7fd2cf747eebc9c81bebbb2c0c
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred provider_of_general_purpose_ai_model/1, gloss('provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_89').
:- pred permitted_monitor_implementation_and_compliance/2, gloss('AI Office may monitor compliance of providers of general‑purpose AI models'), source('celex:32024R1689/oj#art_89').
:- pred complaint/1, gloss('complaint lodged by a downstream provider'), source('celex:32024R1689/oj#art_89').
:- pred complaint_is_duly_reasoned/1, gloss('complaint is duly reasoned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_includes_point_of_contact/1, gloss('complaint includes point of contact of the provider concerned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_includes_description_of_facts/1, gloss('complaint includes description of relevant facts and provisions'), source('celex:32024R1689/oj#art_89').
:- pred complaint_includes_other_information/1, gloss('complaint includes any other relevant information'), source('celex:32024R1689/oj#art_89').
:- pred permitted_lodge_complaint/2, gloss('downstream provider has the right to lodge a complaint'), source('celex:32024R1689/oj#art_89').

permitted_monitor_implementation_and_compliance(AI_Office, Provider) :-
    ai_office(AI_Office),
    ai_office(AI_Office),
    provider_of_general_purpose_ai_model(Provider).

permitted_lodge_complaint(DownstreamProvider, Complaint) :-
    downstream_provider(DownstreamProvider),
    downstream_provider(DownstreamProvider),
    complaint(Complaint),
    complaint_is_duly_reasoned(Complaint),
    complaint_includes_point_of_contact(Complaint),
    complaint_includes_description_of_facts(Complaint),
    complaint_includes_other_information(Complaint).

provenance(permitted_monitor_implementation_and_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
