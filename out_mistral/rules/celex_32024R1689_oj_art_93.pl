% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ac87e9148c04f504e0638e6b524abb6f1241534a3b2d08490f3bcc369367f3c2
% cached     : False
% title      : Power to request measures
:- pred must_take_measures_to_comply(Provider, Model), gloss('provider of general-purpose AI model must take appropriate measures to comply with obligations under Articles 53 and 54'), source('celex:32024R1689/oj#art_93').
:- pred must_implement_mitigation_measures(Provider, Model), gloss('provider must implement mitigation measures where evaluation under Article 92 gives rise to serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred must_restrict_making_available(Provider, Model), gloss('provider must restrict the making available on the market of the model'), source('celex:32024R1689/oj#art_93').
:- pred must_withdraw_model(Provider, Model), gloss('provider must withdraw the model'), source('celex:32024R1689/oj#art_93').
:- pred must_recall_model(Provider, Model), gloss('provider must recall the model'), source('celex:32024R1689/oj#art_93').
:- pred may_initiate_structured_dialogue(AIOffice, Provider, Model), gloss('AI Office may initiate structured dialogue with provider of general-purpose AI model before measure is requested'), source('celex:32024R1689/oj#art_93').
:- pred may_make_commitments_binding(Commission, Provider, Model, Commitments), gloss('Commission may by decision make provider commitments binding and declare no further grounds for action'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments(Provider, Model, Commitments), gloss('provider offers commitments to implement mitigation measures to address systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_at_union_level(Model), gloss('model poses systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred serious_and_substantiated_concern(SystemicRisk), gloss('serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred evaluation_under_article_92(Model, Evaluation), gloss('evaluation carried out in accordance with Article 92'), source('celex:32024R1689/oj#art_93').
:- pred mitigation_measures(Commitments), gloss('commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').

must_take_measures_to_comply(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, comply_with_obligations(art_53, art_54)).

must_implement_mitigation_measures(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_at_union_level(Model),
    evaluation_under_article_92(Model, Evaluation),
    serious_and_substantiated_concern(Evaluation),
    commission_requests_measure(commission, Provider, implement_mitigation_measures).

must_restrict_making_available(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, restrict_making_available_on_market(Model)).

must_withdraw_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, withdraw(Model)).

must_recall_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    commission_requests_measure(commission, Provider, recall(Model)).

may_initiate_structured_dialogue(AIOffice, Provider, Model) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model(Model),
    before_measure_requested(Provider, Model).

may_make_commitments_binding(Commission, Provider, Model, Commitments) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_at_union_level(Model),
    offers_commitments(Provider, Model, Commitments),
    mitigation_measures(Commitments),
    structured_dialogue_initiated(ai_office, Provider, Model).

offers_commitments(Provider, Model, Commitments) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_at_union_level(Model),
    mitigation_measures(Commitments).

provenance(must_take_measures_to_comply/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_making_available/2, 'celex:32024R1689/oj#art_93').
provenance(must_withdraw_model/2, 'celex:32024R1689/oj#art_93').
provenance(must_recall_model/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_structured_dialogue/3, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/4, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments/3, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_93').
provenance(serious_and_substantiated_concern/1, 'celex:32024R1689/oj#art_93').
provenance(evaluation_under_article_92/2, 'celex:32024R1689/oj#art_93').
provenance(mitigation_measures/1, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
