% unit       : celex:32024R1689/oj#art_68
% title      : Scientific panel of independent experts
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : gpt-oss:120b-cloud
% prompt sha : a750ff84813f654c372a969d989854c45385491980559c9498bd022640fb9f3f
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_68').
:- pred implementing_act/1, gloss('Implementing act adopted by the Commission'), source('celex:32024R1689/oj#art_68').
:- pred scientific_panel/1, gloss('Scientific panel of independent experts'), source('celex:32024R1689/oj#art_68').
:- pred expert/1, gloss('Member of the scientific panel'), source('celex:32024R1689/oj#art_68').

% duties and requirements derived from Article 68

must_establish_scientific_panel(C) :-
    commission(C),
    commission(C),
    implementing_act(_A).

provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').

required_expert(E) :-
    expertise_in_ai(E),
    independent_from_provider(E),
    diligent_objective(E).

provenance(required_expert/1, 'celex:32024R1689/oj#art_68').

expertise_in_ai(E) :-
    expert(E),
    expert(E).

provenance(expertise_in_ai/1, 'celex:32024R1689/oj#art_68').

independent_from_provider(E) :-
    expert(E),
    expert(E).

provenance(independent_from_provider/1, 'celex:32024R1689/oj#art_68').

diligent_objective(E) :-
    expert(E),
    expert(E).

provenance(diligent_objective/1, 'celex:32024R1689/oj#art_68').

must_determine_number(C) :-
    commission(C),
    commission(C).

provenance(must_determine_number/1, 'celex:32024R1689/oj#art_68').

must_ensure_fair_representation(C) :-
    commission(C),
    commission(C).

provenance(must_ensure_fair_representation/1, 'celex:32024R1689/oj#art_68').

must_advise_ai_office(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).

provenance(must_advise_ai_office/1, 'celex:32024R1689/oj#art_68').

objective_alert_systemic_risk(SP, GP) :-
    scientific_panel(SP),
    scientific_panel(SP),
    general_purpose_ai_model(GP).

provenance(objective_alert_systemic_risk/2, 'celex:32024R1689/oj#art_68').

objective_develop_evaluation_tools(SP, GP) :-
    scientific_panel(SP),
    scientific_panel(SP),
    general_purpose_ai_model(GP).

provenance(objective_develop_evaluation_tools/2, 'celex:32024R1689/oj#art_68').

objective_advise_classification(SP, GP) :-
    scientific_panel(SP),
    scientific_panel(SP),
    general_purpose_ai_model(GP).

provenance(objective_advise_classification/2, 'celex:32024R1689/oj#art_68').

must_support_market_surveillance(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).

provenance(must_support_market_surveillance/1, 'celex:32024R1689/oj#art_68').

must_support_cross_border_market_surveillance(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).

provenance(must_support_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').

must_support_union_safeguard(SP) :-
    scientific_panel(SP),
    scientific_panel(SP).

provenance(must_support_union_safeguard/1, 'celex:32024R1689/oj#art_68').

must_perform_with_impartiality(E) :-
    expert(E),
    expert(E).

provenance(must_perform_with_impartiality/1, 'celex:32024R1689/oj#art_68').

must_ensure_confidentiality(E) :-
    expert(E),
    expert(E).

provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').

must_not_seek_instructions(E) :-
    expert(E),
    expert(E).

provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').

must_draw_up_declaration_of_interests(E) :-
    expert(E),
    expert(E).

provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').

must_make_declaration_public(E) :-
    expert(E),
    expert(E).

provenance(must_make_declaration_public/1, 'celex:32024R1689/oj#art_68').

must_establish_conflict_of_interest_management(AIO) :-
    ai_office(AIO),
    ai_office(AIO).

provenance(must_establish_conflict_of_interest_management/1, 'celex:32024R1689/oj#art_68').

% provenance for the unit itself
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').

% references cited in the provision
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
