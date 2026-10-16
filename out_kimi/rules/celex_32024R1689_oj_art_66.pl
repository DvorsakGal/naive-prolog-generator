% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5647ec9002940e98dbb5498aafca246bfdaa3425f897716b5d91715afc6f20d0
% cached     : False
% title      : Tasks of the Board
:- pred may_contribute_to_coordination/1, gloss('Board may contribute to coordination among national competent authorities'), source('celex:32024R1689/oj#art_66').
:- pred may_collect_and_share_expertise/1, gloss('Board may collect and share technical and regulatory expertise and best practices'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_advice_on_implementation/1, gloss('Board may provide advice on implementation of the regulation'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_harmonisation/1, gloss('Board may contribute to harmonisation of administrative practices'), source('celex:32024R1689/oj#art_66').
:- pred may_issue_recommendations/2, gloss('Board may issue recommendations and written opinions on request or own initiative'), source('celex:32024R1689/oj#art_66').
:- pred may_support_ai_literacy/1, gloss('Board may support Commission in promoting AI literacy'), source('celex:32024R1689/oj#art_66').
:- pred may_facilitate_common_criteria/1, gloss('Board may facilitate development of common criteria and shared understanding'), source('celex:32024R1689/oj#art_66').
:- pred may_cooperate_with_institutions/1, gloss('Board may cooperate with other Union institutions and bodies'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_international_cooperation/1, gloss('Board may contribute to effective cooperation with third countries'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_expertise_development/1, gloss('Board may assist in developing organisational and technical expertise'), source('celex:32024R1689/oj#art_66').
:- pred may_assist_sandboxes/1, gloss('Board may assist AI Office in supporting AI regulatory sandboxes'), source('celex:32024R1689/oj#art_66').
:- pred may_contribute_to_guidance/1, gloss('Board may contribute to and provide advice on guidance documents'), source('celex:32024R1689/oj#art_66').
:- pred may_advise_international/1, gloss('Board may advise Commission on international matters on AI'), source('celex:32024R1689/oj#art_66').
:- pred may_provide_opinions_on_alerts/1, gloss('Board may provide opinions on qualified alerts regarding general-purpose AI models'), source('celex:32024R1689/oj#art_66').
:- pred may_receive_opinions/1, gloss('Board may receive opinions from Member States on qualified alerts and national experiences'), source('celex:32024R1689/oj#art_66').

board(B) :- B = board.  % singleton board entity

may_contribute_to_coordination(B) :-
    board(B).

may_collect_and_share_expertise(B) :-
    board(B).

may_provide_advice_on_implementation(B) :-
    board(B).

may_contribute_to_harmonisation(B) :-
    board(B).

may_issue_recommendations(B, on_request(Commission)) :-
    board(B),
    commission(Commission).

may_issue_recommendations(B, own_initiative) :-
    board(B).

may_support_ai_literacy(B) :-
    board(B).

may_facilitate_common_criteria(B) :-
    board(B).

may_cooperate_with_institutions(B) :-
    board(B).

may_contribute_to_international_cooperation(B) :-
    board(B).

may_assist_expertise_development(B) :-
    board(B).

may_assist_sandboxes(B) :-
    board(B).

may_contribute_to_guidance(B) :-
    board(B).

may_advise_international(B) :-
    board(B).

may_provide_opinions_on_alerts(B) :-
    board(B).

may_receive_opinions(B) :-
    board(B).

% Substantive conditions for specific advisory functions under (e)
recommendation_subject(B, codes_of_conduct_and_practice) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, evaluation_and_review) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, technical_specifications_or_standards) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, harmonised_standards_or_common_specifications) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, trends(european_global_competitiveness)) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, trends(ai_uptake_and_digital_skills)) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, trends(ai_value_chains_and_accountability)) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, amendment_to_annex_3) :-
    may_issue_recommendations(B, _).

recommendation_subject(B, revision_of_article_5) :-
    may_issue_recommendations(B, _).

% Provenance
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/2, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_institutions/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_international/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(recommendation_subject/2, 'celex:32024R1689/oj#art_66').

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
