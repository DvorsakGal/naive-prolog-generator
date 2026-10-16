% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : f62052f0048a539320abcdee2e3b15eeb22e6a0455ac8fc20c1e990192b1e18a
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts established by the Commission'), source('celex:32024R1689/oj#art_68').
:- pred scientific_panel_expert/1, gloss('expert selected to serve on the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred selected_by_commission/1, gloss('expert selected by the Commission'), source('celex:32024R1689/oj#art_68').
:- pred up_to_date_expertise_in_ai/1, gloss('up-to-date scientific or technical expertise in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred particular_expertise_and_competence_in_ai/1, gloss('having particular expertise and competence and scientific or technical expertise in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_ai_provider/1, gloss('independence from any provider of AI systems or general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred able_to_carry_out_activities_diligently/1, gloss('ability to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred fair_gender_and_geographical_representation/1, gloss('fair gender and geographical representation on the panel'), source('celex:32024R1689/oj#art_68').
:- pred advises_and_supports_ai_office/1, gloss('scientific panel advises and supports the AI Office'), source('celex:32024R1689/oj#art_68').
:- pred supports_implementation_and_enforcement/1, gloss('supports implementation and enforcement of the regulation as regards general-purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred alerts_ai_office_of_systemic_risks/1, gloss('alerts the AI Office of possible systemic risks at Union level of general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred contributes_to_tools_and_methodologies/1, gloss('contributes to development of tools and methodologies for evaluating capabilities of general-purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred provides_advice_on_classification_systemic_risk/1, gloss('provides advice on classification of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_68').
:- pred provides_advice_on_classification_various_models/1, gloss('provides advice on classification of various general-purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred contributes_to_tools_and_templates/1, gloss('contributes to development of tools and templates'), source('celex:32024R1689/oj#art_68').
:- pred supports_market_surveillance_authorities/1, gloss('supports work of market surveillance authorities at their request'), source('celex:32024R1689/oj#art_68').
:- pred supports_cross_border_market_surveillance/1, gloss('supports cross-border market surveillance activities'), source('celex:32024R1689/oj#art_68').
:- pred supports_union_safeguard_procedure/1, gloss('supports AI Office in carrying out duties in context of Union safeguard procedure'), source('celex:32024R1689/oj#art_68').
:- pred performs_tasks_with_impartiality_and_objectivity/1, gloss('expert performs tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred ensures_confidentiality_of_information/1, gloss('expert ensures confidentiality of information and data obtained in carrying out tasks'), source('celex:32024R1689/oj#art_68').
:- pred does_not_seek_or_take_instructions/1, gloss('expert neither seeks nor takes instructions from anyone when exercising tasks'), source('celex:32024R1689/oj#art_68').
:- pred declaration_of_interests_publicly_available/1, gloss('declaration of interests drawn up by expert and made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred ai_office_establishes_conflict_of_interest_systems/1, gloss('AI Office establishes systems and procedures to actively manage and prevent potential conflicts of interest'), source('celex:32024R1689/oj#art_68').
:- pred implementing_act_provisions_on_alerts_and_assistance/1, gloss('implementing act includes provisions on conditions, procedures and detailed arrangements for issuing alerts and requesting AI Office assistance'), source('celex:32024R1689/oj#art_68').

must_establish_scientific_panel(commission).

scientific_panel(P) :-
    must_establish_scientific_panel(commission),
    P = scientific_panel.

scientific_panel_expert(E) :-
    scientific_panel(P),
    member_of_panel(E, P).

selected_by_commission(E) :-
    scientific_panel_expert(E).

up_to_date_expertise_in_ai(E) :-
    scientific_panel_expert(E).

scientific_panel_expert(E) :-
    selected_by_commission(E),
    up_to_date_expertise_in_ai(E),
    particular_expertise_and_competence_in_ai(E),
    independent_from_ai_provider(E),
    able_to_carry_out_activities_diligently(E).

fair_gender_and_geographical_representation(P) :-
    scientific_panel(P).

advises_and_supports_ai_office(P) :-
    scientific_panel(P).

supports_implementation_and_enforcement(P) :-
    scientific_panel(P).

alerts_ai_office_of_systemic_risks(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).

contributes_to_tools_and_methodologies(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).

provides_advice_on_classification_systemic_risk(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).

provides_advice_on_classification_various_models(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).

contributes_to_tools_and_templates(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).

supports_market_surveillance_authorities(P) :-
    scientific_panel(P).

supports_cross_border_market_surveillance(P) :-
    scientific_panel(P).

supports_union_safeguard_procedure(P) :-
    scientific_panel(P).

performs_tasks_with_impartiality_and_objectivity(E) :-
    scientific_panel_expert(E).

ensures_confidentiality_of_information(E) :-
    scientific_panel_expert(E).

does_not_seek_or_take_instructions(E) :-
    scientific_panel_expert(E).

declaration_of_interests_publicly_available(E) :-
    scientific_panel_expert(E).

ai_office_establishes_conflict_of_interest_systems(ai_office).

implementing_act_provisions_on_alerts_and_assistance(A) :-
    A = implementing_act,
    must_establish_scientific_panel(commission).

must_ensure_fair_representation(commission, scientific_panel).

must_consult_board_on_expert_number(commission).

must_ensure_confidentiality_systems(ai_office).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel_expert/1, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(up_to_date_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_and_competence_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_ai_provider/1, 'celex:32024R1689/oj#art_68').
provenance(able_to_carry_out_activities_diligently/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_and_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(advises_and_supports_ai_office/1, 'celex:32024R1689/oj#art_68').
provenance(supports_implementation_and_enforcement/1, 'celex:32024R1689/oj#art_68').
provenance(alerts_ai_office_of_systemic_risks/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_tools_and_methodologies/1, 'celex:32024R1689/oj#art_68').
provenance(provides_advice_on_classification_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(provides_advice_on_classification_various_models/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_tools_and_templates/1, 'celex:32024R1689/oj#art_68').
provenance(supports_market_surveillance_authorities/1, 'celex:32024R1689/oj#art_68').
provenance(supports_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(supports_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(performs_tasks_with_impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(ensures_confidentiality_of_information/1, 'celex:32024R1689/oj#art_68').
provenance(does_not_seek_or_take_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(ai_office_establishes_conflict_of_interest_systems/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act_provisions_on_alerts_and_assistance/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_representation/2, 'celex:32024R1689/oj#art_68').
provenance(must_consult_board_on_expert_number/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality_systems/1, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
