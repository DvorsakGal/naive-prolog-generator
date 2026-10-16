% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : fe5ca9a15b40e1fe597538747ae938be4e93ad88ab09ad0dd31d8968a659b337
% cached     : False
% title      : Power to request measures
:- pred may_request_measures/2, gloss('Commission may request provider to take measures'), source('celex:32024R1689/oj#art_93').
:- pred necessary_and_appropriate/1, gloss('request is necessary and appropriate'), source('celex:32024R1689/oj#art_93').
:- pred structured_dialogue/2, gloss('AI Office initiates structured dialogue with provider'), source('celex:32024R1689/oj#art_93').
:- pred commitments_binding/2, gloss('Commission makes commitments binding by decision'), source('celex:32024R1689/oj#art_93').
:- pred no_further_grounds_for_action/1, gloss('no further grounds for action declared'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_at_union_level/1, gloss('systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred serious_and_substantiated_concern/1, gloss('serious and substantiated concern'), source('celex:32024R1689/oj#art_93').
:- pred evaluation_under_article_92/1, gloss('evaluation carried out in accordance with Article 92'), source('celex:32024R1689/oj#art_93').
:- pred mitigation_measures/1, gloss('measures to mitigate systemic risk'), source('celex:32024R1689/oj#art_93').
:- pred provider_general_purpose_ai_model_with_systemic_risk/1, gloss('provider of general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_93').

may_request_measures(commission, comply_with_obligations) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P),
    may_request_measures(commission, P).

may_request_measures(commission, implement_mitigation_measures(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P),
    evaluation_under_article_92(E),
    serious_and_substantiated_concern(C),
    systemic_risk_at_union_level(R),
    evaluation_gave_rise_to(E, C, R).

may_request_measures(commission, restrict_making_available(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P).

may_request_measures(commission, withdraw_model(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P).

may_request_measures(commission, recall_model(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P).

structured_dialogue(ai_office, P) :-
    general_purpose_ai_model_provider(P),
    before_requesting_measure.

commitments_binding(commission, P) :-
    provider_general_purpose_ai_model_with_systemic_risk(P),
    structured_dialogue(ai_office, P),
    offers_commitments(P, mitigation_measures(systemic_risk_at_union_level)).

no_further_grounds_for_action(commission) :-
    commitments_binding(commission, _P).

provider_general_purpose_ai_model_with_systemic_risk(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    provider(P, M),
    systemic_risk(M).

provenance(may_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(necessary_and_appropriate/1, 'celex:32024R1689/oj#art_93').
provenance(structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(no_further_grounds_for_action/1, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_93').
provenance(serious_and_substantiated_concern/1, 'celex:32024R1689/oj#art_93').
provenance(evaluation_under_article_92/1, 'celex:32024R1689/oj#art_93').
provenance(mitigation_measures/1, 'celex:32024R1689/oj#art_93').
provenance(provider_general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
