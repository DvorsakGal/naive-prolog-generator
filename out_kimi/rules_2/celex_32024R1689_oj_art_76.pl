% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 2a086b1e212cf617082eb6057d08527dbed25d1cb7a25e090d780cbee0c8a2b6
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_ensure_compliance/2, gloss('market surveillance authority must ensure testing complies with conditions'), source('celex:32024R1689/oj#art_76').
:- pred verifies_sandbox_compliance/2, gloss('market surveillance authority verifies compliance with Article 60 for sandbox testing'), source('celex:32024R1689/oj#art_76').
:- pred may_allow_derogation/2, gloss('authority may allow derogation from Article 60(4)(f) and (g) conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/2, gloss('authority may suspend or terminate real-world testing'), source('celex:32024R1689/oj#art_76').
:- pred may_require_modification/2, gloss('authority may require modification of testing conditions'), source('celex:32024R1689/oj#art_76').
:- pred grounds_for_intervention/1, gloss('grounds for authority intervention in testing'), source('celex:32024R1689/oj#art_76').
:- pred decision_grounds_indicated/1, gloss('decision or objection indicates grounds and challenge procedure'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_to_other_authorities/2, gloss('authority must communicate grounds to other Member State authorities'), source('celex:32024R1689/oj#art_76').

must_ensure_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing).

verifies_sandbox_compliance(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, Sandbox),
    ai_regulatory_sandbox(Sandbox).

may_allow_derogation(Authority, Testing) :-
    verifies_sandbox_compliance(Authority, Testing).

grounds_for_intervention(Testing) :-
    testing_in_real_world_conditions(Testing),
    serious_incident(Incident),
    informed_of(Authority, Testing, Incident),
    market_surveillance_authority(Authority).

grounds_for_intervention(Testing) :-
    testing_in_real_world_conditions(Testing),
    \+ conditions_met(Testing, art_60).

grounds_for_intervention(Testing) :-
    testing_in_real_world_conditions(Testing),
    \+ conditions_met(Testing, art_61).

may_suspend_or_terminate_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    grounds_for_intervention(Testing).

may_require_modification(Authority, Testing) :-
    market_surveillance_authority(Authority),
    grounds_for_intervention(Testing).

decision_grounds_indicated(Decision) :-
    may_suspend_or_terminate_testing(_Authority, Testing),
    decision(Decision, Testing).

decision_grounds_indicated(Objection) :-
    commission_objection(Objection).

must_communicate_to_other_authorities(Authority, Testing) :-
    may_suspend_or_terminate_testing(Authority, Testing),
    tested_in_other_member_states(Testing, OtherAuthority),
    market_surveillance_authority(OtherAuthority),
    OtherAuthority \= Authority.

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(verifies_sandbox_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_for_intervention/1, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(decision_grounds_indicated/1, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_to_other_authorities/2, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
