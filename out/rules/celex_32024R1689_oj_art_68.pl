% unit       : celex:32024R1689/oj#art_68
% title      : Scientific panel of independent experts
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : gpt-oss:120b-cloud
% prompt sha : 73b2f67c66a8671e34286edf08170433981e9bc67dea1e42b69657600007ed4f
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
%--- Declarations of new predicates -------------------------------------------------
:- pred scientific_panel/1, gloss('panel of independent experts established under the regulation'), source('celex:32024R1689/oj#art_68').
:- pred expert/1, gloss('member of the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred implementing_act/1, gloss('act adopted by the Commission to implement provisions'), source('celex:32024R1689/oj#art_68').

%--- Facts -------------------------------------------------------------------------
% Commission must make provisions for the scientific panel
must_make_provisions(commission, scientific_panel) .

% The implementing act must be adopted in accordance with the examination procedure
required_adoption_of_implementing_act(Act) :-
    implementing_act(Act).

% The Commission determines the number of experts and ensures fair representation
must_determine_number_of_experts(commission) .
must_ensure_fair_gender_and_geographical_representation(commission) .

% Experts are selected by the Commission
selected_by_commission(Expert) :-
    expert(Expert).

% Conditions that each expert must satisfy
required_expert_condition(Expert, expertise_in_ai) :-
    expert(Expert).

required_expert_condition(Expert, independence_from_providers) :-
    expert(Expert).

required_expert_condition(Expert, diligence_and_objectivity) :-
    expert(Expert).

% The scientific panel must advise and support the AI Office
must_advise_and_support(scientific_panel, Office) :-
    ai_office(Office).

% Objectives of the scientific panel (tasks it shall perform)
objective_alert_systemic_risk(scientific_panel) .
objective_develop_evaluation_tools(scientific_panel) .
objective_provide_classification_advice(scientific_panel) .
objective_support_market_surveillance(scientific_panel) .
objective_support_cross_border_surveillance(scientific_panel) .
objective_support_ai_office_safeguard_procedure(scientific_panel) .

% Duties of each expert
must_perform_with_impartiality_and_objectivity(Expert) :-
    expert(Expert).

must_ensure_confidentiality(Expert) :-
    expert(Expert).

must_not_seek_instructions(Expert) :-
    expert(Expert).

must_draw_up_declaration_of_interests(Expert) :-
    expert(Expert).

% AI Office must manage conflicts of interest
must_establish_conflict_of_interest_management(Office) :-
    ai_office(Office).

% The implementing act must contain provisions for alerts and assistance requests
required_provision_in_implementing_act(Act, scientific_panel_alerts_and_assistance) :-
    implementing_act(Act).

%--- Signature entities needed for rules -------------------------------------------
ai_office('ai_office') .
scientific_panel('panel') .
expert('expert_1') .
expert('expert_2') .
implementing_act('implementing_act_1') .

%--- Provenance --------------------------------------------------------------------
provenance(must_make_provisions/2, 'celex:32024R1689/oj#art_68').
provenance(required_adoption_of_implementing_act/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number_of_experts/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_gender_and_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(required_expert_condition/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(objective_alert_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(objective_develop_evaluation_tools/1, 'celex:32024R1689/oj#art_68').
provenance(objective_provide_classification_advice/1, 'celex:32024R1689/oj#art_68').
provenance(objective_support_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(objective_support_cross_border_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(objective_support_ai_office_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(must_perform_with_impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_conflict_of_interest_management/1, 'celex:32024R1689/oj#art_68').
provenance(required_provision_in_implementing_act/2, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_68').

%--- References --------------------------------------------------------------------
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
