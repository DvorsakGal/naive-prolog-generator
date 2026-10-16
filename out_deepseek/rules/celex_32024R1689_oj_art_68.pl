% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3a90024bbda7cdf6e918df372dffdbcaeebfc36edce6fddafa27bff1f4542fde
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_68').
:- pred expert_on_scientific_panel/1, gloss('expert selected for the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred systemic_risk_at_union_level/1, gloss('possible systemic risk at Union level'), source('celex:32024R1689/oj#art_68').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_68').

must_establish(Commission, scientific_panel) :-
    ai_office(_).

scientific_panel(P) :-
    expert_on_scientific_panel(E),
    member(E, P).

expert_on_scientific_panel(E) :-
    selected_by_commission(E),
    expertise_in_ai(E),
    particular_expertise_and_competence(E),
    independent_from_providers(E),
    ability_to_carry_out_activities_diligently(E).

selected_by_commission(E) :-
    expert_on_scientific_panel(E).

expertise_in_ai(E) :-
    expert_on_scientific_panel(E).

particular_expertise_and_competence(E) :-
    expert_on_scientific_panel(E).

independent_from_providers(E) :-
    expert_on_scientific_panel(E),
    \+ provider_of_ai_systems_or_models(E).

ability_to_carry_out_activities_diligently(E) :-
    expert_on_scientific_panel(E).

must_determine_number_of_experts(Commission, scientific_panel) :-
    consultation_with_board(Commission).

must_ensure_fair_representation(Commission, scientific_panel) :-
    gender_representation(scientific_panel),
    geographical_representation(scientific_panel).

must_advise_and_support(scientific_panel, ai_office) :-
    task_supporting_implementation_and_enforcement(scientific_panel),
    task_supporting_market_surveillance(scientific_panel),
    task_supporting_cross_border_activities(scientific_panel),
    task_supporting_safeguard_procedure(scientific_panel).

task_supporting_implementation_and_enforcement(P) :-
    scientific_panel(P),
    alerting_possible_systemic_risks(P),
    contributing_to_tools_and_methodologies(P),
    advising_on_classification_systemic_risk(P),
    advising_on_classification_models_and_systems(P),
    contributing_to_tools_and_templates(P).

alerting_possible_systemic_risks(P) :-
    scientific_panel(P),
    systemic_risk_at_union_level(R),
    general_purpose_ai_model(M),
    alerts(P, ai_office, systemic_risk(M, R)).

contributing_to_tools_and_methodologies(P) :-
    scientific_panel(P),
    general_purpose_ai_model(M),
    contributes_to(P, tools_and_methodologies(evaluating_capabilities(M))).

advising_on_classification_systemic_risk(P) :-
    scientific_panel(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_advice_on(P, classification(M)).

advising_on_classification_models_and_systems(P) :-
    scientific_panel(P),
    general_purpose_ai_model(M),
    general_purpose_ai_system(S),
    provides_advice_on(P, classification(M, S)).

contributing_to_tools_and_templates(P) :-
    scientific_panel(P),
    contributes_to(P, tools_and_templates).

task_supporting_market_surveillance(P) :-
    scientific_panel(P),
    market_surveillance_authority(A),
    supports(P, A).

task_supporting_cross_border_activities(P) :-
    scientific_panel(P),
    cross_border_market_surveillance(A),
    supports(P, A).

task_supporting_safeguard_procedure(P) :-
    scientific_panel(P),
    union_safeguard_procedure(U),
    supports(P, ai_office, U).

must_perform_tasks_with_impartiality(E) :-
    expert_on_scientific_panel(E).

must_ensure_confidentiality(E) :-
    expert_on_scientific_panel(E).

must_not_seek_instructions(E) :-
    expert_on_scientific_panel(E).

must_draw_up_declaration_of_interests(E) :-
    expert_on_scientific_panel(E).

must_make_declaration_publicly_available(ai_office, declaration_of_interests(E)) :-
    expert_on_scientific_panel(E).

must_establish_systems_to_manage_conflicts(ai_office) :-
    scientific_panel(_).

must_include_provisions_on_conditions(implementing_act, scientific_panel) :-
    scientific_panel(P),
    alerts(P, _, _),
    requests_assistance(P, ai_office).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert_on_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_68').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number_of_experts/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_representation/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_with_impartiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_make_declaration_publicly_available/2, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems_to_manage_conflicts/1, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions_on_conditions/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
