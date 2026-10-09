% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : ed8085a17f4e4fedaf3872723fa08ed7eb37b017392394a02a5722f53c523453
% cached     : False
% title      : Power to request measures
:- pred permitted_take_appropriate_measures/1, gloss('Commission may request provider to take appropriate measures'), source('celex:32024R1689/oj#art_93').
:- pred permitted_implement_mitigation_measures/1, gloss('Commission may request provider to implement mitigation measures'), source('celex:32024R1689/oj#art_93').
:- pred permitted_restrict_making_available/1, gloss('Commission may request provider to restrict making available on the market'), source('celex:32024R1689/oj#art_93').
:- pred permitted_withdraw/1, gloss('Commission may request provider to withdraw the model'), source('celex:32024R1689/oj#art_93').
:- pred permitted_recall/1, gloss('Commission may request provider to recall the model'), source('celex:32024R1689/oj#art_93').
:- pred initiate_structured_dialogue/2, gloss('AI Office may initiate a structured dialogue with the provider'), source('celex:32024R1689/oj#art_93').
:- pred make_commitments_binding/2, gloss('Commission may make provider commitments binding'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_applies/1, gloss('Provider of a general‑purpose AI model is subject to a systemic risk'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments_to_implement_mitigation_measures/1, gloss('Provider offers commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').

permitted_take_appropriate_measures(Provider) :-
    provider(Provider).

permitted_implement_mitigation_measures(Provider) :-
    provider(Provider).

permitted_restrict_making_available(Provider) :-
    provider(Provider).

permitted_withdraw(Provider) :-
    provider(Provider).

permitted_recall(Provider) :-
    provider(Provider).

initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider).

make_commitments_binding(commission, Provider) :-
    provider(Provider),
    systemic_risk_applies(Provider),
    offers_commitments_to_implement_mitigation_measures(Provider).

provenance(permitted_take_appropriate_measures/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_implement_mitigation_measures/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_restrict_making_available/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_withdraw/1, 'celex:32024R1689/oj#art_93').
provenance(permitted_recall/1, 'celex:32024R1689/oj#art_93').
provenance(initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments_to_implement_mitigation_measures/1, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
