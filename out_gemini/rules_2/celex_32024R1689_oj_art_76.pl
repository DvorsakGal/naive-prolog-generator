% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6006321b80947aa076be8665afddc2ce9229bdef3ed2d8f1098aeb508021c921
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred supervisory_powers_for_real_world_testing/2, gloss('authority has powers and competences to ensure testing in real world conditions accords with Regulation'), source('celex:32024R1689/oj#art_76').
:- pred supervised_within_sandbox/2, gloss('AI system is supervised within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred permitted_derogation_sandbox_testing/2, gloss('market surveillance authority may allow real-world testing in derogation from Article 60(4)(f) and (g)'), source('celex:32024R1689/oj#art_76').
:- pred informed_of_serious_incident_or_non_compliance/2, gloss('market surveillance authority is informed of a serious incident or has grounds that conditions are not met'), source('celex:32024R1689/oj#art_76').
:- pred permitted_testing_decision/3, gloss('market surveillance authority may decide to suspend/terminate testing or require modification'), source('celex:32024R1689/oj#art_76').
:- pred required_decision_content/2, gloss('decision or objection must state grounds and challenge procedures'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate/2, gloss('actor must communicate information to another actor'), source('celex:32024R1689/oj#art_76').

% Paragraph 1: Market surveillance authorities have competences and powers to ensure testing accords with Regulation
supervisory_powers_for_real_world_testing(Authority, Testing) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing).

must_comply(Authority, verify_compliance(testing(Testing))) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, Sandbox),
    ai_regulatory_sandbox(Sandbox).

% Paragraph 2: Authority may allow testing in derogation from Art 60(4)(f)-(g)
permitted_derogation_sandbox_testing(Authority, testing(Testing, Provider)) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, _Sandbox),
    operator(Provider).

% Paragraph 3: Authority may take decision to suspend/terminate or require modification
permitted_testing_decision(Authority, Testing, suspend_or_terminate) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident_or_non_compliance(Authority, Testing).

permitted_testing_decision(Authority, Testing, modify_aspects) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    informed_of_serious_incident_or_non_compliance(Authority, Testing).

% Paragraph 4: Decision or objection must indicate grounds and challenge procedure
required_decision_content(Decision, content(grounds, challenge_procedure)) :-
    permitted_testing_decision(_Authority, _Testing, Decision).

required_decision_content(objection(Testing), content(grounds, challenge_procedure)) :-
    testing_in_real_world_conditions(Testing).

% Paragraph 5: Authority communicates decision grounds to other Member States' authorities where system tested
must_communicate(Authority, grounds_to_other_authorities(Decision, OtherAuthorities, Testing)) :-
    market_surveillance_authority(Authority),
    permitted_testing_decision(Authority, Testing, Decision),
    market_surveillance_authority(OtherAuthorities),
    Authority \= OtherAuthorities.

% Provenance
provenance(supervisory_powers_for_real_world_testing/2, 'celex:32024R1689/oj#art_76').
provenance(must_comply/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_derogation_sandbox_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_testing_decision/3, 'celex:32024R1689/oj#art_76').
provenance(required_decision_content/2, 'celex:32024R1689/oj#art_76').
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
