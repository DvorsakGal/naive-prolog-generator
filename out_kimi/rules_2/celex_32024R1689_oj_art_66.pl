% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : c4b1c7b0d59e2f8c537d97a2457f7573308ff77b51326a28127eb674a7a4c0d2
% cached     : False
% title      : Tasks of the Board
:- pred may_advise_and_assist/2, gloss('Board may advise and assist specified entities'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_coordination/1, gloss('Board may contribute to coordination among national competent authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_support_joint_activities/1, gloss('Board may support joint activities of market surveillance authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_collect_and_share_expertise/1, gloss('Board may collect and share technical and regulatory expertise and best practices'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_advice_on_implementation/1, gloss('Board may provide advice on implementation of the regulation'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_harmonisation/1, gloss('Board may contribute to harmonisation of administrative practices'), source('celex:32024R1689/oj#art_66').
:- pred may_issue_recommendations/1, gloss('Board may issue recommendations and written opinions'), source('celex:32024R1689/oj#art_66').
:- pred may_support_ai_literacy/1, gloss('Board may support Commission in promoting AI literacy'), source('celex:32024R1689/oj#art_66').
:- pred may_facilitate_common_criteria/1, gloss('Board may facilitate development of common criteria'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_union_bodies/1, gloss('Board may cooperate with other Union institutions, bodies, offices and agencies'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_international_cooperation/1, gloss('Board may contribute to effective cooperation with third countries and international organisations'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_expertise_development/1, gloss('Board may assist in developing organisational and technical expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_sandboxes/1, gloss('Board may assist AI Office in supporting national competent authorities on AI regulatory sandboxes'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_guidance/1, gloss('Board may contribute to and provide advice on development of guidance documents'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_international_matters/1, gloss('Board may advise Commission on international matters on AI'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_opinions_on_alerts/1, gloss('Board may provide opinions on qualified alerts regarding general-purpose AI models'), source('celex:32024R1689/oj#art_66').
:- pred may_receive_opinions/1, gloss('Board may receive opinions by Member States on qualified alerts and national experiences'), source('celex:32024R1689/oj#art_66').

may_advise_and_assist(board, commission).
may_advise_and_assist(board, member_states).

may_contribute_to_coordination(board) :-
    national_competent_authority(_),
    responsible_for_application(_).

may_support_joint_activities(board) :-
    market_surveillance_authority(_),
    cooperation_agreement(_),
    subject_to_agreement(_).

may_collect_and_share_expertise(board).

may_provide_advice_on_implementation(board) :-
    enforcement_rules_general_purpose_ai_models(_).

may_contribute_to_harmonisation(board) :-
    derogation_from_conformity_assessment_procedures(_),
    functioning_of_ai_regulatory_sandboxes(_),
    testing_in_real_world_conditions(_).

may_issue_recommendations(board) :-
    request(commission, board);
    own_initiative(board).

may_support_ai_literacy(board) :-
    ai_literacy(_),
    public_awareness(_).

may_facilitate_common_criteria(board) :-
    market_operator(_),
    competent_authority(_),
    relevant_concepts(_).

may_cooperate_with_union_bodies(board) :-
    union_institution(_),
    union_body(_),
    union_office(_),
    union_agency(_).

may_contribute_to_international_cooperation(board) :-
    competent_authority_third_country(_),
    international_organisation(_).

may_assist_expertise_development(board) :-
    national_competent_authority(_),
    commission(_),
    training_needs_assessment(_).

may_assist_sandboxes(board) :-
    ai_office(_),
    national_competent_authority(_),
    ai_regulatory_sandbox(_).

may_contribute_to_guidance(board).

may_advise_international_matters(board) :-
    commission(_),
    international_matters(ai).

may_provide_opinions_on_alerts(board) :-
    qualified_alert(_),
    general_purpose_ai_model(_).

may_receive_opinions(board) :-
    member_state(_),
    qualified_alert(_),
    general_purpose_ai_model(_),
    national_experiences(_),
    monitoring_and_enforcement(_),
    ai_system(_),
    integrates_general_purpose_ai_model(_).

provenance(may_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/1, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions/1, 'celex:32024R1689/oj#art_66').

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
