% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 65eb9d3905f15eb5aa352b6d587a4fe26e6c57766c6c61d7b745094201d08b61
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred code_of_conduct/1, gloss('code of conduct for voluntary application of requirements'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct_governance_mechanism/1, gloss('governance mechanism related to code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred fosters_voluntary_application/2, gloss('fosters voluntary application of requirements to systems'), source('celex:32024R1689/oj#art_95').
:- pred applicable_elements_trustworthy_ai/1, gloss('applicable elements from Union ethical guidelines for trustworthy AI'), source('celex:32024R1689/oj#art_95').
:- pred assess_minimise_environmental_sustainability_impact/1, gloss('assessing and minimising impact on environmental sustainability'), source('celex:32024R1689/oj#art_95').
:- pred energy_efficient_programming/1, gloss('energy-efficient programming and techniques'), source('celex:32024R1689/oj#art_95').
:- pred promote_ai_literacy/1, gloss('promoting AI literacy'), source('celex:32024R1689/oj#art_95').
:- pred inclusive_diverse_design/1, gloss('facilitating inclusive and diverse design of AI systems'), source('celex:32024R1689/oj#art_95').
:- pred inclusive_diverse_development_teams/1, gloss('establishment of inclusive and diverse development teams'), source('celex:32024R1689/oj#art_95').
:- pred stakeholders_participation/1, gloss('promotion of stakeholders participation in design process'), source('celex:32024R1689/oj#art_95').
:- pred assess_prevent_negative_impact_vulnerable/1, gloss('assessing and preventing negative impact on vulnerable persons'), source('celex:32024R1689/oj#art_95').
:- pred accessibility_disability/1, gloss('accessibility for persons with a disability'), source('celex:32024R1689/oj#art_95').
:- pred gender_equality/1, gloss('gender equality'), source('celex:32024R1689/oj#art_95').
:- pred drawn_up_by/2, gloss('code of conduct drawn up by party'), source('celex:32024R1689/oj#art_95').
:- pred interested_stakeholder/1, gloss('interested stakeholder in code of conduct development'), source('celex:32024R1689/oj#art_95').
:- pred civil_society_organisation/1, gloss('civil society organisation'), source('celex:32024R1689/oj#art_95').
:- pred academia/1, gloss('academic institution or researcher'), source('celex:32024R1689/oj#art_95').
:- pred similar_intended_purpose/2, gloss('systems with similar intended purpose'), source('celex:32024R1689/oj#art_95').

must_encourage_and_facilitate(ai_office, drawing_up(code_of_conduct(C))) :-
    ai_office,
    code_of_conduct(C),
    fosters_voluntary_application(C, requirements_in_chapter_3_section_2),
    applies_to_other_than_high_risk(C).

must_encourage_and_facilitate(member_state, drawing_up(code_of_conduct(C))) :-
    member_state,
    code_of_conduct(C),
    fosters_voluntary_application(C, requirements_in_chapter_3_section_2),
    applies_to_other_than_high_risk(C).

applies_to_other_than_high_risk(C) :-
    code_of_conduct(C),
    ai_system(S),
    \+ high_risk_ai_system(S),
    applies_to(C, S).

fosters_voluntary_application(C, requirements_in_chapter_3_section_2) :-
    code_of_conduct(C),
    code_of_conduct_governance_mechanism(C),
    takes_into_account_technical_solutions(C),
    takes_into_account_industry_best_practices(C).

must_encourage_and_facilitate(ai_office, drawing_up(code_of_conduct(C))) :-
    ai_office,
    code_of_conduct(C),
    voluntary_application_by_deployers(C),
    applies_to_all_ai_systems(C),
    clear_objectives(C),
    key_performance_indicators(C).

must_encourage_and_facilitate(member_state, drawing_up(code_of_conduct(C))) :-
    member_state,
    code_of_conduct(C),
    voluntary_application_by_deployers(C),
    applies_to_all_ai_systems(C),
    clear_objectives(C),
    key_performance_indicators(C).

voluntary_application_by_deployers(C) :-
    code_of_conduct(C),
    deployer(_D),
    applies_to(C, _D).

applies_to_all_ai_systems(C) :-
    code_of_conduct(C),
    ai_system(_S),
    applies_to(C, _S).

applicable_elements_trustworthy_ai(C) :-
    code_of_conduct(C),
    union_ethical_guidelines_trustworthy_ai(G),
    includes_elements(C, G).

assess_minimise_environmental_sustainability_impact(C) :-
    code_of_conduct(C),
    energy_efficient_programming(C),
    efficient_design_training_use(C).

promote_ai_literacy(C) :-
    code_of_conduct(C),
    ai_literacy(_L),
    persons_dealing_with_development_operation_use(_P).

inclusive_diverse_design(C) :-
    code_of_conduct(C),
    inclusive_diverse_development_teams(C),
    stakeholders_participation(C).

assess_prevent_negative_impact_vulnerable(C) :-
    code_of_conduct(C),
    accessibility_disability(C),
    gender_equality(C).

drawn_up_by(C, provider(P)) :-
    code_of_conduct(C),
    provider(P).

drawn_up_by(C, deployer(D)) :-
    code_of_conduct(C),
    deployer(D).

drawn_up_by(C, organisation_representing_providers_or_deployers(O)) :-
    code_of_conduct(C),
    represents(O, provider(_)),
    represents(O, deployer(_)).

drawn_up_by(C, both_providers_and_deployers) :-
    code_of_conduct(C),
    drawn_up_by(C, provider(_)),
    drawn_up_by(C, deployer(_)).

involves_stakeholders(C, S) :-
    code_of_conduct(C),
    interested_stakeholder(S).

involves_stakeholders(C, O) :-
    code_of_conduct(C),
    representative_organisation(O).

involves_stakeholders(C, O) :-
    code_of_conduct(C),
    civil_society_organisation(O).

involves_stakeholders(C, A) :-
    code_of_conduct(C),
    academia(A).

covers_similar_intended_purpose(C, S1, S2) :-
    code_of_conduct(C),
    ai_system(S1),
    ai_system(S2),
    similar_intended_purpose(S1, S2),
    covers(C, S1),
    covers(C, S2).

must_take_into_account_sme_needs(ai_office, drawing_up(code_of_conduct(C))) :-
    ai_office,
    code_of_conduct(C),
    sme_or_start_up(_Sme).

must_take_into_account_sme_needs(member_state, drawing_up(code_of_conduct(C))) :-
    member_state,
    code_of_conduct(C),
    sme_or_start_up(_Sme).

provenance(code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_governance_mechanism/1, 'celex:32024R1689/oj#art_95').
provenance(fosters_voluntary_application/2, 'celex:32024R1689/oj#art_95').
provenance(applicable_elements_trustworthy_ai/1, 'celex:32024R1689/oj#art_95').
provenance(assess_minimise_environmental_sustainability_impact/1, 'celex:32024R1689/oj#art_95').
provenance(energy_efficient_programming/1, 'celex:32024R1689/oj#art_95').
provenance(promote_ai_literacy/1, 'celex:32024R1689/oj#art_95').
provenance(inclusive_diverse_design/1, 'celex:32024R1689/oj#art_95').
provenance(inclusive_diverse_development_teams/1, 'celex:32024R1689/oj#art_95').
provenance(stakeholders_participation/1, 'celex:32024R1689/oj#art_95').
provenance(assess_prevent_negative_impact_vulnerable/1, 'celex:32024R1689/oj#art_95').
provenance(accessibility_disability/1, 'celex:32024R1689/oj#art_95').
provenance(gender_equality/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(interested_stakeholder/1, 'celex:32024R1689/oj#art_95').
provenance(civil_society_organisation/1, 'celex:32024R1689/oj#art_95').
provenance(academia/1, 'celex:32024R1689/oj#art_95').
provenance(similar_intended_purpose/2, 'celex:32024R1689/oj#art_95').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(applies_to_other_than_high_risk/1, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_by_deployers/1, 'celex:32024R1689/oj#art_95').
provenance(applies_to_all_ai_systems/1, 'celex:32024R1689/oj#art_95').
provenance(covers_similar_intended_purpose/3, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
