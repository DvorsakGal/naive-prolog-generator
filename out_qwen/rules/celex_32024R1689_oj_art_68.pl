% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b448c1e77f29b3a89a690e845f2231821d9f63025ec35c52abedd7cb98cfff2f
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('panel of independent experts established by the Commission'), source('celex:32024R1689/oj#art_68').
:- pred member_of_scientific_panel/2, gloss('expert is a member of the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred must_select_expert(Actor, Expert), gloss('Commission selects expert based on expertise and conditions'), source('celex:32024R1689/oj#art_68').
:- pred must_advise_and_support(Actor, Object), gloss('scientific panel advises and supports the AI Office or authorities'), source('celex:32024R1689/oj#art_68').
:- pred must_perform_tasks_impartially(Actor, Task), gloss('expert performs tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure_confidentiality(Actor, Information), gloss('expert ensures confidentiality of information obtained'), source('celex:32024R1689/oj#art_68').
:- pred must_not_seek_instructions(Actor, Task), gloss('expert neither seeks nor takes instructions when exercising tasks'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up_declaration_of_interests(Actor, Declaration), gloss('expert draws up declaration of interests'), source('celex:32024R1689/oj#art_68').
:- pred must_establish_conflict_management_systems(Actor, Systems), gloss('AI Office establishes systems to manage conflicts of interest'), source('celex:32024R1689/oj#art_68').

scientific_panel(P) :-
    must_select_expert(commission, _E),
    member_of_scientific_panel(_E, P).

must_select_expert(commission, E) :-
    has_ai_expertise(E),
    independent_from_providers(E),
    able_to_carry_out_activities_diligently(E).

has_ai_expertise(E) :-
    scientific_or_technical_expertise_in_ai(E).

independent_from_providers(E) :-
    \+ provider(E),
    \+ affiliated_with_provider(E).

able_to_carry_out_activities_diligently(E) :-
    diligent(E),
    accurate(E),
    objective(E).

must_advise_and_support(scientific_panel, ai_office) :-
    scientific_panel(_P).

must_advise_and_support(scientific_panel, alert(systemic_risk(M))) :-
    scientific_panel(_P),
    general_purpose_ai_model(M),
    systemic_risk(R),
    possible_systemic_risk_at_union_level(M, R).

must_advise_and_support(scientific_panel, development(tools_and_methodologies(evaluation))) :-
    scientific_panel(_P).

must_advise_and_support(scientific_panel, advice(classification(model_with_systemic_risk))) :-
    scientific_panel(_P).

must_advise_and_support(scientific_panel, advice(classification(general_purpose_ai_models_and_systems))) :-
    scientific_panel(_P).

must_advise_and_support(scientific_panel, development(tools_and_templates)) :-
    scientific_panel(_P).

must_advise_and_support(scientific_panel, support(market_surveillance_authority(A))) :-
    scientific_panel(_P),
    market_surveillance_authority(A),
    requested_support(A).

must_advise_and_support(scientific_panel, support(cross_border_market_surveillance)) :-
    scientific_panel(_P).

must_advise_and_support(scientific_panel, support(ai_office, union_safeguard_procedure)) :-
    scientific_panel(_P).

must_perform_tasks_impartially(E, T) :-
    member_of_scientific_panel(E, _P),
    task_under_art_68_par_3(T).

must_ensure_confidentiality(E, I) :-
    member_of_scientific_panel(E, _P),
    information_obtained_in_tasks(I).

must_not_seek_instructions(E, T) :-
    member_of_scientific_panel(E, _P),
    task_under_art_68_par_3(T).

must_draw_up_declaration_of_interests(E, declaration_of_interests(E)) :-
    member_of_scientific_panel(E, _P).

must_establish_conflict_management_systems(ai_office, systems_and_procedures(conflicts_of_interest)) :-
    scientific_panel(_P).

task_under_art_68_par_3(alert(systemic_risk(_))).
task_under_art_68_par_3(development(tools_and_methodologies(evaluation))).
task_under_art_68_par_3(advice(classification(model_with_systemic_risk))).
task_under_art_68_par_3(advice(classification(general_purpose_ai_models_and_systems))).
task_under_art_68_par_3(development(tools_and_templates)).
task_under_art_68_par_3(support(market_surveillance_authority(_))).
task_under_art_68_par_3(support(cross_border_market_surveillance)).
task_under_art_68_par_3(support(ai_office, union_safeguard_procedure)).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(member_of_scientific_panel/2, 'celex:32024R1689/oj#art_68').
provenance(must_select_expert/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_impartially/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/2, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/2, 'celex:32024R1689/oj#art_68').
provenance(must_establish_conflict_management_systems/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
