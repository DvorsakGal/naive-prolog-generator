% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 76e3bf63268a966b04579dcd58614f468369c218f7af388d4f76bfb2742c8868
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_verify_compliance/2, gloss('market surveillance authority must verify compliance with art_60 for sandbox-supervised testing'), source('celex:32024R1689/oj#art_76').
:- pred may_allow_testing_in_derogation/2, gloss('market surveillance authority may allow testing in derogation from art_60 conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/2, gloss('market surveillance authority may suspend or terminate testing'), source('celex:32024R1689/oj#art_76').
:- pred may_require_modification/2, gloss('market surveillance authority may require modification of testing'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate_grounds_and_challenge/2, gloss('decision or objection must indicate grounds and how to challenge'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_grounds/2, gloss('market surveillance authority must communicate grounds to other Member States'), source('celex:32024R1689/oj#art_76').

% Article 76(1)
must_ensure_testing_compliance(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority).

% Article 76(2) – verification obligation
must_verify_compliance(Authority, sandbox_supervised_testing(System)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(System, Sandbox).

% Article 76(2) – derogation permission
may_allow_testing_in_derogation(Authority, testing(System, Provider)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(System, Sandbox),
    (provider(Provider); prospective_provider(Provider)).

% Article 76(3) – suspension or termination
may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions(System)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    grounds_to_consider_conditions_not_met(Authority, System).

% Article 76(3) – modification requirement
may_require_modification(Authority, testing_in_real_world_conditions(System)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    grounds_to_consider_conditions_not_met(Authority, System).

% Grounds for Article 76(3) decisions
grounds_to_consider_conditions_not_met(Authority, System) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    (   informed_of_serious_incident(Authority, System)
    ;   other_grounds_for_noncompliance(Authority, System)
    ).

informed_of_serious_incident(Authority, System) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    serious_incident(Incident),
    relates_to(Incident, System),
    informed_by(Authority, Incident, _Party).

other_grounds_for_noncompliance(Authority, System) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(System),
    has_other_grounds(Authority, System).

% Article 76(4) – grounds and challenge information
must_indicate_grounds_and_challenge(Authority, decision_or_objection(Decision, System)) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions(System))
    ;   may_require_modification(Authority, testing_in_real_world_conditions(System))
    ;   issued_objection(Authority, System)
    ),
    Decision = decision_or_objection(_, _).

% Article 76(5) – communication to other Member States
must_communicate_grounds(Authority, decision(Decision, System)) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions(System))
    ;   may_require_modification(Authority, testing_in_real_world_conditions(System))
    ),
    tested_in_other_member_states(System).

% Supporting predicates
:- pred prospective_provider/1, gloss('entity intending to place an AI system on the market'), source('celex:32024R1689/oj#art_76').
:- pred supervised_within/2, gloss('testing is supervised within a sandbox'), source('celex:32024R1689/oj#art_76').
:- pred informed_by/3, gloss('authority informed by party of incident'), source('celex:32024R1689/oj#art_76').
:- pred relates_to/2, gloss('incident relates to testing'), source('celex:32024R1689/oj#art_76').
:- pred has_other_grounds/2, gloss('authority has other grounds for noncompliance'), source('celex:32024R1689/oj#art_76').
:- pred issued_objection/2, gloss('authority issued objection under art_60'), source('celex:32024R1689/oj#art_76').
:- pred tested_in_other_member_states/1, gloss('system tested in other Member States'), source('celex:32024R1689/oj#art_76').

% Provenance
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_testing_in_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds/2, 'celex:32024R1689/oj#art_76').
provenance(grounds_to_consider_conditions_not_met/2, 'celex:32024R1689/oj#art_76').
provenance(informed_of_serious_incident/2, 'celex:32024R1689/oj#art_76').
provenance(other_grounds_for_noncompliance/2, 'celex:32024R1689/oj#art_76').

% References
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
