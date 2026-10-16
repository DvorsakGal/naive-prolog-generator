% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : a0e0e5c7f32faa091f68c17c0ccc17c383927138603f08077dffe70f17f84f4b
% cached     : False
% title      : Union safeguard procedure
:- pred objection_raised/2, gloss('A market surveillance authority raises an objection to a national measure within the applicable deadline'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_contrary_to_union_law/2, gloss('The Commission considers a national measure to be contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred triggers_union_safeguard_procedure/2, gloss('Conditions trigger the Union safeguard procedure for a national measure'), source('celex:32024R1689/oj#art_81').
:- pred prohibited_ai_practice_non_compliance/1, gloss('Non-compliance with the prohibition of AI practices referred to in Article 5'), source('celex:32024R1689/oj#art_81').
:- pred deadline_decision/2, gloss('Applicable deadline for the Commission decision on a national measure'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_considered_justified/2, gloss('The Commission decides that the national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_considered_unjustified/2, gloss('The Commission decides that the national measure is unjustified'), source('celex:32024R1689/oj#art_81').
:- pred must_consult/2, gloss('An actor must enter into consultation regarding a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate/2, gloss('An actor must evaluate a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_notify/2, gloss('An actor must notify another entity of a decision or action'), source('celex:32024R1689/oj#art_81').
:- pred must_inform/2, gloss('An actor must inform another entity of a matter'), source('celex:32024R1689/oj#art_81').
:- pred must_take_restrictive_measures/2, gloss('Member States must take appropriate restrictive measures concerning an AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw/2, gloss('Actor must withdraw a specified measure or system'), source('celex:32024R1689/oj#art_81').
:- pred must_apply_procedure/2, gloss('Actor must apply a specific legal procedure'), source('celex:32024R1689/oj#art_81').
:- pred shortcoming_in_standards_or_specifications/1, gloss('Non-compliance is attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

% Paragraph 1: Triggers for Union safeguard procedure
triggers_union_safeguard_procedure(Commission, Measure) :-
    commission(Commission),
    objection_raised(_Authority, Measure).

triggers_union_safeguard_procedure(Commission, Measure) :-
    commission(Commission),
    commission_considers_contrary_to_union_law(Commission, Measure).

% Paragraph 1: Commission obligations to consult, evaluate, and decide
must_consult(Commission, consultation(Measure, Authority, Operator)) :-
    triggers_union_safeguard_procedure(Commission, Measure),
    market_surveillance_authority(Authority),
    operator(Operator).

must_evaluate(Commission, Measure) :-
    triggers_union_safeguard_procedure(Commission, Measure).

must_decide(Commission, justification(Measure, within(Deadline))) :-
    triggers_union_safeguard_procedure(Commission, Measure),
    deadline_decision(Measure, Deadline).

deadline_decision(Measure, days(60)) :-
    prohibited_ai_practice_non_compliance(Measure).

deadline_decision(Measure, months(6)) :-
    \+ prohibited_ai_practice_non_compliance(Measure).

must_notify(Commission, decision(justification(Measure), Authority)) :-
    triggers_union_safeguard_procedure(Commission, Measure),
    market_surveillance_authority(Authority).

must_inform(Commission, decision(justification(Measure), other_market_surveillance_authorities)) :-
    triggers_union_safeguard_procedure(Commission, Measure).

% Paragraph 2: Consequences of justification decision
must_take_restrictive_measures(MemberState, restrictive_measures(System)) :-
    national_measure_considered_justified(Commission, national_measure(MemberStateAuth, System)),
    commission(Commission),
    market_surveillance_authority(MemberStateAuth),
    ai_system(System).

must_inform(MemberState, commission(restrictive_measures(System))) :-
    must_take_restrictive_measures(MemberState, restrictive_measures(System)).

must_withdraw(MemberStateAuth, Measure) :-
    national_measure_considered_unjustified(Commission, Measure),
    commission(Commission),
    market_surveillance_authority(MemberStateAuth).

must_inform(MemberStateAuth, commission(withdrawal(Measure))) :-
    must_withdraw(MemberStateAuth, Measure).

% Paragraph 3: Shortcomings in harmonised standards or common specifications
must_apply_procedure(Commission, standardisation_objection_procedure(regulation_1025_2012_art_11)) :-
    commission(Commission),
    national_measure_considered_justified(Commission, Measure),
    shortcoming_in_standards_or_specifications(Measure).

% Provenance
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_union_law/2, 'celex:32024R1689/oj#art_81').
provenance(triggers_union_safeguard_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(prohibited_ai_practice_non_compliance/1, 'celex:32024R1689/oj#art_81').
provenance(deadline_decision/2, 'celex:32024R1689/oj#art_81').
provenance(national_measure_considered_justified/2, 'celex:32024R1689/oj#art_81').
provenance(national_measure_considered_unjustified/2, 'celex:32024R1689/oj#art_81').
provenance(must_consult/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(shortcoming_in_standards_or_specifications/1, 'celex:32024R1689/oj#art_81').

% References
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
