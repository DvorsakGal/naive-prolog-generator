% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 8a4f105837083a9af00fcf8187a407761b8870d6b532abefb1929d14716c4267
% cached     : False
% title      : Power to request measures
:- pred must_comply_with_obligations/2, gloss('provider must comply with obligations'), source('celex:32024R1689/oj#art_93').
:- pred must_implement_mitigation_measures/2, gloss('provider must implement mitigation measures'), source('celex:32024R1689/oj#art_93').
:- pred must_restrict_withdraw_or_recall/2, gloss('provider must restrict, withdraw or recall model'), source('celex:32024R1689/oj#art_93').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue'), source('celex:32024R1689/oj#art_93').
:- pred may_make_commitments_binding/2, gloss('Commission may make commitments binding'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_concern/1, gloss('serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred offers_mitigation_commitments/2, gloss('provider offers commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').

must_comply_with_obligations(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

must_implement_mitigation_measures(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    systemic_risk_concern(Provider).

must_restrict_withdraw_or_recall(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Provider).

may_make_commitments_binding(Commission, Provider) :-
    provider(Provider),
    systemic_risk_classification_applies(Provider),
    offers_mitigation_commitments(Provider, systemic_risk),
    systemic_risk_concern(Provider).

systemic_risk_concern(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    systemic_risk_classification_applies(Provider).

offers_mitigation_commitments(Provider, systemic_risk) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

provenance(must_comply_with_obligations/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_withdraw_or_recall/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_concern/1, 'celex:32024R1689/oj#art_93').
provenance(offers_mitigation_commitments/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
