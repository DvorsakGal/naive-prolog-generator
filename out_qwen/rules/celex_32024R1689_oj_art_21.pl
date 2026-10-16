% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 338bfb43fbf3446e459c6f32ca43d21a29bcfd57e8f82d562fc6ae9617d936a1
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_conformity_information(Provider, System), gloss('provider must provide information to demonstrate conformity upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_provide_access_to_logs(Provider, System), gloss('provider must give access to automatically generated logs upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred logs_under_control(Provider, System), gloss('automatically generated logs are under the control of the provider'), source('celex:32024R1689/oj#art_21').

must_provide_conformity_information(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request_by_competent_authority(S).

must_provide_access_to_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    reasoned_request_by_competent_authority(S),
    logs_under_control(P, S).

provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
