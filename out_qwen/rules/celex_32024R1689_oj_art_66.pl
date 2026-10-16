% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2accf8b5d6a3696ae0aced7e385fa4ae505f1140203e42ce17f108b8e00b4aad
% cached     : False
% title      : Tasks of the Board
:- pred board/1, gloss('the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_66').
:- pred must_advise_and_assist(Actor, Object), gloss('obligation to advise and assist for consistent application'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_coordination(Actor, Object), gloss('discretionary task to coordinate national authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_support_joint_activities(Actor, Object), gloss('discretionary task to support joint market surveillance activities'), source('celex:32024R1689/oj#art_66').
:- pred may_collect_and_share_expertise(Actor, Object), gloss('discretionary task to share technical and regulatory expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_advice_on_implementation(Actor, Object), gloss('discretionary task to advise on regulation implementation'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_harmonisation(Actor, Object), gloss('discretionary task to harmonise administrative practices'), source('celex:32024R1689/oj#art_66').
:- pred may_issue_recommendations(Actor, Object), gloss('discretionary task to issue recommendations and opinions'), source('celex:32024R1689/oj#art_66').
:- pred may_support_ai_literacy_promotion(Actor, Object), gloss('discretionary task to support AI literacy and awareness'), source('celex:32024R1689/oj#art_66').
:- pred may_facilitate_common_criteria(Actor, Object), gloss('discretionary task to facilitate shared understanding of concepts'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_union_bodies(Actor, Object), gloss('discretionary task to cooperate with other EU bodies'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_international_cooperation(Actor, Object), gloss('discretionary task to cooperate with third countries'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_development_of_expertise(Actor, Object), gloss('discretionary task to assist in developing organisational and technical expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_sandbox_establishment(Actor, Object), gloss('discretionary task to assist AI Office with sandboxes'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_guidance(Actor, Object), gloss('discretionary task to contribute to guidance documents'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_on_international_matters(Actor, Object), gloss('discretionary task to advise Commission on international AI matters'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_opinions_on_alerts(Actor, Object), gloss('discretionary task to provide opinions on qualified alerts'), source('celex:32024R1689/oj#art_66').
:- pred may_receive_opinions_from_member_states(Actor, Object), gloss('discretionary task to receive MS opinions on alerts and enforcement'), source('celex:32024R1689/oj#art_66').

must_advise_and_assist(board, commission).
must_advise_and_assist(board, member_states).

may_contribute_to_coordination(board, national_competent_authorities).

may_support_joint_activities(board, joint_activities(market_surveillance_authorities)) :-
    agreement(market_surveillance_authorities).

may_collect_and_share_expertise(board, technical_and_regulatory_expertise).
may_collect_and_share_expertise(board, best_practices).

may_provide_advice_on_implementation(board, enforcement(general_purpose_ai_models)).

may_contribute_to_harmonisation(board, administrative_practices).
may_contribute_to_harmonisation(board, derogation(conformity_assessment_procedures)).
may_contribute_to_harmonisation(board, functioning(ai_regulatory_sandboxes)).
may_contribute_to_harmonisation(board, testing_in_real_world_conditions).

may_issue_recommendations(board, relevant_matters(implementation)).
may_issue_recommendations(board, codes_of_conduct).
may_issue_recommendations(board, codes_of_practice).
may_issue_recommendations(board, commission_guidelines).
may_issue_recommendations(board, evaluation_and_review).
may_issue_recommendations(board, serious_incident_reports).
may_issue_recommendations(board, functioning(eu_database)).
may_issue_recommendations(board, preparation(delegated_or_implementing_acts)).
may_issue_recommendations(board, alignment(union_harmonisation_legislation)).
may_issue_recommendations(board, technical_specifications).
may_issue_recommendations(board, existing_standards).
may_issue_recommendations(board, use(harmonised_standards)).
may_issue_recommendations(board, use(common_specifications)).
may_issue_recommendations(board, trends(european_global_competitiveness)).
may_issue_recommendations(board, trends(uptake_of_ai)).
may_issue_recommendations(board, trends(development_of_digital_skills)).
may_issue_recommendations(board, trends(evolution_of_ai_value_chains)).
may_issue_recommendations(board, implications(accountability)).
may_issue_recommendations(board, amendment(annex_3)).
may_issue_recommendations(board, revision(article_5)).

may_support_ai_literacy_promotion(board, ai_literacy).
may_support_ai_literacy_promotion(board, public_awareness).

may_facilitate_common_criteria(board, relevant_concepts).
may_facilitate_common_criteria(board, benchmarks).

may_cooperate_with_union_bodies(board, union_institutions).
may_cooperate_with_union_bodies(board, union_bodies).
may_cooperate_with_union_bodies(board, union_offices).
may_cooperate_with_union_bodies(board, union_agencies).
may_cooperate_with_union_bodies(board, union_expert_groups).
may_cooperate_with_union_bodies(board, union_networks).

may_contribute_to_international_cooperation(board, competent_authorities(third_countries)).
may_contribute_to_international_cooperation(board, international_organisations).

may_assist_development_of_expertise(board, national_competent_authorities).
may_assist_development_of_expertise(board, commission).
may_assist_development_of_expertise(board, assessment(training_needs)).

may_assist_sandbox_establishment(board, ai_office).
may_assist_sandbox_establishment(board, establishment(ai_regulatory_sandboxes)).
may_assist_sandbox_establishment(board, development(ai_regulatory_sandboxes)).
may_assist_sandbox_establishment(board, cooperation(among_ai_regulatory_sandboxes)).
may_assist_sandbox_establishment(board, information_sharing(among_ai_regulatory_sandboxes)).

may_contribute_to_guidance(board, guidance_documents).

may_advise_on_international_matters(board, commission).

may_provide_opinions_on_alerts(board, qualified_alerts(general_purpose_ai_models)).

may_receive_opinions_from_member_states(board, opinions_on_qualified_alerts).
may_receive_opinions_from_member_states(board, national_experiences(monitoring_and_enforcement)).

provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/2, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy_promotion/2, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/2, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_development_of_expertise/2, 'celex:32024R1689/oj#art_66').
provenance(may_assist_sandbox_establishment/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/2, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/2, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/2, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions_from_member_states/2, 'celex:32024R1689/oj#art_66').

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
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_3').
