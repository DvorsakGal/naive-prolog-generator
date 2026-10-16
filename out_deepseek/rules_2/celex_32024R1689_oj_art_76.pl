% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e1fa83d6c3194b794a9203343a15f6ad55a8c315cf26bbffd41e3631c2d4814f
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_verify_compliance/2, gloss('market surveillance authority must verify compliance with Article 60'), source('celex:32024R1689/oj#art_76').
:- pred may_allow_testing_in_derogation/2, gloss('market surveillance authority may allow testing in derogation from conditions'), source('celex:32024R1689/oj#art_76').
:- pred may_suspend_or_terminate_testing/2, gloss('market surveillance authority may suspend or terminate testing'), source('celex:32024R1689/oj#art_76').
:- pred may_require_modification_of_testing/2, gloss('market surveillance authority may require modification of testing'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate_grounds_and_challenge/2, gloss('decision or objection must indicate grounds and how to challenge'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate_grounds_to_other_authorities/2, gloss('market surveillance authority must communicate grounds to other Member State authorities'), source('celex:32024R1689/oj#art_76').

% Paragraph 1
must_verify_compliance(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    % The provision states authorities shall have competences and powers to ensure compliance.
    % We model this as a duty to verify compliance.
    true.

% Paragraph 2
must_verify_compliance(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, ai_regulatory_sandbox),
    % Verify compliance with Article 60 as part of supervisory role.
    true.

may_allow_testing_in_derogation(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, ai_regulatory_sandbox),
    % Derogation from conditions in Article 60(4)(f) and (g).
    true.

% Paragraph 3
may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    (   informed_of_serious_incident(Authority, Testing)
    ;   grounds_to_consider_conditions_not_met(Authority, Testing)
    ).

may_require_modification_of_testing(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    (   informed_of_serious_incident(Authority, Testing)
    ;   grounds_to_consider_conditions_not_met(Authority, Testing)
    ).

% Paragraph 4
must_indicate_grounds_and_challenge(Authority, Decision) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, _)
    ;   may_require_modification_of_testing(Authority, _)
    ;   issued_objection_under_art_60_4_b(Authority, _)
    ),
    Decision = decision(Authority, _).

% Paragraph 5
must_communicate_grounds_to_other_authorities(Authority, Decision) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, _)
    ;   may_require_modification_of_testing(Authority, _)
    ),
    Decision = decision(Authority, _),
    tested_in_other_member_states(Decision).

% Helper predicates
informed_of_serious_incident(Authority, Testing) :-
    serious_incident(Incident),
    % The authority has been informed of a serious incident.
    true.

grounds_to_consider_conditions_not_met(Authority, Testing) :-
    % The authority has other grounds for considering conditions not met.
    true.

issued_objection_under_art_60_4_b(Authority, Testing) :-
    % Authority issued an objection within the meaning of Article 60(4)(b).
    true.

tested_in_other_member_states(Decision) :-
    % The AI system has been tested in other Member States.
    true.

% Provenance
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_testing_in_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification_of_testing/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate_grounds_to_other_authorities/2, 'celex:32024R1689/oj#art_76').

% References
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
