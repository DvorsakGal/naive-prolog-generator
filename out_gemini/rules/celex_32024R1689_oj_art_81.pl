% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c7b00bef747df99cac47a98f0964f79da158d8de0f0d320ffb9c11451b608145
% cached     : False
% title      : Union safeguard procedure
:- pred national_measure/1, gloss('measure taken by a market surveillance authority'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised/2, gloss('objection raised by a market surveillance authority to a national measure'), source('celex:32024R1689/oj#art_81').
:- pred considered_contrary_to_union_law/2, gloss('an entity considers a measure to be contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_prohibited_practice/1, gloss('measure relates to non-compliance with prohibited AI practices'), source('celex:32024R1689/oj#art_81').
:- pred objection_within_deadline/2, gloss('objection raised within statutory period'), source('celex:32024R1689/oj#art_81').
:- pred commission_safeguard_consultation_triggered/1, gloss('safeguard procedure consultation triggered for measure'), source('celex:32024R1689/oj#art_81').
:- pred must_consult/2, gloss('Commission must enter into consultation regarding measure'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate/2, gloss('Commission must evaluate national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide/2, gloss('Commission must decide whether measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred must_notify/2, gloss('entity must notify decision or information to recipient'), source('celex:32024R1689/oj#art_81').
:- pred decision_deadline/2, gloss('statutory deadline for Commission decision'), source('celex:32024R1689/oj#art_81').
:- pred considered_justified/2, gloss('measure is considered justified by an entity'), source('celex:32024R1689/oj#art_81').
:- pred considered_unjustified/2, gloss('measure is considered unjustified by an entity'), source('celex:32024R1689/oj#art_81').
:- pred member_state/1, gloss('a Member State of the European Union'), source('celex:32024R1689/oj#art_81').
:- pred originating_member_state/2, gloss('Member State whose authority took the national measure'), source('celex:32024R1689/oj#art_81').
:- pred target_ai_system/2, gloss('AI system targeted by a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_take_restrictive_measures/2, gloss('Member State must take restrictive measures regarding an AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw/2, gloss('Member State must withdraw national measure'), source('celex:32024R1689/oj#art_81').
:- pred attributed_to_standard_shortcoming/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').
:- pred must_apply_procedure/2, gloss('Commission must apply safeguard procedure under regulation'), source('celex:32024R1689/oj#art_81').

% Paragraph 1: Objections within deadlines
objection_within_deadline(Authority, Measure) :-
    market_surveillance_authority(Authority),
    national_measure(Measure),
    non_compliance_prohibited_practice(Measure),
    objection_raised(Authority, within(days(30), Measure)).

objection_within_deadline(Authority, Measure) :-
    market_surveillance_authority(Authority),
    national_measure(Measure),
    \+ non_compliance_prohibited_practice(Measure),
    objection_raised(Authority, within(months(3), Measure)).

% Paragraph 1: Safeguard triggers
commission_safeguard_consultation_triggered(Measure) :-
    objection_within_deadline(_Authority, Measure).

commission_safeguard_consultation_triggered(Measure) :-
    national_measure(Measure),
    considered_contrary_to_union_law(commission, Measure).

% Paragraph 1: Consultation and evaluation duties
must_consult(commission, consultation(Measure, Authority, Operator)) :-
    commission_safeguard_consultation_triggered(Measure),
    originating_member_state(State, Measure),
    market_surveillance_authority(Authority),
    originating_member_state(State, Authority),
    operator(Operator).

must_evaluate(commission, Measure) :-
    commission_safeguard_consultation_triggered(Measure).

% Paragraph 1: Decision deadlines
decision_deadline(Measure, within(days(60), notification)) :-
    national_measure(Measure),
    non_compliance_prohibited_practice(Measure).

decision_deadline(Measure, within(months(6), notification)) :-
    national_measure(Measure),
    \+ non_compliance_prohibited_practice(Measure).

% Paragraph 1: Commission decision and notification duties
must_decide(commission, justification(Measure, Deadline)) :-
    commission_safeguard_consultation_triggered(Measure),
    decision_deadline(Measure, Deadline).

must_notify(commission, decision(justification(Measure), Authority)) :-
    must_decide(commission, justification(Measure, _Deadline)),
    market_surveillance_authority(Authority).

% Paragraph 2: If justified, all Member States take restrictive measures
must_take_restrictive_measures(State, System) :-
    member_state(State),
    national_measure(Measure),
    considered_justified(commission, Measure),
    target_ai_system(Measure, System).

must_notify(State, restrictive_measures_taken(System)) :-
    must_take_restrictive_measures(State, System).

% Paragraph 2: If unjustified, originating Member State withdraws measure
must_withdraw(State, Measure) :-
    originating_member_state(State, Measure),
    considered_unjustified(commission, Measure).

must_notify(State, withdrawn(Measure)) :-
    must_withdraw(State, Measure).

% Paragraph 3: Shortcomings in standards / common specifications
must_apply_procedure(commission, article_11_regulation_1025_2012(Measure)) :-
    national_measure(Measure),
    considered_justified(commission, Measure),
    attributed_to_standard_shortcoming(Measure).

% Provenance
provenance(national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_81').
provenance(considered_contrary_to_union_law/2, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_prohibited_practice/1, 'celex:32024R1689/oj#art_81').
provenance(objection_within_deadline/2, 'celex:32024R1689/oj#art_81').
provenance(commission_safeguard_consultation_triggered/1, 'celex:32024R1689/oj#art_81').
provenance(must_consult/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify/2, 'celex:32024R1689/oj#art_81').
provenance(decision_deadline/2, 'celex:32024R1689/oj#art_81').
provenance(considered_justified/2, 'celex:32024R1689/oj#art_81').
provenance(considered_unjustified/2, 'celex:32024R1689/oj#art_81').
provenance(member_state/1, 'celex:32024R1689/oj#art_81').
provenance(originating_member_state/2, 'celex:32024R1689/oj#art_81').
provenance(target_ai_system/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_81').
provenance(attributed_to_standard_shortcoming/1, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

% References
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
