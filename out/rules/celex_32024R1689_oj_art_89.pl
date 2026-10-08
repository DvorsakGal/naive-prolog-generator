% unit       : celex:32024R1689/oj#art_89
% title      : Monitoring actions
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : gpt-oss:120b-cloud
% prompt sha : 410ad78888883abbab65d2e2e6c9a3129ce5c7031957c67eb195119d7150935c
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
permitted_take_action(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider_of_general_purpose_ai_model(Provider).

permitted_lodge_complaint(DownstreamProvider, Complaint) :-
    downstream_provider(DownstreamProvider),
    duly_reasoned_complaint(Complaint).

provider_of_general_purpose_ai_model(P) :-
    provider(P).

duly_reasoned_complaint(C) :-
    includes_point_of_contact(C),
    includes_description(C),
    includes_other_information(C).

includes_point_of_contact(_).
includes_description(_).
includes_other_information(_).

provenance(permitted_take_action/2, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_89').
provenance(duly_reasoned_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(includes_point_of_contact/1, 'celex:32024R1689/oj#art_89').
provenance(includes_description/1, 'celex:32024R1689/oj#art_89').
provenance(includes_other_information/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
