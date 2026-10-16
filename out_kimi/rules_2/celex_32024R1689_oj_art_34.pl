% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 50bcd2f130946b14bdb6c0621d444be285d882a39cbe8a7c92b48a5c2fe20ea8
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body shall verify conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('notified body shall avoid unnecessary burdens for provider'), source('celex:32024R1689/oj#art_34').
:- pred must_take_account_of_provider_characteristics/2, gloss('notified body shall take account of provider size, sector, structure and system complexity'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_required_rigour_and_protection/2, gloss('notified body shall respect degree of rigour and level of protection required'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available_documentation/2, gloss('notified body shall make available and submit all relevant documentation'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    conformity_assessment_procedure(Proc),
    carried_out_by(Proc, Body).

must_avoid_unnecessary_burdens(Body, P) :-
    notified_body(Body),
    provider(P),
    conformity_assessment_activity(Activity),
    carried_out_by(Activity, Body).

must_take_account_of_provider_characteristics(Body, P) :-
    notified_body(Body),
    provider(P),
    conformity_assessment_activity(Activity),
    carried_out_by(Activity, Body),
    size_of_provider(P, _Size),
    sector_of_provider(P, _Sector),
    structure_of_provider(P, _Structure),
    high_risk_ai_system(S),
    complexity_of_system(S, _Complexity),
    minimises_burden_for(P, micro_or_small_enterprise).

must_respect_required_rigour_and_protection(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    requirements_in_chapter_3_section_2(S),
    conformity_assessment_activity(Activity),
    carried_out_by(Activity, Body).

must_make_available_documentation(Body, documentation_set(Docs, Authority)) :-
    notified_body(Body),
    relevant_documentation(Docs),
    notifying_authority(Authority),
    assessment_designation_notification_monitoring(Authority).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_account_of_provider_characteristics/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_required_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
