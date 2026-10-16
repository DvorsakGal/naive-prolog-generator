% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cae0c78ea509fe30a6e4bee9be52563fd22c7cdbf578cf27c8eb996b858d8fc4
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred must_encourage_codes_of_conduct/2, gloss('AI Office and Member States shall encourage and facilitate drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate_codes_of_conduct/2, gloss('AI Office and Member States shall facilitate drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_voluntary_application/1, gloss('codes of conduct for voluntary application of specific requirements to AI systems'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_governance_mechanism/1, gloss('codes of conduct including related governance mechanisms'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_objective/1, gloss('codes of conduct with clear objectives and key performance indicators'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_kpi/1, gloss('key performance indicators to measure achievement of objectives'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_element/1, gloss('element included in codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_ethical_guidelines/1, gloss('applicable elements from Union ethical guidelines for trustworthy AI'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_environmental_sustainability/1, gloss('assessing and minimising impact on environmental sustainability'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_energy_efficient/1, gloss('energy-efficient programming and techniques for efficient design, training and use'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_ai_literacy/1, gloss('promoting AI literacy of persons dealing with development, operation and use'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_inclusive_design/1, gloss('facilitating inclusive and diverse design of AI systems'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_inclusive_teams/1, gloss('establishment of inclusive and diverse development teams'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_stakeholder_participation/1, gloss('promotion of stakeholders participation in design process'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_vulnerable_persons/1, gloss('assessing and preventing negative impact on vulnerable persons or groups'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_accessibility/1, gloss('accessibility for persons with a disability'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_gender_equality/1, gloss('impact on gender equality'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_drawn_up_by/2, gloss('codes of conduct drawn up by actor'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_involvement/1, gloss('involvement of interested stakeholders and representative organisations'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_cover_systems/2, gloss('codes of conduct cover AI systems taking into account similarity of intended purpose'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account_sme_needs/2, gloss('AI Office and Member States shall take into account specific interests and needs of SMEs including start-ups'), source('celex:32024R1689/oj#art_95').
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_95').
:- pred start_up/1, gloss('start-up enterprise'), source('celex:32024R1689/oj#art_95').

must_encourage_codes_of_conduct(ai_office, codes_of_conduct_voluntary_application(C)) :-
    codes_of_conduct_voluntary_application(C),
    codes_of_conduct_governance_mechanism(C),
    voluntary_application_requirements(C, S),
    \+ high_risk_ai_system(S).

must_encourage_codes_of_conduct(member_state(M), codes_of_conduct_voluntary_application(C)) :-
    codes_of_conduct_voluntary_application(C),
    codes_of_conduct_governance_mechanism(C),
    voluntary_application_requirements(C, S),
    \+ high_risk_ai_system(S).

must_facilitate_codes_of_conduct(ai_office, codes_of_conduct_objective(C)) :-
    codes_of_conduct_objective(C),
    codes_of_conduct_kpi(C),
    voluntary_application_requirements(C, _S).

must_facilitate_codes_of_conduct(member_state(M), codes_of_conduct_objective(C)) :-
    codes_of_conduct_objective(C),
    codes_of_conduct_kpi(C),
    voluntary_application_requirements(C, _S).

codes_of_conduct_element(C, ethical_guidelines) :-
    codes_of_conduct_ethical_guidelines(C).

codes_of_conduct_element(C, environmental_sustainability) :-
    codes_of_conduct_environmental_sustainability(C),
    codes_of_conduct_energy_efficient(C).

codes_of_conduct_element(C, ai_literacy) :-
    codes_of_conduct_ai_literacy(C).

codes_of_conduct_element(C, inclusive_design) :-
    codes_of_conduct_inclusive_design(C),
    codes_of_conduct_inclusive_teams(C),
    codes_of_conduct_stakeholder_participation(C).

codes_of_conduct_element(C, vulnerable_persons) :-
    codes_of_conduct_vulnerable_persons(C),
    codes_of_conduct_accessibility(C).

codes_of_conduct_element(C, gender_equality) :-
    codes_of_conduct_gender_equality(C).

codes_of_conduct_drawn_up_by(C, provider(P)) :-
    provider(P).

codes_of_conduct_drawn_up_by(C, deployer(D)) :-
    deployer(D).

codes_of_conduct_drawn_up_by(C, organisation(O)) :-
    organisation_representing(O, providers_or_deployers).

codes_of_conduct_drawn_up_by(C, organisation(O)) :-
    organisation_representing(O, providers_or_deployers),
    codes_of_conduct_involvement(C).

codes_of_conduct_cover_systems(C, S) :-
    ai_system(S),
    intended_purpose(S, P),
    similar_intended_purpose(S, P).

must_take_into_account_sme_needs(ai_office, sme_needs(S)) :-
    sme(S).

must_take_into_account_sme_needs(ai_office, sme_needs(S)) :-
    start_up(S).

must_take_into_account_sme_needs(member_state(M), sme_needs(S)) :-
    sme(S).

must_take_into_account_sme_needs(member_state(M), sme_needs(S)) :-
    start_up(S).

provenance(must_encourage_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_voluntary_application/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_governance_mechanism/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_objective/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_kpi/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_element/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_ethical_guidelines/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_environmental_sustainability/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_energy_efficient/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_ai_literacy/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_inclusive_design/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_inclusive_teams/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_stakeholder_participation/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_vulnerable_persons/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_accessibility/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_gender_equality/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_involvement/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_cover_systems/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_needs/2, 'celex:32024R1689/oj#art_95').
provenance(sme/1, 'celex:32024R1689/oj#art_95').
provenance(start_up/1, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
