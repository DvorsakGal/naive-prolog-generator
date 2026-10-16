% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7fd14f9ae0615cd316b7eabe00bf0c806a74d4e2cecce9d0424fc589a7ddad27
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('panel of independent experts established by Commission'), source('celex:32024R1689/oj#art_68').
:- pred expert/1, gloss('member of the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred scientific_or_technical_expertise_in_ai/1, gloss('up-to-date expertise in field of AI'), source('celex:32024R1689/oj#art_68').
:- pred particular_expertise_and_competence_in_ai/1, gloss('particular expertise and competence in AI'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_provider/1, gloss('independence from any provider of AI systems or general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred ability_to_carry_out_diligently_accurately_objectively/1, gloss('ability to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred alert_ai_office_systemic_risk/1, gloss('alert AI Office of possible systemic risks at Union level'), source('celex:32024R1689/oj#art_68').
:- pred contribute_to_evaluation_tools/1, gloss('contribute to development of tools and methodologies for evaluating capabilities'), source('celex:32024R1689/oj#art_68').
:- pred advise_classification_systemic_risk/1, gloss('provide advice on classification of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_68').
:- pred advise_classification_various/1, gloss('provide advice on classification of various general-purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred contribute_to_tools_templates/1, gloss('contribute to development of tools and templates'), source('celex:32024R1689/oj#art_68').
:- pred support_market_surveillance_authorities/1, gloss('support work of market surveillance authorities at their request'), source('celex:32024R1689/oj#art_68').
:- pred support_cross_border_market_surveillance/1, gloss('support cross-border market surveillance activities'), source('celex:32024R1689/oj#art_68').
:- pred support_union_safeguard_procedure/1, gloss('support AI Office in Union safeguard procedure'), source('celex:32024R1689/oj#art_68').
:- pred impartial_and_objective/1, gloss('perform tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred ensure_confidentiality/1, gloss('ensure confidentiality of information and data'), source('celex:32024R1689/oj#art_68').
:- pred no_external_instructions/1, gloss('neither seek nor take instructions from anyone'), source('celex:32024R1689/oj#art_68').
:- pred declaration_of_interests/1, gloss('declaration of interests made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred implementing_act_establishes_panel/1, gloss('implementing act establishing scientific panel'), source('celex:32024R1689/oj#art_68').

must_establish(commission, scientific_panel).

scientific_panel(Panel) :-
    implementing_act_establishes_panel(Panel),
    intended_to_support_enforcement(Panel).

expert(E) :-
    member_of_scientific_panel(E, Panel),
    scientific_panel(Panel).

selected_by(E, commission) :-
    expert(E),
    scientific_or_technical_expertise_in_ai(E),
    required_for_tasks(E, art_68_par_3).

required_expertise(E) :-
    expert(E),
    particular_expertise_and_competence_in_ai(E),
    scientific_or_technical_expertise_in_ai(E).

required_independence(E) :-
    expert(E),
    independent_from_provider(E).

required_diligence(E) :-
    expert(E),
    ability_to_carry_out_diligently_accurately_objectively(E).

must_determine_number(commission, experts) :-
    in_consultation_with(commission, board),
    ensure_fair_gender_representation(commission),
    ensure_fair_geographical_representation(commission).

task(scientific_panel, support_ai_office_general_purpose_ai).

task(scientific_panel, alert_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    systemic_risk(R),
    at_union_level(R).

task(scientific_panel, contribute_evaluation_tools).

task(scientific_panel, advise_classification_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

task(scientific_panel, advise_classification_various(M)) :-
    general_purpose_ai_model(M).

task(scientific_panel, contribute_tools_templates).

task(scientific_panel, support_market_surveillance_authorities(Authority)) :-
    market_surveillance_authority(Authority),
    at_request(Authority).

task(scientific_panel, support_cross_border_market_surveillance).

task(scientific_panel, support_union_safeguard_procedure).

must_perform_with_impartiality(E) :-
    expert(E),
    performing_tasks_under(E, art_68_par_3).

must_ensure_confidentiality(E) :-
    expert(E),
    performing_tasks_under(E, art_68_par_3).

must_not_take_instructions(E) :-
    expert(E),
    performing_tasks_under(E, art_68_par_3).

must_draw_up_declaration(E, interests) :-
    expert(E),
    declaration_of_interests(E).

made_publicly_available(declaration_of_interests(E)) :-
    must_draw_up_declaration(E, interests).

must_establish_systems(ai_office, conflict_of_interest_management) :-
    actively_manage_conflicts(ai_office),
    prevent_conflicts(ai_office).

must_include_provisions(implementing_act_establishes_panel(_), conditions_for_alerts).

must_include_provisions(implementing_act_establishes_panel(_), procedures_for_alerts).

must_include_provisions(implementing_act_establishes_panel(_), arrangements_for_alerts).

must_include_provisions(implementing_act_establishes_panel(_), conditions_for_assistance_requests).

must_include_provisions(implementing_act_establishes_panel(_), procedures_for_assistance_requests).

must_include_provisions(implementing_act_establishes_panel(_), arrangements_for_assistance_requests).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_or_technical_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_and_competence_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(ability_to_carry_out_diligently_accurately_objectively/1, 'celex:32024R1689/oj#art_68').
provenance(alert_ai_office_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(contribute_to_evaluation_tools/1, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_various/1, 'celex:32024R1689/oj#art_68').
provenance(contribute_to_tools_templates/1, 'celex:32024R1689/oj#art_68').
provenance(support_market_surveillance_authorities/1, 'celex:32024R1689/oj#art_68').
provenance(support_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(support_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(impartial_and_objective/1, 'celex:32024R1689/oj#art_68').
provenance(ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(no_external_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act_establishes_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(selected_by/2, 'celex:32024R1689/oj#art_68').
provenance(required_expertise/1, 'celex:32024R1689/oj#art_68').
provenance(required_independence/1, 'celex:32024R1689/oj#art_68').
provenance(required_diligence/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number/2, 'celex:32024R1689/oj#art_68').
provenance(task/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_with_impartiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_take_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration/2, 'celex:32024R1689/oj#art_68').
provenance(made_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems/2, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
