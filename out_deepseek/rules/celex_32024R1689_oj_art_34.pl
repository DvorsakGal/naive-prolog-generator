% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 819c025375846cabaaa680c95031b336ca5bac52e67f7c9fd8dea37ed24933ad
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body must verify conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('notified body must avoid unnecessary burdens for provider'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_rigour/2, gloss('notified body must respect degree of rigour and level of protection'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available_documentation/2, gloss('notified body must make available documentation to notifying authority'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment(assessment(System, art_43)).

must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    must_take_account_of_size(Body, Provider),
    must_take_account_of_sector(Body, Provider),
    must_take_account_of_structure(Body, Provider),
    must_take_account_of_complexity(Body, Provider),
    must_minimise_burdens_for_smes(Body, Provider).

must_take_account_of_size(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_take_account_of_sector(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_take_account_of_structure(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_take_account_of_complexity(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_minimise_burdens_for_smes(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    micro_or_small_enterprise(Provider).

must_respect_rigour(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    required_rigour_and_protection(System).

must_make_available_documentation(Body, documentation(System)) :-
    notified_body(Body),
    high_risk_ai_system(System),
    notifying_authority(Authority),
    must_submit_on_request(Body, documentation(System), Authority).

must_submit_on_request(Body, documentation(System), Authority) :-
    notified_body(Body),
    high_risk_ai_system(System),
    notifying_authority(Authority).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
