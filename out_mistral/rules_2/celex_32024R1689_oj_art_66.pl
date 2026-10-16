% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 7690cbf2e9088e55e21dc7aef9efbae50c6c51e59f7194edd79795db23c4923c
% cached     : False
% title      : Tasks of the Board
:- pred board/1, gloss('the European Artificial Intelligence Board established under Article 65'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_coordination/2, gloss('Board may contribute to coordination among national competent authorities and support joint activities of market surveillance authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_collect_and_share_expertise/1, gloss('Board may collect and share technical and regulatory expertise and best practices among Member States'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_advice_on_implementation/1, gloss('Board may provide advice on implementation of the Regulation, in particular enforcement of rules on general-purpose AI models'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_harmonisation/1, gloss('Board may contribute to harmonisation of administrative practices in Member States'), source('celex:32024R1689/oj#art_66').
:- pred may_issue_recommendations_and_opinions/1, gloss('Board may issue recommendations and written opinions on relevant matters related to implementation and consistent application'), source('celex:32024R1689/oj#art_66').
:- pred may_support_ai_literacy/1, gloss('Board may support Commission in promoting AI literacy, public awareness and understanding'), source('celex:32024R1689/oj#art_66').
:- pred may_facilitate_common_criteria/1, gloss('Board may facilitate development of common criteria and shared understanding of relevant concepts'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_union_bodies/1, gloss('Board may cooperate with other Union institutions, bodies, offices and agencies'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_third_country_cooperation/1, gloss('Board may contribute to effective cooperation with competent authorities of third countries and international organisations'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_in_expertise_development/1, gloss('Board may assist national competent authorities and Commission in developing organisational and technical expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_ai_office_on_sandboxes/1, gloss('Board may assist AI Office in supporting national competent authorities in establishment and development of AI regulatory sandboxes'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_guidance_documents/1, gloss('Board may contribute to and provide relevant advice on development of guidance documents'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_on_international_matters/1, gloss('Board may advise Commission in relation to international matters on AI'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_opinions_on_qualified_alerts/1, gloss('Board may provide opinions to Commission on qualified alerts regarding general-purpose AI models'), source('celex:32024R1689/oj#art_66').
:- pred may_receive_opinions_from_member_states/1, gloss('Board may receive opinions by Member States on qualified alerts and national experiences and practices'), source('celex:32024R1689/oj#art_66').
:- pred must_advise_and_assist/3, gloss('Board must advise and assist Commission and Member States to facilitate consistent and effective application'), source('celex:32024R1689/oj#art_66').

must_advise_and_assist(board, commission, member_states) :-
    board(board),
    member_state(member_states).

may_contribute_to_coordination(board, joint_activities) :-
    board(board),
    market_surveillance_authority(_MSA).

may_collect_and_share_expertise(board) :-
    board(board).

may_provide_advice_on_implementation(board) :-
    board(board).

may_contribute_to_harmonisation(board) :-
    board(board).

may_issue_recommendations_and_opinions(board) :-
    board(board).

may_support_ai_literacy(board) :-
    board(board).

may_facilitate_common_criteria(board) :-
    board(board).

may_cooperate_with_union_bodies(board) :-
    board(board).

may_contribute_to_third_country_cooperation(board) :-
    board(board).

may_assist_in_expertise_development(board) :-
    board(board).

may_assist_ai_office_on_sandboxes(board) :-
    board(board),
    ai_office(_AIO).

may_contribute_to_guidance_documents(board) :-
    board(board).

may_advise_on_international_matters(board) :-
    board(board).

may_provide_opinions_on_qualified_alerts(board) :-
    board(board),
    qualified_alert_scientific_panel(_Alert).

may_receive_opinions_from_member_states(board) :-
    board(board),
    member_state(_MS).

provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise_and_assist/3, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_third_country_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_in_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office_on_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions_from_member_states/1, 'celex:32024R1689/oj#art_66').

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
