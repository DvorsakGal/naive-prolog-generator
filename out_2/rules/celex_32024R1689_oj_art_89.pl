% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f9436b00489f21ba9cc83f74f92fa02b41abd09c75b0fa163ad7cedf6a4c428f
% cached     : False
% title      : Monitoring actions
:- pred permitted_monitoring_actions/1, gloss('AI Office may take necessary actions to monitor implementation and compliance'), source('celex:32024R1689/oj#art_89').
:- pred permitted_lodge_complaint/1, gloss('Downstream provider may lodge a complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred required_complaint_content/1, gloss('Complaint must be duly reasoned and contain required elements'), source('celex:32024R1689/oj#art_89').
:- pred includes_point_of_contact/1, gloss('Complaint includes point of contact of the provider concerned'), source('celex:32024R1689/oj#art_89').
:- pred includes_description/1, gloss('Complaint includes description of facts, provisions and reason'), source('celex:32024R1689/oj#art_89').
:- pred includes_other_information/1, gloss('Complaint includes any other relevant information'), source('celex:32024R1689/oj#art_89').

permitted_monitoring_actions(AO) :-
    ai_office(AO),
    ai_office(AO).

permitted_lodge_complaint(DP) :-
    downstream_provider(DP),
    downstream_provider(DP).

required_complaint_content(C) :-
    includes_point_of_contact(C),
    includes_description(C),
    includes_other_information(C).

provenance(permitted_monitoring_actions/1, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(required_complaint_content/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
