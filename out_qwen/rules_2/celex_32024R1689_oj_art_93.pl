% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 514eaf745954cf7c422081cee6ae48742a674fd99038dc38caab53efee4bb28a
% cached     : False
% title      : Power to request measures
:- pred commission_may_request_measures/2, gloss('Commission may request provider to take measures under Article 93'), source('celex:32024R1689/oj#art_93').
:- pred necessary_and_appropriate/1, gloss('condition that a request for measures is necessary and appropriate'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_concern_from_evaluation/1, gloss('evaluation under Article 92 gave rise to serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred ai_office_may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before requesting measures'), source('celex:32024R1689/oj#art_93').
:- pred commission_may_make_commitments_binding/2, gloss('Commission may by decision make provider commitments binding and declare no further grounds for action'), source('celex:32024R1689/oj#art_93').
:- pred provider_offers_commitments_during_dialogue/2, gloss('provider offers commitments to implement mitigation measures during structured dialogue'), source('celex:32024R1689/oj#art_93').

commission_may_request_measures(Provider, comply_with_obligations) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider, _Model),
    necessary_and_appropriate(comply_with_obligations).

commission_may_request_measures(Provider, implement_mitigation_measures) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider, Model),
    systemic_risk(Model),
    systemic_risk_concern_from_evaluation(Model),
    necessary_and_appropriate(implement_mitigation_measures).

commission_may_request_measures(Provider, restrict_availability_or_withdraw_or_recall) :-
    provider(Provider),
    general_purpose_ai_model_provider(Provider, _Model),
    necessary_and_appropriate(restrict_availability_or_withdraw_or_recall).

ai_office_may_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model_provider(Provider, _Model).

commission_may_make_commitments_binding(Commission, Provider) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model_provider(Provider, Model),
    systemic_risk(Model),
    ai_office_may_initiate_structured_dialogue(AIOffice, Provider),
    provider_offers_commitments_during_dialogue(Provider, Model).

provenance(commission_may_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(necessary_and_appropriate/1, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_concern_from_evaluation/1, 'celex:32024R1689/oj#art_93').
provenance(ai_office_may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(commission_may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(provider_offers_commitments_during_dialogue/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
