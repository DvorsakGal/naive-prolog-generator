% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : dcdfe77ea4b2547e07b3ccd538d76419665cae96de031e15ba01ea813d3b8e0c
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred affected_person_applies/1, gloss('person affected by a decision taken by a deployer'), source('celex:32024R1689/oj#art_86').
:- pred decision_affects/2, gloss('decision taken by a deployer based on AI system output affects the person'), source('celex:32024R1689/oj#art_86').
:- pred adverse_impact_on_health_safety_fundamental_rights/1, gloss('person considers the decision to have an adverse impact on health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred exempt_explanation/1, gloss('AI system exempt from the right to explanation'), source('celex:32024R1689/oj#art_86').
:- pred provided_by_union_law_explanation/1, gloss('right to explanation already provided for by Union law'), source('celex:32024R1689/oj#art_86').

% The deployer must provide clear and meaningful explanations to the affected person
must_provide_explanation(Deployer, explanation(Person)) :-
    deployer(Deployer),
    affected_person_applies(Person),
    high_risk_ai_system(AI),
    annex_3_ai_system(AI),
    \+ exempt_explanation(AI),
    \+ provided_by_union_law_explanation(AI),
    decision_affects(Person, AI),
    adverse_impact_on_health_safety_fundamental_rights(Person).

% Definitions for predicates used only in negation (always fail, can be extended later)
exempt_explanation(_AI) :- false.
provided_by_union_law_explanation(_AI) :- false.

% Provenance
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').

% References
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
