% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4eb40af3d9596da7b53f56c22dde38881f0d3d68bf809622334cf048a1a3a90c
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_information_and_documentation/2, gloss('provider must provide information and documentation to competent authority upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_give_access_to_logs/2, gloss('provider must give access to automatically generated logs to competent authority upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_treat_information_confidentially/1, gloss('competent authority must treat obtained information in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_21').

must_provide_information_and_documentation(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    reasoned_request(Authority, Provider, information_and_documentation(S)),
    information_demonstrates_conformity(S, 'celex:32024R1689/oj#chp_3/sec_2'),
    language_easily_understood(Authority).

must_give_access_to_logs(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    reasoned_request(Authority, Provider, access_to_logs(S)),
    logs_referred_to_in_art_12_par_1(S),
    logs_under_control_of(Provider, S).

must_treat_information_confidentially(Authority) :-
    competent_authority(Authority),
    information_obtained_pursuant_to(Authority, 'celex:32024R1689/oj#art_21').

provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_information_confidentially/1, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
