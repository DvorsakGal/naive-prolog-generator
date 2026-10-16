% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : de9be16737cba6311bc850923347d2b4c3409cff83a6a83578b731e19bd575c6
% cached     : False
% title      : Tasks of the Board
:- pred board/1, gloss('the European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_66').
:- pred must_advise_and_assist/2, gloss('Board advises and assists Commission and Member States'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_coordination/2, gloss('Board may contribute to coordination among national competent authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_support_joint_activities/2, gloss('Board may support joint activities of market surveillance authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_collect_and_share_expertise/1, gloss('Board may collect and share technical and regulatory expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_advice_on_implementation/1, gloss('Board may provide advice on implementation of the regulation'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_harmonisation/1, gloss('Board may contribute to harmonisation of administrative practices'), source('celex:32024R1689/oj#art_66').
:- pred may_issue_recommendations/2, gloss('Board may issue recommendations and written opinions'), source('celex:32024R1689/oj#art_66').
:- pred may_support_promoting_ai_literacy/1, gloss('Board may support Commission in promoting AI literacy'), source('celex:32024R1689/oj#art_66').
:- pred may_facilitate_common_criteria/1, gloss('Board may facilitate development of common criteria'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_union_bodies/1, gloss('Board may cooperate with other Union institutions'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_third_countries/1, gloss('Board may cooperate with competent authorities of third countries'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_developing_expertise/1, gloss('Board may assist in developing organisational and technical expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_ai_office_sandboxes/1, gloss('Board may assist AI Office in supporting sandboxes'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_guidance/1, gloss('Board may contribute to development of guidance documents'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_on_international_matters/1, gloss('Board may advise Commission on international AI matters'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_opinions_on_alerts/2, gloss('Board may provide opinions on qualified alerts regarding general-purpose AI models'), source('celex:32024R1689/oj#art_66').
:- pred may_receive_opinions_on_alerts/2, gloss('Board may receive opinions from Member States on qualified alerts'), source('celex:32024R1689/oj#art_66').

board(B) :- board(B).

must_advise_and_assist(B, commission) :-
    board(B).
must_advise_and_assist(B, member_states) :-
    board(B).

may_contribute_to_coordination(B, national_competent_authorities) :-
    board(B).

may_support_joint_activities(B, market_surveillance_authorities) :-
    board(B).

may_collect_and_share_expertise(B) :-
    board(B).

may_provide_advice_on_implementation(B) :-
    board(B).

may_contribute_to_harmonisation(B) :-
    board(B).

may_issue_recommendations(B, recommendations) :-
    board(B).
may_issue_recommendations(B, written_opinions) :-
    board(B).

may_support_promoting_ai_literacy(B) :-
    board(B).

may_facilitate_common_criteria(B) :-
    board(B).

may_cooperate_with_union_bodies(B) :-
    board(B).

may_cooperate_with_third_countries(B) :-
    board(B).

may_assist_developing_expertise(B) :-
    board(B).

may_assist_ai_office_sandboxes(B) :-
    board(B).

may_contribute_to_guidance(B) :-
    board(B).

may_advise_on_international_matters(B) :-
    board(B).

may_provide_opinions_on_alerts(B, qualified_alerts(general_purpose_ai_models)) :-
    board(B).

may_receive_opinions_on_alerts(B, qualified_alerts(general_purpose_ai_models)) :-
    board(B).

provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_promoting_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_third_countries/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_developing_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/2, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions_on_alerts/2, 'celex:32024R1689/oj#art_66').

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
