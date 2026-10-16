% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 939c40ee612a5e52e68b76139c4000d6cf727b34a69220e0683565f50de61ada
% cached     : False
% title      : Tasks of the Board
:- pred board/1, gloss('the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_66').
:- pred member_state/1, gloss('a Member State of the Union'), source('celex:32024R1689/oj#art_66').
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_66').
:- pred ai_board/1, gloss('the Board established under this Regulation'), source('celex:32024R1689/oj#art_66').

% Rename to avoid conflict: use ai_board for the Board
:- dynamic board/1.

% The Board's overarching duty
must_advise_and_assist(ai_board, commission_and_member_states) :-
    board(ai_board).

must_advise_and_assist(ai_board, consistent_and_effective_application).

% Facilitate consistent and effective application
objective_facilitate(ai_board, consistent_and_effective_application).

% Specific tasks the Board may undertake

% (a) contribute to coordination among national competent authorities
may_contribute_to_coordination(ai_board, national_competent_authorities) :-
    board(ai_board).

may_support_joint_activities(ai_board, market_surveillance_authorities) :-
    board(ai_board).

% (b) collect and share technical and regulatory expertise and best practices
may_collect_and_share_expertise(ai_board, member_states) :-
    board(ai_board).

may_share_best_practices(ai_board, member_states) :-
    board(ai_board).

% (c) provide advice on implementation, in particular enforcement of rules on GPAI models
may_provide_advice_on_implementation(ai_board) :-
    board(ai_board).

may_provide_advice_on_enforcement(ai_board, general_purpose_ai_models) :-
    board(ai_board).

% (d) contribute to harmonisation of administrative practices
may_contribute_to_harmonisation(ai_board, administrative_practices, member_states) :-
    board(ai_board).

may_contribute_to_harmonisation(ai_board, derogation_from_conformity_assessment) :-
    board(ai_board).

may_contribute_to_harmonisation(ai_board, functioning_of_ai_regulatory_sandboxes) :-
    board(ai_board).

may_contribute_to_harmonisation(ai_board, testing_in_real_world_conditions) :-
    board(ai_board).

% (e) issue recommendations and written opinions
may_issue_recommendations(ai_board) :-
    board(ai_board).

may_issue_written_opinions(ai_board) :-
    board(ai_board).

may_issue_recommendations(ai_board, codes_of_conduct) :-
    board(ai_board).

may_issue_recommendations(ai_board, codes_of_practice) :-
    board(ai_board).

may_issue_recommendations(ai_board, commission_guidelines) :-
    board(ai_board).

may_issue_recommendations(ai_board, evaluation_and_review) :-
    board(ai_board).

may_issue_recommendations(ai_board, serious_incident_reports) :-
    board(ai_board).

may_issue_recommendations(ai_board, eu_database) :-
    board(ai_board).

may_issue_recommendations(ai_board, delegated_or_implementing_acts) :-
    board(ai_board).

may_issue_recommendations(ai_board, alignment_with_union_harmonisation_legislation) :-
    board(ai_board).

may_issue_recommendations(ai_board, technical_specifications) :-
    board(ai_board).

may_issue_recommendations(ai_board, existing_standards) :-
    board(ai_board).

may_issue_recommendations(ai_board, harmonised_standards) :-
    board(ai_board).

may_issue_recommendations(ai_board, common_specifications) :-
    board(ai_board).

may_issue_recommendations(ai_board, trends_european_global_competitiveness_in_ai) :-
    board(ai_board).

may_issue_recommendations(ai_board, trends_uptake_of_ai_in_union) :-
    board(ai_board).

may_issue_recommendations(ai_board, trends_development_of_digital_skills) :-
    board(ai_board).

may_issue_recommendations(ai_board, trends_evolving_typology_of_ai_value_chains) :-
    board(ai_board).

may_issue_recommendations(ai_board, implications_for_accountability) :-
    board(ai_board).

may_issue_recommendations(ai_board, potential_need_for_amendment_to_annex_3) :-
    board(ai_board).

may_issue_recommendations(ai_board, potential_need_for_revision_of_article_5) :-
    board(ai_board).

