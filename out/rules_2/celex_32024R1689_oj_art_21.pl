% unit       : celex:32024R1689/oj#art_21
% title      : Cooperation with competent authorities
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : gpt-oss:120b-cloud
% prompt sha : daa063fa7b6d5adba1284260cb078357bbe97efaafbb62fe03c1f47d2c73a52c
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_21').
:- pred provides_high_risk_ai_system/2, gloss('provider provides a high‑risk AI system'), source('celex:32024R1689/oj#art_21').
:- pred competent_authority/1, gloss('competent authority'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request_by/1, gloss('reasoned request issued by competent authority'), source('celex:32024R1689/oj#art_21').
:- pred logs_under_control/1, gloss('logs of AI system under provider control'), source('celex:32024R1689/oj#art_21').
:- pred obtained_under_art/2, gloss('information obtained under a specific article'), source('celex:32024R1689/oj#art_21').
:- pred confidentiality_obligation_applies/1, gloss('confidentiality obligations apply to information'), source('celex:32024R1689/oj#art_78').

:- pred must_provide_information/2, gloss('provider must provide information to competent authority'), source('celex:32024R1689/oj#art_21').
:- pred must_provide_access_to_logs/2, gloss('provider must give access to logs to competent authority'), source('celex:32024R1689/oj#art_21').
:- pred required_confidentiality_handling/2, gloss('competent authority must treat information confidentially'), source('celex:32024R1689/oj#art_21').

must_provide_information(P, A) :-
    provider(P),
    provides_high_risk_ai_system(P, S),
    competent_authority(A),
    reasoned_request_by(A).

must_provide_access_to_logs(P, A) :-
    provider(P),
    provides_high_risk_ai_system(P, S),
    competent_authority(A),
    reasoned_request_by(A),
    logs_under_control(S).

required_confidentiality_handling(A, Info) :-
    competent_authority(A),
    obtained_under_art(Info, 'celex:32024R1689/oj#art_21'),
    confidentiality_obligation_applies(Info).

provenance(must_provide_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(required_confidentiality_handling/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
