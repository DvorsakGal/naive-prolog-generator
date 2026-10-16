% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : bc026c38e85323e7c946102ecc4a5371eb479db3965880561f80538ad507373b
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts established under Article 68'), source('celex:32024R1689/oj#art_68').
:- pred member_of_scientific_panel/2, gloss('expert is a member of the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred must_select_expert_for_panel/2, gloss('Commission must select expert for scientific panel based on expertise and conditions'), source('celex:32024R1689/oj#art_68').
:- pred must_advise_ai_office/2, gloss('scientific panel must advise and support AI Office on specified tasks'), source('celex:32024R1689/oj#art_68').
:- pred must_support_market_surveillance_authority/2, gloss('scientific panel must support market surveillance authority at their request'), source('celex:32024R1689/oj#art_68').
:- pred must_perform_tasks_impartially/1, gloss('expert must perform tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure_confidentiality/1, gloss('expert must ensure confidentiality of information obtained in tasks'), source('celex:32024R1689/oj#art_68').
:- pred must_not_seek_instructions/1, gloss('expert must neither seek nor take instructions when exercising tasks'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up_declaration_of_interests/1, gloss('expert must draw up declaration of interests made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred must_manage_conflicts_of_interest/1, gloss('AI Office must establish systems to manage and prevent conflicts of interest'), source('celex:32024R1689/oj#art_68').

scientific_panel(P) :-
    member_of_scientific_panel(_, P).

must_select_expert_for_panel(commission, E) :-
    member_of_scientific_panel(E, _P),
    has_ai_expertise(E),
    independent_from_providers(E),
    able_to_carry_out_activities_diligently(E).

has_ai_expertise(E) :-
    member_of_scientific_panel(E, _P).

independent_from_providers(E) :-
    member_of_scientific_panel(E, _P).

able_to_carry_out_activities_diligently(E) :-
    member_of_scientific_panel(E, _P).

must_advise_ai_office(P, alert_systemic_risk(M)) :-
    scientific_panel(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_advise_ai_office(P, develop_evaluation_tools(_T)) :-
    scientific_panel(P).

must_advise_ai_office(P, advise_classification_systemic_risk(M)) :-
    scientific_panel(P),
    general_purpose_ai_model(M).

must_advise_ai_office(P, advise_classification_model(M)) :-
    scientific_panel(P),
    general_purpose_ai_model(M).

must_advise_ai_office(P, develop_tools_and_templates(_T)) :-
    scientific_panel(P).

must_support_market_surveillance_authority(P, A) :-
    scientific_panel(P),
    market_surveillance_authority(A).

must_perform_tasks_impartially(E) :-
    member_of_scientific_panel(E, _P).

must_ensure_confidentiality(E) :-
    member_of_scientific_panel(E, _P).

must_not_seek_instructions(E) :-
    member_of_scientific_panel(E, _P).

must_draw_up_declaration_of_interests(E) :-
    member_of_scientific_panel(E, _P).

must_manage_conflicts_of_interest(ai_office) :-
    scientific_panel(_P).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(member_of_scientific_panel/2, 'celex:32024R1689/oj#art_68').
provenance(must_select_expert_for_panel/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_ai_office/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_market_surveillance_authority/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_impartially/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_manage_conflicts_of_interest/1, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
