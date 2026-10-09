% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e68ae6852f8c4b20bbc63155ceb1f51e13a229fc70ce399ef1dcfef8db02d34a
% cached     : False
% title      : Scientific panel of independent experts
:- pred must_make_provisions/2, gloss('obligation of the Commission to adopt an implementing act establishing the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred selected_by_commission/1, gloss('expert chosen by the Commission for the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred required_expertise_in_ai/1, gloss('expert must have up‑to‑date scientific or technical expertise in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred required_independence_from_provider/1, gloss('expert must be independent from any provider of AI systems or general‑purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred required_diligent_objectivity/1, gloss('expert must be able to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred must_determine_number_of_experts/2, gloss('Commission shall determine the number of experts on the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure_fair_gender_geographical_representation/2, gloss('Commission shall ensure fair gender and geographical representation on the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred must_advise_and_support/2, gloss('scientific panel shall advise and support the AI Office'), source('celex:32024R1689/oj#art_68').
:- pred must_alert_ai_office_of_possible_systemic_risks/1, gloss('panel shall alert the AI Office of possible systemic risks at Union level of general‑purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred must_contribute_to_development_of_tools_and_methodologies/1, gloss('panel shall contribute to development of tools and methodologies for evaluating capabilities of general‑purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk/1, gloss('panel shall provide advice on the classification of general‑purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_68').
:- pred must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems/1, gloss('panel shall provide advice on the classification of various general‑purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred must_contribute_to_development_of_tools_and_templates/1, gloss('panel shall contribute to the development of tools and templates'), source('celex:32024R1689/oj#art_68').
:- pred must_support_market_surveillance_authorities/1, gloss('panel shall support market surveillance authorities at their request'), source('celex:32024R1689/oj#art_68').
:- pred must_support_cross_border_market_surveillance/1, gloss('panel shall support cross‑border market surveillance activities'), source('celex:32024R1689/oj#art_68').
:- pred must_support_union_safeguard_procedure/1, gloss('panel shall support the AI Office in the Union safeguard procedure'), source('celex:32024R1689/oj#art_68').
:- pred must_perform_with_impartiality_and_objectivity/1, gloss('experts shall perform their tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure_confidentiality/1, gloss('experts shall ensure confidentiality of information and data obtained'), source('celex:32024R1689/oj#art_68').
:- pred must_not_seek_or_take_instructions/1, gloss('experts shall neither seek nor take instructions from anyone'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up_declaration_of_interests/1, gloss('each expert shall draw up a declaration of interests'), source('celex:32024R1689/oj#art_68').
:- pred must_make_publicly_available/1, gloss('declaration of interests shall be made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred must_establish_systems_and_procedures/2, gloss('AI Office shall establish systems and procedures to manage and prevent conflicts of interest'), source('celex:32024R1689/oj#art_68').
:- pred must_include_provisions/2, gloss('implementing act shall include provisions on conditions, procedures and arrangements for the scientific panel'), source('celex:32024R1689/oj#art_68').

must_make_provisions(commission, scientific_panel_establishment).

selected_by_commission(Expert) :-
    expert(Expert).

required_expertise_in_ai(Expert) :-
    selected_by_commission(Expert).

required_independence_from_provider(Expert) :-
    selected_by_commission(Expert).

required_diligent_objectivity(Expert) :-
    selected_by_commission(Expert).

must_determine_number_of_experts(commission, scientific_panel).

must_ensure_fair_gender_geographical_representation(commission, scientific_panel).

must_advise_and_support(scientific_panel, ai_office).

must_alert_ai_office_of_possible_systemic_risks(scientific_panel).

must_contribute_to_development_of_tools_and_methodologies(scientific_panel).

must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk(scientific_panel).

must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems(scientific_panel).

must_contribute_to_development_of_tools_and_templates(scientific_panel).

must_support_market_surveillance_authorities(scientific_panel).

must_support_cross_border_market_surveillance(scientific_panel).

must_support_union_safeguard_procedure(scientific_panel).

must_perform_with_impartiality_and_objectivity(Expert) :-
    selected_by_commission(Expert).

must_ensure_confidentiality(Expert) :-
    selected_by_commission(Expert).

must_not_seek_or_take_instructions(Expert) :-
    selected_by_commission(Expert).

must_draw_up_declaration_of_interests(Expert) :-
    selected_by_commission(Expert).

must_make_publicly_available(declaration_of_interests(Expert)) :-
    must_draw_up_declaration_of_interests(Expert).

must_establish_systems_and_procedures(ai_office, conflict_of_interest_management).

must_include_provisions(implementing_act, scientific_panel_alerts_and_assistance).

provenance(must_make_provisions/2, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(required_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(required_independence_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(required_diligent_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(must_determine_number_of_experts/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_gender_geographical_representation/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_and_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_alert_ai_office_of_possible_systemic_risks/1, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_to_development_of_tools_and_methodologies/1, 'celex:32024R1689/oj#art_68').
provenance(must_provide_advice_on_classification_of_general_purpose_ai_models_with_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(must_provide_advice_on_classification_of_various_general_purpose_ai_models_and_systems/1, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_to_development_of_tools_and_templates/1, 'celex:32024R1689/oj#art_68').
provenance(must_support_market_surveillance_authorities/1, 'celex:32024R1689/oj#art_68').
provenance(must_support_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(must_support_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(must_perform_with_impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_or_take_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_make_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems_and_procedures/2, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
