% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2c14f192fa3acf97ffe3d3eaa110cb24641ebcec71ea52ef48a9c34dcef0b566
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_information/2, gloss('provider must provide information and documentation to competent authority'), source('celex:32024R1689/oj#art_21').
:- pred must_give_access_to_logs/2, gloss('provider must give access to automatically generated logs to competent authority'), source('celex:32024R1689/oj#art_21').

must_provide_information(Provider, information_request(Authority, System)) :-
    provider(Provider),
    competent_authority(Authority),
    high_risk_ai_system(System),
    reasoned_request(Authority, information_request(Authority, System)),
    information_demonstrates_conformity(information_request(Authority, System), System),
    language_easily_understood(information_request(Authority, System), Authority).

must_give_access_to_logs(Provider, log_access_request(Authority, System)) :-
    provider(Provider),
    competent_authority(Authority),
    high_risk_ai_system(System),
    reasoned_request(Authority, log_access_request(Authority, System)),
    logs_under_control(Provider, System).

provenance(must_provide_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access_to_logs/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
