% unit       : celex:32024R1689/oj#anx_6
% title      : Conformity assessment procedure based on internal control
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : gpt-oss:120b-cloud
% prompt sha : e2cf6fd35d6943d35aad6a33224334c19f2701ddbaf4e3a09cbbbdf5726239d4
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred provide_ai_system/2, gloss('provider provides an AI system'), source('celex:32024R1689/oj#anx_6').
:- pred quality_management_system/1, gloss('quality management system of an AI system'), source('celex:32024R1689/oj#anx_6').
:- pred technical_documentation/1, gloss('technical documentation of an AI system'), source('celex:32024R1689/oj#anx_6').
:- pred design_and_development_process/1, gloss('design and development process of an AI system'), source('celex:32024R1689/oj#anx_6').
:- pred post_market_monitoring/1, gloss('post‑market monitoring of an AI system'), source('celex:32024R1689/oj#anx_6').

must_verify(Provider, quality_management_system(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    quality_management_system(System).

must_examine(Provider, technical_documentation(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    technical_documentation(System).

must_verify(Provider, design_and_development_process(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    design_and_development_process(System).

must_verify(Provider, post_market_monitoring(System)) :-
    provider(Provider),
    provide_ai_system(Provider, System),
    post_market_monitoring(System).

provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
