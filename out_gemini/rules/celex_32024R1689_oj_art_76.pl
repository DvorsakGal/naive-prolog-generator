% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 87a19ec2c37b1f273cd771bbd7353b7e1bcd61bea627c1c3cedcbd6dee5052aa
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_ensure(Actor, Object), gloss('Actor is obligated to ensure Object'), source('celex:32024R1689/oj#art_76').
:- pred must_verify(Actor, Object), gloss('Actor is obligated to verify Object'), source('celex:32024R1689/oj#art_76').
:- pred permitted_allow(Actor, Object), gloss('Actor is permitted to allow Object'), source('celex:32024R1689/oj#art_76').
:- pred permitted_suspend_or_terminate(Actor, Object), gloss('Actor may suspend or terminate real-world testing'), source('celex:32024R1689/oj#art_76').
:- pred permitted_require_modification(Actor, Object), gloss('Actor may require modification of real-world testing'), source('celex:32024R1689/oj#art_76').
:- pred supervised_within_sandbox(System), gloss('AI system is supervised within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred grounds_non_compliance(Testing), gloss('Grounds exist that testing conditions are not met, including notification of serious incident'), source('celex:32024R1689/oj#art_76').
:- pred decision_taken(Authority, Decision), gloss('Authority has taken a specified decision'), source('celex:32024R1689/oj#art_76').
:- pred objection_issued(Authority, Objection), gloss('Authority has issued an objection to testing'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate(Actor, Object), gloss('Actor or measure must indicate specified information'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate(Actor, Object), gloss('Actor must communicate information to recipient'), source('celex:32024R1689/oj#art_76').
:- pred testing_of_system(Testing, System), gloss('Testing pertains to AI system'), source('celex:32024R1689/oj#art_76').
:- pred tested_in_member_state(Testing, MemberState), gloss('AI system has been tested under testing plan in Member State'), source('celex:32024R1689/oj#art_76').

% Paragraph 1: Market surveillance authorities shall have competences and powers to ensure testing in real world conditions complies with Regulation
must_ensure(Authority, compliance(Testing)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing).

% Paragraph 2: Supervised in sandbox -> verify compliance, and may allow derogations
must_verify(Authority, compliance_with_art_60(Testing)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    testing_of_system(Testing, System),
    supervised_within_sandbox(System).

permitted_allow(Authority, derogation(Testing, [art_60_4_f, art_60_4_g])) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    testing_of_system(Testing, System),
    supervised_within_sandbox(System).

% Paragraph 3: Grounds for considering conditions of Art 60/61 not met -> suspend/terminate or require modification
permitted_suspend_or_terminate(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_non_compliance(Testing).

permitted_require_modification(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    grounds_non_compliance(Testing).

% Paragraph 4: Decision under par 3 or objection under Art 60(4)(b) must indicate grounds and challenge procedure
must_indicate(Decision, grounds_and_challenge_procedure) :-
    decision_taken(Authority, Decision),
    market_surveillance_authority(Authority),
    ( Decision = suspend_or_terminate(Testing) ; Decision = modify_testing(Testing) ),
    testing_in_real_world_conditions(Testing).

must_indicate(Objection, grounds_and_challenge_procedure) :-
    objection_issued(Authority, Objection),
    market_surveillance_authority(Authority).

% Paragraph 5: Decision communicated to market surveillance authorities of other Member States where tested
must_communicate(Authority, grounds_to(OtherAuthority, Decision)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority,
    decision_taken(Authority, Decision),
    ( Decision = suspend_or_terminate(Testing) ; Decision = modify_testing(Testing) ),
    tested_in_member_state(Testing, OtherState),
    tested_in_member_state(Testing, State),
    OtherState \= State.

% Provenance
provenance(must_ensure/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_allow/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_or_terminate/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_76').

% References
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
