% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 51cf65184fcb74a8795e60d1e27e5bfa14d5af100a6093e292f82cb0cb500c55
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred right_to_explanation/1, gloss('affected person has right to explanation of individual decision-making'), source('celex:32024R1689/oj#art_86').

:- pred decision_based_on_high_risk_ai_output/2, gloss('decision taken by deployer based on output from high-risk AI system'), source('celex:32024R1689/oj#art_86').
:- pred produces_legal_effects_or_similarly_significantly_affects/2, gloss('decision produces legal effects or similarly significantly affects person'), source('celex:32024R1689/oj#art_86').
:- pred adverse_impact_on_health_safety_or_fundamental_rights/2, gloss('person considers decision to have adverse impact on health, safety or fundamental rights'), source('celex:32024R1689/oj#art_86').
:- pred exception_or_restriction_under_union_or_national_law/1, gloss('exceptions or restrictions to explanation obligation follow from Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred right_otherwise_provided_under_union_law/1, gloss('right to explanation already provided for under other Union law'), source('celex:32024R1689/oj#art_86').

right_to_explanation(P) :-
    affected_person(P),
    decision_based_on_high_risk_ai_output(D, P),
    produces_legal_effects_or_similarly_significantly_affects(D, P),
    adverse_impact_on_health_safety_or_fundamental_rights(D, P),
    high_risk_ai_system(S),
    listed_in_annex_3(S),
    \+ listed_in_annex_3_point_2(S),
    output_from(S, D),
    \+ exception_or_restriction_under_union_or_national_law(D),
    \+ right_otherwise_provided_under_union_law(P).

decision_based_on_high_risk_ai_output(D, P) :-
    deployer(De),
    decision(De, D),
    based_on_output(D),
    affects(D, P).

produces_legal_effects_or_similarly_significantly_affects(D, P) :-
    legal_effects(D, P).
produces_legal_effects_or_similarly_significantly_affects(D, P) :-
    similarly_significant_affect(D, P).

adverse_impact_on_health_safety_or_fundamental_rights(D, P) :-
    person_considers_adverse_impact(P, D),
    (health_impact(D, P); safety_impact(D, P); fundamental_rights_impact(D, P)).

exception_or_restriction_under_union_or_national_law(D) :-
    national_law_provides_otherwise(D).
exception_or_restriction_under_union_or_national_law(D) :-
    union_law_exception(D).

right_otherwise_provided_under_union_law(P) :-
    union_law_provides_explanation_right(P).

provenance(right_to_explanation/1, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_high_risk_ai_output/2, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects_or_similarly_significantly_affects/2, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_on_health_safety_or_fundamental_rights/2, 'celex:32024R1689/oj#art_86').
provenance(exception_or_restriction_under_union_or_national_law/1, 'celex:32024R1689/oj#art_86').
provenance(right_otherwise_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').
