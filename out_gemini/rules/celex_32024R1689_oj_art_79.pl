% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0602ff8f9231e8a0f61bdc5b11d4535b894ad9831bb23d3e80d05411c2ad3f4b
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred presents_risk/1, gloss('AI system presents a risk to health, safety, or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred non_compliant/1, gloss('AI system does not comply with requirements and obligations'), source('celex:32024R1689/oj#art_79').
:- pred adequate_corrective_action_taken/2, gloss('operator has taken adequate corrective action for the AI system'), source('celex:32024R1689/oj#art_79').
:- pred objection_raised/1, gloss('an objection has been raised against a provisional measure'), source('celex:32024R1689/oj#art_79').
:- pred prohibited_ai_practice/1, gloss('AI system involves a prohibited AI practice under Article 5'), source('celex:32024R1689/oj#art_79').

:- pred must_evaluate(Authority, System), gloss('authority must carry out an evaluation of the AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_inform(Authority, Recipient), gloss('authority or body must inform a party'), source('celex:32024R1689/oj#art_79').
:- pred must_cooperate(Actor, Target), gloss('actor must cooperate with authority or body'), source('celex:32024R1689/oj#art_79').
:- pred must_require_corrective_action(Authority, Action), gloss('authority must require operator to take corrective action'), source('celex:32024R1689/oj#art_79').
:- pred must_take_corrective_action(Operator, System), gloss('operator must ensure corrective action is taken for AI systems'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measure(Authority, Measure), gloss('authority must take provisional measure restricting or recalling AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_notify(Authority, Subject), gloss('authority must notify the Commission and Member States'), source('celex:32024R1689/oj#art_79').
:- pred deemed_justified(Measure), gloss('provisional measure is deemed justified if no objection is raised'), source('celex:32024R1689/oj#art_79').
:- pred objection_period(Measure, Duration), gloss('applicable period for raising objections to a measure'), source('celex:32024R1689/oj#art_79').

% Paragraph 2: Evaluation requirement when system presents risk
must_evaluate(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).

% Paragraph 2: Inform and cooperate when fundamental rights are at risk
must_inform(Authority, fundamental_rights_bodies) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).

must_cooperate(Authority, fundamental_rights_bodies) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).

must_cooperate(Operator, Authority) :-
    operator(Operator),
    market_surveillance_authority(Authority),
    ai_system(System),
    presents_risk(System).

must_cooperate(Operator, fundamental_rights_bodies) :-
    operator(Operator),
    ai_system(System),
    presents_risk(System).

% Paragraph 2: Requirement for corrective action if non-compliant
must_require_corrective_action(Authority, corrective_action(Operator, System)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    presents_risk(System),
    non_compliant(System).

must_inform(Authority, notified_body(Body, non_compliance(System))) :-
    market_surveillance_authority(Authority),
    notified_body(Body),
    ai_system(System),
    non_compliant(System).

% Paragraph 4: Operator obligation to take corrective action
must_take_corrective_action(Operator, System) :-
    operator(Operator),
    ai_system(System),
    non_compliant(System),
    making_available_on_market(System).

% Paragraph 5: Provisional measures if no adequate corrective action
must_take_provisional_measure(Authority, provisional_measure(Operator, System)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    non_compliant(System),
    \+ adequate_corrective_action_taken(Operator, System).

must_notify(Authority, provisional_measure(Operator, System)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(System),
    non_compliant(System),
    \+ adequate_corrective_action_taken(Operator, System).

% Paragraph 8: Deemed justification if no objection raised within applicable period
objection_period(provisional_measure(_Operator, System), days(30)) :-
    prohibited_ai_practice(System).

objection_period(provisional_measure(_Operator, System), months(3)) :-
    \+ prohibited_ai_practice(System).

deemed_justified(Measure) :-
    Measure = provisional_measure(_Operator, _System),
    objection_period(Measure, _Period),
    \+ objection_raised(Measure).

% Provenance
provenance(presents_risk/1, 'celex:32024R1689/oj#art_79').
provenance(non_compliant/1, 'celex:32024R1689/oj#art_79').
provenance(adequate_corrective_action_taken/2, 'celex:32024R1689/oj#art_79').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_79').
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_79').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measure/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(objection_period/2, 'celex:32024R1689/oj#art_79').

% References
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
