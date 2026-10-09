% unit       : celex:32024R1689/oj#anx_7
% context    : ANNEXES
% slice sha  : 8e7b0c8b1329240ac8cdf33886e0141435488a2f4125454c5e0f5a0494f0823b
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5c87d12f854ecb5401438a3a6c31fabb7c704a60cf69d21ea298162b4d4add72
% cached     : False
% title      : Conformity based on an assessment of the quality management system and an assessment of the technical documentation
:- pred must_assess/2, gloss('obligation to assess'), source('celex:32024R1689/oj#anx_7').
:- pred must_notify/2, gloss('obligation to notify'), source('celex:32024R1689/oj#anx_7').
:- pred must_maintain/2, gloss('obligation to maintain'), source('celex:32024R1689/oj#anx_7').
:- pred must_allow_access/2, gloss('obligation to allow access'), source('celex:32024R1689/oj#anx_7').
:- pred must_share_information/2, gloss('obligation to share information'), source('celex:32024R1689/oj#anx_7').
:- pred must_conduct_audit/2, gloss('obligation to conduct audit'), source('celex:32024R1689/oj#anx_7').
:- pred must_grant_access/2, gloss('obligation to grant access to data'), source('celex:32024R1689/oj#anx_7').

must_assess(NB, quality_management_system) :-
    notified_body(NB).

must_assess(NB, technical_documentation) :-
    notified_body(NB).

must_notify(NB, Provider) :-
    notified_body(NB),
    provider(Provider).

must_notify(Provider, NB) :-
    provider(Provider),
    notified_body(NB).

must_maintain(P, quality_management_system) :-
    provider(P).

must_allow_access(P, NB) :-
    provider(P),
    notified_body(NB).

must_share_information(P, NB) :-
    provider(P),
    notified_body(NB).

must_conduct_audit(NB, P) :-
    notified_body(NB),
    provider(P).

must_grant_access(NB, data_access(P)) :-
    notified_body(NB),
    provider(P).

provenance(must_assess/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify/2, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(must_conduct_audit/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access/2, 'celex:32024R1689/oj#anx_7').

references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').
