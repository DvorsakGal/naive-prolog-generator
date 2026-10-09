% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 490425a46d51b1ab1b7ffe512f93298b8e6267c6185b58aee78c0e49bc4fc554
% cached     : False
% title      : Monitoring actions
:- pred permitted_monitoring_action/1, gloss('AI Office may monitor providers of general-purpose AI models'), source('celex:32024R1689/oj#art_89').
:- pred permitted_complaint_lodging/1, gloss('Downstream providers may lodge a complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred required_complaint_content/1, gloss('Complaint must be duly reasoned and include required information'), source('celex:32024R1689/oj#art_89').
:- pred includes_point_of_contact/1, gloss('Complaint includes point of contact of the provider of the general-purpose AI model concerned'), source('celex:32024R1689/oj#art_89').
:- pred includes_description/1, gloss('Complaint includes description of relevant facts, provisions and reason'), source('celex:32024R1689/oj#art_89').
:- pred includes_other_information/1, gloss('Complaint includes any other relevant information'), source('celex:32024R1689/oj#art_89').

permitted_monitoring_action(Actor) :-
    ai_office(Actor),
    general_purpose_ai_model_provider(_).

permitted_complaint_lodging(Actor) :-
    downstream_provider(Actor).

required_complaint_content(Complaint) :-
    includes_point_of_contact(Complaint),
    includes_description(Complaint),
    includes_other_information(Complaint).

provenance(permitted_monitoring_action/1, 'celex:32024R1689/oj#art_89').
provenance(permitted_complaint_lodging/1, 'celex:32024R1689/oj#art_89').
provenance(required_complaint_content/1, 'celex:32024R1689/oj#art_89').
provenance(includes_point_of_contact/1, 'celex:32024R1689/oj#art_89').
provenance(includes_description/1, 'celex:32024R1689/oj#art_89').
provenance(includes_other_information/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
