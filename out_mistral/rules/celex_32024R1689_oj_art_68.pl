% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f8cb47727496470b679e4032218c22829ee3c19832b3da41c3e8c485e9215e62
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('panel of independent experts supporting enforcement activities'), source('celex:32024R1689/oj#art_68').
:- pred scientific_panel_expert/1, gloss('expert selected to serve on the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred selected_by_commission/1, gloss('expert selected by the Commission for the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred has_ai_expertise/1, gloss('expert with up-to-date scientific or technical expertise in AI'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_ai_provider/1, gloss('expert independent from any provider of AI systems or general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred diligent_accurate_objective/1, gloss('expert able to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred advises_ai_office/1, gloss('scientific panel advises and supports the AI Office'), source('celex:32024R1689/oj#art_68').
:- pred supports_market_surveillance/1, gloss('scientific panel supports market surveillance authorities at their request'), source('celex:32024R1689/oj#art_68').
:- pred supports_cross_border_market_surveillance/1, gloss('scientific panel supports cross-border market surveillance activities'), source('celex:32024R1689/oj#art_68').
:- pred supports_union_safeguard_procedure/1, gloss('scientific panel supports AI Office in Union safeguard procedure'), source('celex:32024R1689/oj#art_68').
:- pred performs_tasks_impartially/1, gloss('expert performs tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred ensures_confidentiality/1, gloss('expert ensures confidentiality of information and data obtained'), source('celex:32024R1689/oj#art_68').
:- pred no_instructions_from_anyone/1, gloss('expert neither seeks nor takes instructions from anyone'), source('celex:32024R1689/oj#art_68').
:- pred declaration_of_interests/1, gloss('expert draws up a declaration of interests made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred conflict_of_interest_management/1, gloss('AI Office establishes systems to manage and prevent conflicts of interest'), source('celex:32024R1689/oj#art_68').
:- pred alerts_systemic_risk/1, gloss('scientific panel alerts AI Office of possible systemic risks at Union level'), source('celex:32024R1689/oj#art_68').
:- pred contributes_to_evaluation_tools/1, gloss('scientific panel contributes to tools and methodologies for evaluating capabilities'), source('celex:32024R1689/oj#art_68').
:- pred advises_on_classification/1, gloss('scientific panel provides advice on classification of general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred contributes_to_tools_and_templates/1, gloss('scientific panel contributes to development of tools and templates'), source('celex:32024R1689/oj#art_68').
:- pred fair_gender_representation/1, gloss('Commission ensures fair gender representation on the panel'), source('celex:32024R1689/oj#art_68').
:- pred fair_geographical_representation/1, gloss('Commission ensures fair geographical representation on the panel'), source('celex:32024R1689/oj#art_68').

must_establish_scientific_panel(commission).

scientific_panel(P) :-
    scientific_panel_expert(E),
    member(E, P).

scientific_panel_expert(E) :-
    selected_by_commission(E),
    has_ai_expertise(E),
    independent_from_ai_provider(E),
    diligent_accurate_objective(E).

selected_by_commission(E) :-
    scientific_panel_expert(E).

has_ai_expertise(E) :-
    scientific_panel_expert(E).

independent_from_ai_provider(E) :-
    scientific_panel_expert(E),
    \+ provider_of_ai_systems_or_gpai_models(E).

provider_of_ai_systems_or_gpai_models(E) :-
    provider(E).
provider_of_ai_systems_or_gpai_models(E) :-
    general_purpose_ai_model_provider(E).

general_purpose_ai_model_provider(E) :-
    provider(E),
    general_purpose_ai_model(M),
    develops(E, M).

diligent_accurate_objective(E) :-
    scientific_panel_expert(E).

advises_ai_office(P) :-
    scientific_panel(P).

supports_market_surveillance(P) :-
    scientific_panel(P),
    market_surveillance_authority(A),
    requested_by(A).

supports_cross_border_market_surveillance(P) :-
    scientific_panel(P).

supports_union_safeguard_procedure(P) :-
    scientific_panel(P),
    ai_office(O),
    supports(O).

alerts_systemic_risk(P) :-
    scientific_panel(P),
    ai_office(O),
    alerts(O).

contributes_to_evaluation_tools(P) :-
    scientific_panel(P).

advises_on_classification(P) :-
    scientific_panel(P).

contributes_to_tools_and_templates(P) :-
    scientific_panel(P).

performs_tasks_impartially(E) :-
    scientific_panel_expert(E).

ensures_confidentiality(E) :-
    scientific_panel_expert(E).

no_instructions_from_anyone(E) :-
    scientific_panel_expert(E).

declaration_of_interests(E) :-
    scientific_panel_expert(E),
    publicly_available(declaration_of_interests(E)).

conflict_of_interest_management :-
    ai_office(O),
    establishes_systems(O, manage_prevent_conflicts_of_interest).

fair_gender_representation :-
    scientific_panel(P),
    commission_ensures(P, fair_gender_representation).

fair_geographical_representation :-
    scientific_panel(P),
    commission_ensures(P, fair_geographical_representation).

must_determine_expert_number(commission, scientific_panel).

must_consult_board(commission, scientific_panel).

must_ensure_fair_representation(commission, scientific_panel).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel_expert/1, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(has_ai_expertise/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_ai_provider/1, 'celex:32024R1689/oj#art_68').
provenance(diligent_accurate_objective/1, 'celex:32024R1689/oj#art_68').
provenance(advises_ai_office/1, 'celex:32024R1689/oj#art_68').
provenance(supports_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(supports_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(supports_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(performs_tasks_impartially/1, 'celex:32024R1689/oj#art_68').
provenance(ensures_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(no_instructions_from_anyone/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(conflict_of_interest_management/1, 'celex:32024R1689/oj#art_68').
provenance(alerts_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_evaluation_tools/1, 'celex:32024R1689/oj#art_68').
provenance(advises_on_classification/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_tools_and_templates/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_representation/1, 'celex:32024R1689/oj#art_68').
provenance(fair_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_expert_number/2, 'celex:32024R1689/oj#art_68').
provenance(must_consult_board/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_representation/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