% (f) support Commission in promoting AI literacy
may_support_ai_literacy(ai_board, commission) :-
    board(ai_board).

may_support_public_awareness(ai_board, commission) :-
    board(ai_board).

may_support_understanding(ai_board, commission, benefits_risks_safeguards_rights_obligations) :-
    board(ai_board).

% (g) facilitate development of common criteria and shared understanding
may_facilitate_common_criteria(ai_board, market_operators_and_competent_authorities) :-
    board(ai_board).

may_facilitate_shared_understanding(ai_board, relevant_concepts) :-
    board(ai_board).

may_contribute_to_benchmarks(ai_board) :-
    board(ai_board).

% (h) cooperate with other Union institutions, bodies, offices and agencies
may_cooperate_with_union_institutions(ai_board) :-
    board(ai_board).

may_cooperate_with_union_expert_groups(ai_board) :-
    board(ai_board).

may_cooperate_in_field(ai_board, product_safety) :-
    board(ai_board).

may_cooperate_in_field(ai_board, cybersecurity) :-
    board(ai_board).

may_cooperate_in_field(ai_board, competition) :-
    board(ai_board).

may_cooperate_in_field(ai_board, digital_and_media_services) :-
    board(ai_board).

may_cooperate_in_field(ai_board, financial_services) :-
    board(ai_board).

may_cooperate_in_field(ai_board, consumer_protection) :-
    board(ai_board).

may_cooperate_in_field(ai_board, data_and_fundamental_rights_protection) :-
    board(ai_board).

% (i) contribute to effective cooperation with third countries and international organisations
may_contribute_to_cooperation(ai_board, competent_authorities_of_third_countries) :-
    board(ai_board).

may_contribute_to_cooperation(ai_board, international_organisations) :-
    board(ai_board).

% (j) assist national competent authorities and Commission in developing expertise
may_assist_development_of_expertise(ai_board, national_competent_authorities) :-
    board(ai_board).

may_assist_development_of_expertise(ai_board, commission) :-
    board(ai_board).

may_contribute_to_assessment_of_training_needs(ai_board, staff_of_member_states) :-
    board(ai_board).

% (k) assist AI Office in supporting national competent authorities with sandboxes
may_assist_ai_office(ai_board, establishment_of_ai_regulatory_sandboxes) :-
    board(ai_board).

may_assist_ai_office(ai_board, development_of_ai_regulatory_sandboxes) :-
    board(ai_board).

may_facilitate_cooperation_among_sandboxes(ai_board) :-
    board(ai_board).

may_facilitate_information_sharing_among_sandboxes(ai_board) :-
    board(ai_board).

% (l) contribute to and provide advice on guidance documents
may_contribute_to_guidance_documents(ai_board) :-
    board(ai_board).

may_provide_advice_on_guidance_documents(ai_board) :-
    board(ai_board).

% (m) advise Commission on international matters on AI
may_advise_commission(ai_board, international_matters_on_ai) :-
    board(ai_board).

% (n) provide opinions to Commission on qualified alerts regarding GPAI models
may_provide_opinions(ai_board, commission, qualified_alerts_general_purpose_ai_models) :-
    board(ai_board).

% (o) receive opinions from Member States
may_receive_opinions(ai_board, member_states, qualified_alerts_general_purpose_ai_models) :-
    board(ai_board).

may_receive_opinions(ai_board, member_states, national_experiences_and_practices) :-
    board(ai_board).

may_receive_opinions(ai_board, member_states, monitoring_and_enforcement_of_ai_systems) :-
    board(ai_board).

may_receive_opinions(ai_board, member_states, systems_integrating_general_purpose_ai_models) :-
    board(ai_board).

% Provenance for all clause heads
provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(objective_facilitate/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_share_best_practices/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_enforcement/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/3, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/2, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_issue_written_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_public_awareness/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_understanding/3, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/2, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_shared_understanding/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_benchmarks/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_institutions/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_expert_groups/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_in_field/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_cooperation/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_development_of_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_assessment_of_training_needs/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office/2, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_cooperation_among_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_information_sharing_among_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_commission/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions/3, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions/3, 'celex:32024R1689/oj#art_66').

% References
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_5').
