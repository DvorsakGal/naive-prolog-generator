% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : be483a82c7f1c8257cc9343dd1d686da95b237a86a513788e13b900fcdbc4112
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_conformity_information/2, gloss('provider must provide information and documentation to demonstrate conformity upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_provide_access_to_logs/2, gloss('provider must give access to automatically generated logs upon reasoned request'), source('celex:32024R1689/oj#art_21').

must_provide_conformity_information(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, System),
    requirements_of_chapter_3_section_2(System).

must_provide_access_to_logs(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, System),
    logging_capability(System),
    logs_under_control(Provider, System).

logs_under_control(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
