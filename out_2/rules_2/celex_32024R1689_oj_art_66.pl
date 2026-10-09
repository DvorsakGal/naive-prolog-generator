% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 992bb13a77d4201a788481c94fe876a0193eb0b3402df745e1bf7bf2d67ff8a0
% cached     : False
% title      : Tasks of the Board
:- pred board/1, gloss('Board of the AI Union governance'), source('celex:32024R1689/oj#art_66').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_66').

must_advise(Board, Commission) :-
    board(Board),
    commission(Commission),
    board(Board),
    commission(Commission).

must_assist(Board, Commission) :-
    board(Board),
    commission(Commission),
    board(Board),
    commission(Commission).

must_advise(Board, MemberState) :-
    board(Board),
    member_state(MemberState),
    board(Board),
    member_state(MemberState).

must_assist(Board, MemberState) :-
    board(Board),
    member_state(MemberState),
    board(Board),
    member_state(MemberState).

permitted_coordination_contribution(Board) :-
    board(Board),
    national_competent_authority(NCA),
    national_competent_authority(NCA),
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA).

permitted_collect_and_share_expertise(Board) :-
    board(Board),
    member_state(MS),
    member_state(MS).

permitted_provide_implementation_advice(Board) :-
    board(Board),
    general_purpose_ai_model(GPM),
    general_purpose_ai_model(GPM).

permitted_contribute_to_harmonisation(Board) :-
    board(Board),
    member_state(MS),
    member_state(MS),
    conformity_assessment(_CA),
    conformity_assessment(_CA),
    ai_regulatory_sandbox(_SB),
    ai_regulatory_sandbox(_SB),
    testing_in_real_world_conditions(_TW),
    testing_in_real_world_conditions(_TW).

permitted_issue_recommendations_and_opinions(Board) :-
    board(Board),
    commission(C),
    commission(C).

permitted_support_ai_literacy_promotion(Board) :-
    board(Board),
    commission(C),
    commission(C).

permitted_facilitate_common_criteria_development(Board) :-
    board(Board),
    operator(Op),
    operator(Op),
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA).

permitted_cooperate_with_union_entities(Board) :-
    board(Board),
    ai_office(AO),
    ai_office(AO).

permitted_contribute_to_international_cooperation(Board) :-
    board(Board),
    market_surveillance_authority(MSA),
    market_surveillance_authority(MSA).

permitted_assist_expertise_development(Board) :-
    board(Board),
    national_competent_authority(NCA),
    national_competent_authority(NCA),
    commission(C),
    commission(C).

permitted_assist_ai_office_sandboxes(Board) :-
    board(Board),
    ai_office(AO),
    ai_office(AO),
    ai_regulatory_sandbox(SB),
    ai_regulatory_sandbox(SB).

permitted_contribute_to_guidance_documents(Board) :-
    board(Board),
    board(Board).

permitted_advise_commission_international(Board) :-
    board(Board),
    commission(C),
    commission(C).

permitted_provide_qualified_alert_opinions(Board) :-
    board(Board),
    commission(C),
    commission(C),
    general_purpose_ai_model(GPM),
    general_purpose_ai_model(GPM).

permitted_receive_qualified_alert_opinions(Board) :-
    board(Board),
    member_state(MS),
    member_state(MS),
    general_purpose_ai_model(GPM),
    general_purpose_ai_model(GPM).

provenance(must_advise/2, 'celex:32024R1689/oj#art_66').
provenance(must_assist/2, 'celex:32024R1689/oj#art_66').
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(commission/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_coordination_contribution/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_implementation_advice/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_support_ai_literacy_promotion/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_facilitate_common_criteria_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_cooperate_with_union_entities/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_assist_ai_office_sandboxes/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_advise_commission_international/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_provide_qualified_alert_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(permitted_receive_qualified_alert_opinions/1, 'celex:32024R1689/oj#art_66').

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
