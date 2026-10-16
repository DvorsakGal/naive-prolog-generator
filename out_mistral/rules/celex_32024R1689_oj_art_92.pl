% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8c3528812c890f052cc620aa9b738fee6d7335a89e8e3240d677050fcf2a4d9a
% cached     : False
% title      : Power to conduct evaluations
:- pred may_conduct_evaluation/2, gloss('AI Office may conduct evaluation of a general-purpose AI model for a purpose'), source('celex:32024R1689/oj#art_92').
:- pred evaluation_purpose_assess_compliance/1, gloss('evaluation purpose is to assess provider compliance with obligations'), source('celex:32024R1689/oj#art_92').
:- pred evaluation_purpose_investigate_systemic_risk/1, gloss('evaluation purpose is to investigate systemic risks at Union level'), source('celex:32024R1689/oj#art_92').
:- pred insufficient_information_gathered/1, gloss('information gathered pursuant to Article 91 is insufficient'), source('celex:32024R1689/oj#art_92').
:- pred qualified_alert_from_scientific_panel/1, gloss('qualified alert from scientific panel received'), source('celex:32024R1689/oj#art_92').
:- pred may_appoint_independent_expert/2, gloss('Commission may appoint independent expert to carry out evaluation on its behalf'), source('celex:32024R1689/oj#art_92').
:- pred independent_expert_from_scientific_panel/1, gloss('independent expert appointed from scientific panel'), source('celex:32024R1689/oj#art_92').
:- pred independent_expert_meets_criteria/1, gloss('independent expert meets criteria outlined in Article 68(2)'), source('celex:32024R1689/oj#art_92').
:- pred may_request_access/3, gloss('Commission may request access to general-purpose AI model through specified means'), source('celex:32024R1689/oj#art_92').
:- pred access_request_states/4, gloss('access request states legal basis, purpose, reasons, and period'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_requested_information/2, gloss('provider or representative must supply requested information'), source('celex:32024R1689/oj#art_92').
:- pred must_provide_access_on_behalf/2, gloss('authorised representative must provide access on behalf of provider'), source('celex:32024R1689/oj#art_92').
:- pred shall_adopt_implementing_act/2, gloss('Commission shall adopt implementing act setting out arrangements'), source('celex:32024R1689/oj#art_92').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_92').

may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    consulted_board.

may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    evaluation_purpose_assess_compliance(M),
    insufficient_information_gathered(M).

may_conduct_evaluation(ai_office, M) :-
    general_purpose_ai_model(M),
    evaluation_purpose_investigate_systemic_risk(M),
    general_purpose_ai_model(M),
    systemic_risk(M),
    qualified_alert_from_scientific_panel(M).

evaluation_purpose_assess_compliance(M) :-
    provider(P),
    general_purpose_ai_model(M),
    obligation_under_regulation(P).

evaluation_purpose_investigate_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

insufficient_information_gathered(M) :-
    general_purpose_ai_model(M),
    information_gathered_pursuant_to_art_91(M),
    insufficient(information_gathered_pursuant_to_art_91(M)).

qualified_alert_from_scientific_panel(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M),
    alert(qualified, scientific_panel, M).

may_appoint_independent_expert(commission, E) :-
    independent_expert(E),
    carries_out_evaluation_on_behalf_of_commission(E).

may_appoint_independent_expert(commission, E) :-
    independent_expert_from_scientific_panel(E),
    independent_expert_meets_criteria(E).

independent_expert_from_scientific_panel(E) :-
    independent_expert(E),
    member_of_scientific_panel(E).

independent_expert_meets_criteria(E) :-
    independent_expert(E),
    meets_criteria_art_68_par_2(E).

may_request_access(commission, M, Means) :-
    general_purpose_ai_model(M),
    access_means(Means),
    appropriate_technical_means(Means).

access_means(api).
access_means(source_code).
access_means(further_appropriate_technical_means).

appropriate_technical_means(api).
appropriate_technical_means(source_code).
appropriate_technical_means(further_appropriate_technical_means).

access_request_states(Request, LegalBasis, PurposeReasons, Period) :-
    request_for_access(Request),
    states_legal_basis(Request, LegalBasis),
    states_purpose_and_reasons(Request, PurposeReasons),
    sets_period(Request, Period),
    states_fines_art_101(Request).

must_supply_requested_information(Provider, Information) :-
    provider(Provider),
    general_purpose_ai_model(M),
    information_requested(Information, M),
    requested_by_commission(Information).

must_supply_requested_information(Representative, Information) :-
    authorised_representative(Representative),
    provider(Provider),
    general_purpose_ai_model(M),
    information_requested(Information, M),
    requested_by_commission(Information),
    represents(Representative, Provider).

must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    legal_person(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_law(AuthorisedPerson, Provider).

must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    company(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_statutes(AuthorisedPerson, Provider).

must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    firm(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_law(AuthorisedPerson, Provider).

must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    no_legal_personality(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_law(AuthorisedPerson, Provider).

must_provide_access_on_behalf(AuthorisedPerson, Provider) :-
    no_legal_personality(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    authorised_to_represent_by_statutes(AuthorisedPerson, Provider).

shall_adopt_implementing_act(commission, evaluations) :-
    sets_out_detailed_arrangements(evaluations),
    sets_out_conditions(evaluations),
    includes_arrangements_for_involving_independent_experts(evaluations),
    includes_procedure_for_selection(evaluations),
    adopted_in_accordance_with_examination_procedure_art_98_par_2.

may_initiate_structured_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(M),
    provider(Provider),
    prior_to_requesting_access(M).

provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_assess_compliance/1, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_investigate_systemic_risk/1, 'celex:32024R1689/oj#art_92').
provenance(insufficient_information_gathered/1, 'celex:32024R1689/oj#art_92').
provenance(qualified_alert_from_scientific_panel/1, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_expert/2, 'celex:32024R1689/oj#art_92').
provenance(independent_expert_from_scientific_panel/1, 'celex:32024R1689/oj#art_92').
provenance(independent_expert_meets_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/3, 'celex:32024R1689/oj#art_92').
provenance(access_request_states/4, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access_on_behalf/2, 'celex:32024R1689/oj#art_92').
provenance(shall_adopt_implementing_act/2, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').
