% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : f82c6dd9a26c4dc3f70498f6c4e6f5fcb03a45b1f1a5e2859b28ead4b9f4df28
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_68').
:- pred must_establish_scientific_panel/1, gloss('Commission must establish scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred must_select_experts/2, gloss('Commission must select experts for scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred must_determine_panel_size/2, gloss('Commission must determine number of experts on panel'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure_representation/1, gloss('Commission must ensure fair gender and geographical representation'), source('celex:32024R1689/oj#art_68').
:- pred must_advise_ai_office/2, gloss('scientific panel must advise and support AI Office'), source('celex:32024R1689/oj#art_68').
:- pred must_alert_systemic_risks/2, gloss('scientific panel must alert AI Office of systemic risks'), source('celex:32024R1689/oj#art_68').
:- pred must_contribute_tools_methodologies/2, gloss('scientific panel must contribute to tools and methodologies'), source('celex:32024R1689/oj#art_68').
:- pred must_advise_classification_systemic_risk/2, gloss('scientific panel must advise on classification of systemic risk models'), source('celex:32024R1689/oj#art_68').
:- pred must_advise_classification_models/2, gloss('scientific panel must advise on classification of general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred must_contribute_tools_templates/2, gloss('scientific panel must contribute to tools and templates'), source('celex:32024R1689/oj#art_68').
:- pred must_support_market_surveillance/2, gloss('scientific panel must support market surveillance authorities'), source('celex:32024R1689/oj#art_68').
:- pred must_support_cross_border_activities/2, gloss('scientific panel must support cross-border market surveillance'), source('celex:32024R1689/oj#art_68').
:- pred must_support_safeguard_procedure/2, gloss('scientific panel must support AI Office in safeguard procedure'), source('celex:32024R1689/oj#art_68').
:- pred must_perform_tasks_impartially/1, gloss('experts must perform tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure_confidentiality/1, gloss('experts must ensure confidentiality of information'), source('celex:32024R1689/oj#art_68').
:- pred must_not_seek_instructions/1, gloss('experts must not seek or take instructions'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up_declaration_of_interests/1, gloss('each expert must draw up declaration of interests'), source('celex:32024R1689/oj#art_68').
:- pred must_make_declaration_public/1, gloss('declaration of interests must be made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred must_manage_conflicts_of_interest/1, gloss('AI Office must manage and prevent conflicts of interest'), source('celex:32024R1689/oj#art_68').
:- pred must_include_provisions_on_alerts/1, gloss('implementing act must include provisions on alerts'), source('celex:32024R1689/oj#art_68').
:- pred must_include_provisions_on_assistance/1, gloss('implementing act must include provisions on requesting assistance'), source('celex:32024R1689/oj#art_68').
:- pred expert/1, gloss('member of the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred particular_expertise_in_ai/1, gloss('has particular expertise and competence in AI'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_providers/1, gloss('independent from any provider of AI systems or models'), source('celex:32024R1689/oj#art_68').
:- pred ability_to_act_diligently/1, gloss('ability to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').

must_establish_scientific_panel(Commission) :-
    ai_office(_).

must_select_experts(Commission, Panel) :-
    scientific_panel(Panel),
    expert(E),
    particular_expertise_in_ai(E),
    independent_from_providers(E),
    ability_to_act_diligently(E).

must_determine_panel_size(Commission, Panel) :-
    scientific_panel(Panel),
    must_ensure_representation(Panel).

must_ensure_representation(Panel) :-
    scientific_panel(Panel).

must_advise_ai_office(Panel, ai_office) :-
    scientific_panel(Panel).

must_alert_systemic_risks(Panel, ai_office) :-
    scientific_panel(Panel),
    systemic_risk_classification_applies(_).

must_contribute_tools_methodologies(Panel, ai_office) :-
    scientific_panel(Panel).

must_advise_classification_systemic_risk(Panel, ai_office) :-
    scientific_panel(Panel),
    systemic_risk_classification_applies(_).

must_advise_classification_models(Panel, ai_office) :-
    scientific_panel(Panel),
    general_purpose_ai_model(_).

must_contribute_tools_templates(Panel, ai_office) :-
    scientific_panel(Panel).

must_support_market_surveillance(Panel, Authority) :-
    scientific_panel(Panel),
    market_surveillance_authority(Authority).

must_support_cross_border_activities(Panel, _) :-
    scientific_panel(Panel).

must_support_safeguard_procedure(Panel, ai_office) :-
    scientific_panel(Panel).

must_perform_tasks_impartially(E) :-
    expert(E).

must_ensure_confidentiality(E) :-
    expert(E).

must_not_seek_instructions(E) :-
    expert(E).

must_draw_up_declaration_of_interests(E) :-
    expert(E).

must_make_declaration_public(Declaration) :-
    must_draw_up_declaration_of_interests(_).

must_manage_conflicts_of_interest(ai_office).

must_include_provisions_on_alerts(ImplementingAct) :-
    must_establish_scientific_panel(_).

must_include_provisions_on_assistance(ImplementingAct) :-
    must_establish_scientific_panel(_).

provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_select_experts/2, 'celex:32024R1689/oj#art_68').
provenance(must_determine_panel_size/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_representation/1, 'celex:32024R1689/oj#art_68').
provenance(must_advise_ai_office/2, 'celex:32024R1689/oj#art_68').
provenance(must_alert_systemic_risks/2, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_tools_methodologies/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_classification_systemic_risk/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_classification_models/2, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_tools_templates/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_market_surveillance/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_cross_border_activities/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_safeguard_procedure/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_impartially/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_make_declaration_public/1, 'celex:32024R1689/oj#art_68').
provenance(must_manage_conflicts_of_interest/1, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions_on_alerts/1, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions_on_assistance/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_providers/1, 'celex:32024R1689/oj#art_68').
provenance(ability_to_act_diligently/1, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
