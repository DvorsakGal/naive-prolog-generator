% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : fac90391e3ec348988a2c5ed13be938b4526c86b179c8ab6dce416b1df979997
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred quality_management_system/1, gloss('quality management system'), source('celex:32024R1689/oj#anx_6').
:- pred established/1, gloss('established'), source('celex:32024R1689/oj#anx_6').
:- pred technical_documentation/1, gloss('technical documentation'), source('celex:32024R1689/oj#anx_6').
:- pred design_and_development_process/1, gloss('design and development process'), source('celex:32024R1689/oj#anx_6').
:- pred post_market_monitoring/1, gloss('post‑market monitoring'), source('celex:32024R1689/oj#anx_6').

must_verify(Provider, compliance(QMS, 'celex:32024R1689/oj#art_17')) :-
    provider(Provider),
    quality_management_system(QMS),
    established(QMS).

must_examine(Provider, technical_documentation(Doc)) :-
    provider(Provider),
    technical_documentation(Doc).

must_assess(Provider, compliance(AI, essential_requirements('celex:32024R1689/oj#chp_3/sec_2'))) :-
    provider(Provider),
    ai_system(AI).

must_verify(Provider, consistency(design_and_development_process(DP), post_market_monitoring(PM), technical_documentation(Doc), 'celex:32024R1689/oj#art_72')) :-
    provider(Provider),
    design_and_development_process(DP),
    post_market_monitoring(PM),
    technical_documentation(Doc).

provenance(must_verify/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine/2, 'celex:32024R1689/oj#anx_6').
provenance(must_assess/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
