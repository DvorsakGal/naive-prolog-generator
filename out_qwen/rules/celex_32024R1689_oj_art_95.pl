% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9237384813df819c9c934d8daca5f9123604b5831c68688787e9f80f33de3103
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred code_of_conduct/1, gloss('voluntary code of conduct for AI systems'), source('celex:32024R1689/oj#art_95').
:- pred must_encourage_code_of_conduct/2, gloss('obligation to encourage drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate_code_of_conduct/2, gloss('obligation to facilitate drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_of_requirements/1, gloss('voluntary application of Chapter 3 Section 2 requirements to non-high-risk AI systems'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_of_specific_requirements/1, gloss('voluntary application of specific requirements to all AI systems based on objectives and KPIs'), source('celex:32024R1689/oj#art_95').
:- pred environmental_sustainability_objective/1, gloss('code objective regarding environmental sustainability and energy efficiency'), source('celex:32024R1689/oj#art_95').
:- pred ai_literacy_objective/1, gloss('code objective regarding promotion of AI literacy'), source('celex:32024R1689/oj#art_95').
:- pred inclusive_design_objective/1, gloss('code objective regarding inclusive and diverse design of AI systems'), source('celex:32024R1689/oj#art_95').
:- pred vulnerable_persons_impact_objective/1, gloss('code objective regarding impact on vulnerable persons, accessibility and gender equality'), source('celex:32024R1689/oj#art_95').
:- pred ethical_guidelines_element/1, gloss('code element based on Union ethical guidelines for trustworthy AI'), source('celex:32024R1689/oj#art_95').
:- pred drawn_up_by_provider/1, gloss('code drawn up by individual provider'), source('celex:32024R1689/oj#art_95').
:- pred drawn_up_by_deployer/1, gloss('code drawn up by individual deployer'), source('celex:32024R1689/oj#art_95').
:- pred drawn_up_by_representative_organisation/1, gloss('code drawn up by organisation representing providers or deployers'), source('celex:32024R1689/oj#art_95').
:- pred stakeholder_involvement/1, gloss('involvement of interested stakeholders including civil society and academia in code drafting'), source('celex:32024R1689/oj#art_95').
:- pred sme_interests_considered/1, gloss('specific interests and needs of SMEs and start-ups taken into account'), source('celex:32024R1689/oj#art_95').

must_encourage_code_of_conduct(ai_office, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).

must_encourage_code_of_conduct(member_states, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).

must_facilitate_code_of_conduct(ai_office, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).

must_facilitate_code_of_conduct(member_states, voluntary_application_of_requirements(C)) :-
    code_of_conduct(C).

must_facilitate_code_of_conduct(ai_office, voluntary_application_of_specific_requirements(C)) :-
    code_of_conduct(C).

must_facilitate_code_of_conduct(member_states, voluntary_application_of_specific_requirements(C)) :-
    code_of_conduct(C).

voluntary_application_of_requirements(C) :-
    code_of_conduct(C),
    \+ high_risk_ai_system(_S),
    intended_for_non_high_risk_systems(C).

voluntary_application_of_specific_requirements(C) :-
    code_of_conduct(C),
    has_clear_objectives(C),
    has_key_performance_indicators(C).

environmental_sustainability_objective(C) :-
    code_of_conduct(C),
    addresses_energy_efficient_programming(C).

ai_literacy_objective(C) :-
    code_of_conduct(C),
    promotes_ai_literacy(C).

inclusive_design_objective(C) :-
    code_of_conduct(C),
    promotes_inclusive_development_teams(C).

vulnerable_persons_impact_objective(C) :-
    code_of_conduct(C),
    assesses_impact_on_vulnerable_persons(C).

ethical_guidelines_element(C) :-
    code_of_conduct(C),
    incorporates_union_ethical_guidelines(C).

drawn_up_by_provider(C) :-
    code_of_conduct(C),
    provider(P),
    drafted_by(P, C).

drawn_up_by_deployer(C) :-
    code_of_conduct(C),
    deployer(D),
    drafted_by(D, C).

drawn_up_by_representative_organisation(C) :-
    code_of_conduct(C),
    representative_organisation(O),
    drafted_by(O, C).

stakeholder_involvement(C) :-
    code_of_conduct(C),
    involves_civil_society(C).

stakeholder_involvement(C) :-
    code_of_conduct(C),
    involves_academia(C).

sme_interests_considered(C) :-
    code_of_conduct(C),
    considers_sme_needs(C).

provenance(code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_encourage_code_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_code_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_specific_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(environmental_sustainability_objective/1, 'celex:32024R1689/oj#art_95').
provenance(ai_literacy_objective/1, 'celex:32024R1689/oj#art_95').
provenance(inclusive_design_objective/1, 'celex:32024R1689/oj#art_95').
provenance(vulnerable_persons_impact_objective/1, 'celex:32024R1689/oj#art_95').
provenance(ethical_guidelines_element/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by_provider/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by_deployer/1, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by_representative_organisation/1, 'celex:32024R1689/oj#art_95').
provenance(stakeholder_involvement/1, 'celex:32024R1689/oj#art_95').
provenance(sme_interests_considered/1, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
