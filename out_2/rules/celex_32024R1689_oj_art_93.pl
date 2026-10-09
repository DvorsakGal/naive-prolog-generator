% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f1d611a5d5153d66d1fb959d258a9c28df96e4377043084c6a9afc563e2dc3d3
% cached     : False
% title      : Power to request measures
:- pred required_appropriate_measures/1, gloss('provider must take appropriate measures to comply with obligations set out in art 53 and art 54'), source('celex:32024R1689/oj#art_93').
:- pred required_mitigation_measures/1, gloss('provider must implement mitigation measures where evaluation raised serious systemic risk concerns'), source('celex:32024R1689/oj#art_93').
:- pred required_market_restriction/1, gloss('provider must restrict making available on the market, withdraw or recall the model'), source('celex:32024R1689/oj#art_93').
:- pred permitted_initiate_structured_dialogue/1, gloss('ai office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments/2, gloss('provider offers commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').
:- pred permitted_make_commitments_binding/1, gloss('commission may make commitments binding'), source('celex:32024R1689/oj#art_93').
:- pred evaluation_concerned/1, gloss('evaluation has given rise to serious and substantiated concern of a systemic risk at Union level'), source('celex:32024R1689/oj#art_93').

required_appropriate_measures(P) :-
    provider(P),
    general_purpose_ai_model(P).

required_mitigation_measures(P) :-
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P),
    evaluation_concerned(P).

required_market_restriction(P) :-
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P).

permitted_initiate_structured_dialogue(ai_office) :-
    provider(P),
    general_purpose_ai_model(P).

offers_commitments(P, commitments) :-
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P).

permitted_make_commitments_binding(commission) :-
    offers_commitments(P, commitments),
    provider(P),
    general_purpose_ai_model(P),
    systemic_risk(P).

provenance(required_appropriate_measures/1, 'celex:32024R1689/oj#art_93').
provenance(required_mitigation_measures/1, 'celex:32024R1689/oj#art_93').
provenance(required_market_restriction/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/1, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/1, 'celex:32024R1689/oj#art_93').
provenance(evaluation_concerned/1, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
