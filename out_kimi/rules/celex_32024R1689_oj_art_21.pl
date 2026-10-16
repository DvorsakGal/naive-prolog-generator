% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a90ae73b1ab5dad537ef52a681b2257db91ce4e407319bd224a667b6ba48ca2a
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_conformity_information/2, gloss('provider shall provide information and documentation to demonstrate conformity upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_provide_logs_access/2, gloss('provider shall give access to automatically generated logs upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred confidential_treatment_applies/1, gloss('information obtained by competent authority shall be treated confidentially'), source('celex:32024R1689/oj#art_21').

must_provide_conformity_information(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    developed_by(Provider, S),
    competent_authority(Authority),
    reasoned_request(Authority, Provider, conformity_information(S)).

must_provide_logs_access(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    developed_by(Provider, S),
    competent_authority(Authority),
    reasoned_request(Authority, Provider, logs_access(S)),
    logs_under_control(Provider, S).

confidential_treatment_applies(Information) :-
    obtained_by(Information, Authority),
    competent_authority(Authority),
    obtained_under(Information, 'celex:32024R1689/oj#art_21').

provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_logs_access/2, 'celex:32024R1689/oj#art_21').
provenance(confidential_treatment_applies/1, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
