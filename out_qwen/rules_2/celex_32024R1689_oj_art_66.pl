% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : e73c524edbc7285d8a92d84da7e6000f0a42ae0891870eb39f53027a752e6662
% cached     : False
% title      : Tasks of the Board
:- pred board_task/1, gloss('specific task assigned to the AI Board under Article 66'), source('celex:32024R1689/oj#art_66').
:- pred must_advise_and_assist_commission_and_member_states/1, gloss('Board obligation to advise and assist for consistent application'), source('celex:32024R1689/oj#art_66').
:- pred may_coordinate_national_competent_authorities/1, gloss('Board power to contribute to coordination among national competent authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_support_joint_market_surveillance_activities/1, gloss('Board power to support joint activities of market surveillance authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_share_technical_and_regulatory_expertise/1, gloss('Board power to collect and share expertise and best practices'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_advice_on_implementation/1, gloss('Board power to provide advice on implementation of the Regulation'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_harmonisation_of_administrative_practices/1, gloss('Board power to contribute to harmonisation of administrative practices'), source('celex:32024R1689/oj#art_66').
:- pred may_issue_recommendations_and_opinions/1, gloss('Board power to issue recommendations and written opinions on relevant matters'), source('celex:32024R1689/oj#art_66').
:- pred may_promote_ai_literacy_and_awareness/1, gloss('Board power to support Commission in promoting AI literacy and public awareness'), source('celex:32024R1689/oj#art_66').
:- pred may_facilitate_common_criteria_and_understanding/1, gloss('Board power to facilitate development of common criteria and shared understanding'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_union_bodies/1, gloss('Board power to cooperate with other Union institutions and bodies'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_third_country_cooperation/1, gloss('Board power to contribute to cooperation with third countries and international organisations'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_in_developing_organisational_and_technical_expertise/1, gloss('Board power to assist in developing expertise required for implementation'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_ai_office_on_sandboxes/1, gloss('Board power to assist AI Office regarding AI regulatory sandboxes'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_on_guidance_documents/1, gloss('Board power to contribute to and advise on guidance documents'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_on_international_matters/1, gloss('Board power to advise Commission on international matters on AI'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_opinions_on_qualified_alerts/1, gloss('Board power to provide opinions on qualified alerts regarding general-purpose AI models'), source('celex:32024R1689/oj#art_66').
:- pred may_receive_member_state_opinions/1, gloss('Board power to receive opinions from Member States on alerts and enforcement'), source('celex:32024R1689/oj#art_66').

must_advise_and_assist_commission_and_member_states(board).

board_task(advise_and_assist) :-
    must_advise_and_assist_commission_and_member_states(board).

board_task(coordinate_national_competent_authorities) :-
    may_coordinate_national_competent_authorities(board).

board_task(support_joint_market_surveillance) :-
    may_support_joint_market_surveillance_activities(board).

board_task(share_expertise) :-
    may_share_technical_and_regulatory_expertise(board).

board_task(advice_on_implementation) :-
    may_provide_advice_on_implementation(board).

board_task(harmonise_administrative_practices) :-
    may_contribute_to_harmonisation_of_administrative_practices(board).

board_task(issue_recommendations_and_opinions) :-
    may_issue_recommendations_and_opinions(board).

board_task(promote_ai_literacy) :-
    may_promote_ai_literacy_and_awareness(board).

board_task(facilitate_common_criteria) :-
    may_facilitate_common_criteria_and_understanding(board).

board_task(cooperate_with_union_bodies) :-
    may_cooperate_with_union_bodies(board).

board_task(third_country_cooperation) :-
    may_contribute_to_third_country_cooperation(board).

board_task(develop_expertise) :-
    may_assist_in_developing_organisational_and_technical_expertise(board).

board_task(assist_on_sandboxes) :-
    may_assist_ai_office_on_sandboxes(board).

board_task(advise_on_guidance) :-
    may_advise_on_guidance_documents(board).

board_task(international_advice) :-
    may_advise_on_international_matters(board).

board_task(opinions_on_qualified_alerts) :-
    may_provide_opinions_on_qualified_alerts(board).

board_task(receive_member_state_opinions) :-
    may_receive_member_state_opinions(board).

may_coordinate_national_competent_authorities(board).
may_support_joint_market_surveillance_activities(board).
may_share_technical_and_regulatory_expertise(board).
may_provide_advice_on_implementation(board).
may_contribute_to_harmonisation_of_administrative_practices(board).
may_issue_recommendations_and_opinions(board).
may_promote_ai_literacy_and_awareness(board).
may_facilitate_common_criteria_and_understanding(board).
may_cooperate_with_union_bodies(board).
may_contribute_to_third_country_cooperation(board).
may_assist_in_developing_organisational_and_technical_expertise(board).
may_assist_ai_office_on_sandboxes(board).
may_advise_on_guidance_documents(board).
may_advise_on_international_matters(board).
may_provide_opinions_on_qualified_alerts(board).
may_receive_member_state_opinions(board).

provenance(must_advise_and_assist_commission_and_member_states/1, 'celex:32024R1689/oj#art_66').
provenance(board_task/1, 'celex:32024R1689/oj#art_66').
provenance(may_coordinate_national_competent_authorities/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_market_surveillance_activities/1, 'celex:32024R1689/oj#art_66').
provenance(may_share_technical_and_regulatory_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation_of_administrative_practices/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(may_promote_ai_literacy_and_awareness/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria_and_understanding/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_third_country_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_in_developing_organisational_and_technical_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office_on_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_member_state_opinions/1, 'celex:32024R1689/oj#art_66').

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
