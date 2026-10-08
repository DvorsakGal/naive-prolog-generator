% unit       : celex:32024R1689/oj#art_93
% title      : Power to request measures
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : gpt-oss:120b-cloud
% prompt sha : 8fbf7beade9735085e17d4651d89daa4c27b279624c8d6fab6df067b944bb4c9
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_93').

permitted_request_take_appropriate_measures(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P),
    general_purpose_ai_system(_).

provenance(permitted_request_take_appropriate_measures/2, 'celex:32024R1689/oj#art_93').

permitted_request_implement_mitigation_measures(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P),
    systemic_risk(_).

provenance(permitted_request_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').

permitted_request_restrict_market_withdraw_recall(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P).

provenance(permitted_request_restrict_market_withdraw_recall/2, 'celex:32024R1689/oj#art_93').

permitted_initiate_structured_dialogue(AIO, P) :-
    ai_office(AIO), ai_office(AIO),
    provider(P), provider(P),
    general_purpose_ai_system(_).

provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').

permitted_make_commitments_binding(C, P) :-
    commission(C), commission(C),
    provider(P), provider(P),
    systemic_risk(_).

provenance(permitted_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
