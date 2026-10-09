% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 23ae9ed3aadab2f93ee57360a5fd80532e553470fe82d69b472cb3a9c52a02f2
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred quality_management_system/1, gloss('quality management system'), source('celex:32024R1689/oj#anx_7').
:- pred technical_documentation/1, gloss('technical documentation'), source('celex:32024R1689/oj#anx_7').
:- pred periodic_audit/1, gloss('periodic audit'), source('celex:32024R1689/oj#anx_7').
:- pred audit_report/1, gloss('audit report'), source('celex:32024R1689/oj#anx_7').
:- pred additional_tests/1, gloss('additional tests'), source('celex:32024R1689/oj#anx_7').

assess_quality_management_system(NB, QMS) :-
    notified_body(NB),
    quality_management_system(QMS).
provenance(assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').

must_maintain(Provider, quality_management_system) :-
    provider(Provider).
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').

must_allow(Provider, access(premises)) :-
    provider(Provider).
provenance(must_allow/2, 'celex:32024R1689/oj#anx_7').

must_share(Provider, information) :-
    provider(Provider).
provenance(must_share/2, 'celex:32024R1689/oj#anx_7').

must_examine(NB, technical_documentation) :-
    notified_body(NB).
provenance(must_examine/2, 'celex:32024R1689/oj#anx_7').

must_conduct(NB, periodic_audit) :-
    notified_body(NB).
provenance(must_conduct/2, 'celex:32024R1689/oj#anx_7').

must_provide(NB, audit_report) :-
    notified_body(NB).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_7').

permitted_additional_tests(NB) :-
    notified_body(NB).
provenance(permitted_additional_tests/1, 'celex:32024R1689/oj#anx_7').

must_notify(NB, provider) :-
    notified_body(NB).
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').

must_inform(Provider, notified_body) :-
    provider(Provider).
provenance(must_inform/2, 'celex:32024R1689/oj#anx_7').

references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
