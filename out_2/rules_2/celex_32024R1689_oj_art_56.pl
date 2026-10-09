% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6c9abda774b2a47b934bede5dacf72ab7fb8457edfe54b6b509e86ad871a1cf5
% cached     : False
% title      : Codes of practice
:- pred board/1, gloss('Board of the AI Office'), source('celex:32024R1689/oj#art_56').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_56').
:- pred systemic_risk_present/1, gloss('Provider presents systemic risk'), source('celex:32024R1689/oj#art_56').
:- pred declares_interest/1, gloss('Provider declares interest to join full code'), source('celex:32024R1689/oj#art_56').
:- pred finalised_by/1, gloss('Code of practice finalised by date'), source('celex:32024R1689/oj#art_56').
:- pred not_adequate_assessment/0, gloss('AI Office deems code not adequate'), source('celex:32024R1689/oj#art_56').

must_encourage_and_facilitate(AI, drawing_up_codes_of_practice) :-
    ai_office(AI).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').

must_ensure(AI, codes_of_practice_cover_obligations) :-
    ai_office(AI).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_56').

must_ensure(B, codes_of_practice_cover_obligations) :-
    board(B).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_56').

must_ensure(AI, codes_of_practice_set_objectives) :-
    ai_office(AI).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_56').

must_ensure(B, codes_of_practice_set_objectives) :-
    board(B).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_56').

must_ensure(AI, participants_report_regularly) :-
    ai_office(AI).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_56').

must_monitor_and_evaluate(AI, codes_of_practice_objectives) :-
    ai_office(AI).
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').

must_monitor_and_evaluate(B, codes_of_practice_objectives) :-
    board(B).
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').

permitted_invite(AI, Provider) :-
    ai_office(AI),
    provider(Provider),
    general_purpose_ai_model_provider(Provider).
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_56').

permitted_invite(AI, Authority) :-
    ai_office(AI),
    national_competent_authority(Authority).
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_56').

permitted_approve(Comm, code_of_practice) :-
    commission(Comm).
provenance(permitted_approve/2, 'celex:32024R1689/oj#art_56').

permitted_adhere(Provider, limited_to_art_53) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    \+ systemic_risk_present(Provider).
provenance(permitted_adhere/2, 'celex:32024R1689/oj#art_56').

permitted_adhere(Provider, full_code) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    declares_interest(Provider).
provenance(permitted_adhere/2, 'celex:32024R1689/oj#art_56').

must_encourage_and_facilitate(AI, review_and_adaptation_of_codes) :-
    ai_office(AI).
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').

must_assist(AI, assessment_of_standards) :-
    ai_office(AI).
provenance(must_assist/2, 'celex:32024R1689/oj#art_56').

must_be_ready_by(codes_of_practice, date(2025,5,2)).
provenance(must_be_ready_by/2, 'celex:32024R1689/oj#art_56').

must_take_steps(AI, inviting_providers_par_7) :-
    ai_office(AI).
provenance(must_take_steps/2, 'celex:32024R1689/oj#art_56').

permitted_provide(Comm, common_rules) :-
    commission(Comm),
    ( \+ finalised_by(date(2025,8,2))
    ; not_adequate_assessment
    ).
provenance(permitted_provide/2, 'celex:32024R1689/oj#art_56').

% References
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').
