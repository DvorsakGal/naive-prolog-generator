% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 60c673b0a404b26857369651733af52c36f94a454407e24fd854e5ea8169606e
% cached     : False
% title      : Power to request measures
:- pred may_request_measures/2, gloss('Commission may request providers to take measures'), source('celex:32024R1689/oj#art_93').
:- pred necessary_and_appropriate/0, gloss('where necessary and appropriate'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_at_union_level/1, gloss('serious and substantiated concern of systemic risk at Union level'), source('celex:32024R1689/oj#art_93').
:- pred evaluation_art_92/1, gloss('evaluation carried out in accordance with Article 92'), source('celex:32024R1689/oj#art_93').
:- pred may_initiate_dialogue_before_request/2, gloss('AI Office may initiate structured dialogue before requesting measures'), source('celex:32024R1689/oj#art_93').
:- pred commitments_offered/2, gloss('provider offers commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').
:- pred may_make_commitments_binding/2, gloss('Commission may make commitments binding by decision'), source('celex:32024R1689/oj#art_93').

may_request_measures(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    necessary_and_appropriate.

may_request_measures(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    necessary_and_appropriate,
    evaluation_art_92(Provider),
    systemic_risk_at_union_level(Provider).

may_request_measures(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    necessary_and_appropriate,
    systemic_risk_at_union_level(Provider).

must_take_restriction_measures(Provider, model) :-
    may_request_measures(_Commission, Provider).

may_initiate_dialogue_before_request(ai_office, Provider) :-
    general_purpose_ai_model_provider(Provider),
    may_request_measures(_Commission, Provider).

may_make_commitments_binding(Commission, Provider) :-
    general_purpose_ai_model_provider(Provider),
    systemic_risk_present(Provider),
    commitments_offered(Provider, mitigation_measures),
    may_initiate_dialogue_before_request(_AiOffice, Provider).

provenance(may_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_take_restriction_measures/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_dialogue_before_request/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
