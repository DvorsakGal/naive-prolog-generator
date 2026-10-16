% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 8999b67ec66d1a1f300c2b4ca6c1a0c0fd20c35c5c5474c7d96af17631aa1177
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred presents_risk/1, gloss('system presents a risk within the meaning of Article 79(1)'), source('reconciled').
:- pred risk_to_health_safety_fundamental_rights/1, gloss('risk to health safety fundamental rights'), source('reconciled').
:- pred risk_to_health_or_safety/1, gloss('risk to the health or safety of persons'), source('reconciled').
:- pred risk_to_fundamental_rights/1, gloss('risk to fundamental rights'), source('reconciled').
:- pred must_take_necessary_steps/2, gloss('who is obliged to take steps, what steps'), source('reconciled').
:- pred must_take_corrective_actions/2, gloss('operator required to take corrective actions, withdraw, or recall AI system'), source('reconciled').
:- pred inform_commission/2, gloss('Member State informs Commission'), source('reconciled').
:- pred must_cooperate_with_authorities/2, gloss('cooperate with AI Office and competent authorities upon reasoned request'), source('reconciled').
:- pred without_delay/0, gloss('without delay'), source('reconciled').
:- pred without_delay/1, gloss('action taken without undue delay'), source('reconciled').
:- pred member_state/1, gloss('a Member State of the European Union'), source('reconciled').
:- pred market_surveillance_authority/1, gloss('national authority carrying out market surveillance'), source('reconciled').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III as high-risk'), source('reconciled').
:- pred operator/1, gloss('provider, product manufacturer, deployer, authorised representative, importer or distributor'), source('reconciled').
:- pred provider/1, gloss('entity that develops or places an AI system'), source('reconciled').
:- pred placing_on_market/1, gloss('first making available of an AI system on the Union market'), source('reconciled').
:- pred putting_into_service/1, gloss('supply of an AI system for first use by the deployer'), source('reconciled').
:- pred making_available_on_market/1, gloss('supply of an AI system for distribution or use on the Union market'), source('reconciled').

:- pred evaluation_under_article_79/1, gloss('evaluation performed under Article 79'), source('celex:32024R1689/oj#art_82').
:- pred consulted_national_public_authority/2, gloss('market surveillance authority consulted national public authority referred to in Article 77(1)'), source('celex:32024R1689/oj#art_82').
:- pred compliant_with_regulation/1, gloss('AI system complies with the regulation'), source('celex:32024R1689/oj#art_82').
:- pred risk_to_other_aspects_of_public_interest_protection/1, gloss('risk to other aspects of public interest protection'), source('celex:32024R1689/oj#art_82').
:- pred prescribed_period/2, gloss('period prescribed by market surveillance authority'), source('celex:32024R1689/oj#art_82').
:- pred corrective_action_taken/2, gloss('corrective action taken by operator for AI system'), source('celex:32024R1689/oj#art_82').
:- pred all_ai_systems_concerned/2, gloss('all AI systems concerned made available on Union market by operator'), source('celex:32024R1689/oj#art_82').
:- pred member_state_informs_commission_and_other_member_states/2, gloss('Member State informs Commission and other Member States'), source('celex:32024R1689/oj#art_82').
:- pred information_includes_details/2, gloss('information includes all available details'), source('celex:32024R1689/oj#art_82').
:- pred commission_enters_into_consultation/1, gloss('Commission enters into consultation with Member States and operators'), source('celex:32024R1689/oj#art_82').
:- pred commission_evaluates_national_measures/1, gloss('Commission evaluates national measures taken'), source('celex:32024R1689/oj#art_82').
:- pred commission_decides_justification/2, gloss('Commission decides whether measure is justified and proposes other measures'), source('celex:32024R1689/oj#art_82').
:- pred commission_communicates_decision/2, gloss('Commission communicates decision to Member States and operators'), source('celex:32024R1689/oj#art_82').

evaluation_under_article_79(E) :-
    market_surveillance_authority(M),
    member_state(M).

consulted_national_public_authority(M, A) :-
    market_surveillance_authority(M),
    member_state(M).

compliant_with_regulation(S) :-
    high_risk_ai_system(S).

risk_to_other_aspects_of_public_interest_protection(S) :-
    presents_risk(S).

presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_fundamental_rights(S).

presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_health_or_safety(S).

presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_fundamental_rights(S).

presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_other_aspects_of_public_interest_protection(S).

must_take_necessary_steps(Operator, eliminate_risk(S, Period)) :-
    market_surveillance_authority(M),
    member_state(M),
    evaluation_under_article_79(E),
    consulted_national_public_authority(M, _A),
    high_risk_ai_system(S),
    compliant_with_regulation(S),
    presents_risk(S),
    operator(Operator),
    prescribed_period(M, Period),
    without_delay(eliminate_risk(S, Period)).

must_take_corrective_actions(Operator, S) :-
    provider(Operator),
    high_risk_ai_system(S),
    all_ai_systems_concerned(Operator, S),
    market_surveillance_authority(M),
    member_state(M),
    prescribed_period(M, _Period).

must_take_corrective_actions(Operator, S) :-
    operator(Operator),
    \+ provider(Operator),
    high_risk_ai_system(S),
    all_ai_systems_concerned(Operator, S),
    market_surveillance_authority(M),
    member_state(M),
    prescribed_period(M, _Period).

all_ai_systems_concerned(Operator, S) :-
    high_risk_ai_system(S),
    making_available_on_market(S),
    operator(Operator).

member_state_informs_commission_and_other_member_states(M, finding(S)) :-
    member_state(M),
    market_surveillance_authority(M),
    high_risk_ai_system(S),
    compliant_with_regulation(S),
    presents_risk(S),
    without_delay.

information_includes_details(Info, details(S, Origin, SupplyChain, RiskNature, MeasureNature, MeasureDuration)) :-
    high_risk_ai_system(S),
    member_state_informs_commission_and_other_member_states(_M, finding(S)),
    Info = details(S, Origin, SupplyChain, RiskNature, MeasureNature, MeasureDuration).

commission_enters_into_consultation(Consultation) :-
    member_state_informs_commission_and_other_member_states(M, finding(S)),
    member_state(M),
    operator(Operator),
    without_delay,
    Consultation = consultation(M, Operator, S).

commission_evaluates_national_measures(Evaluation) :-
    commission_enters_into_consultation(Consultation),
    Evaluation = evaluate(Consultation).

commission_decides_justification(Decision, justified) :-
    commission_evaluates_national_measures(Evaluation),
    Decision = decide(Evaluation, justified).

commission_decides_justification(Decision, other_measures(Measures)) :-
    commission_evaluates_national_measures(Evaluation),
    Decision = decide(Evaluation, other_measures(Measures)).

commission_communicates_decision(M, Decision) :-
    member_state(M),
    commission_decides_justification(Decision, _Justification),
    without_delay.

commission_communicates_decision(M, Decision) :-
    operator(Operator),
    commission_decides_justification(Decision, _Justification),
    without_delay.

inform_commission(M, finding(S)) :-
    member_state_informs_commission_and_other_member_states(M, finding(S)).

provenance(evaluation_under_article_79/1, 'celex:32024R1689/oj#art_82').
provenance(consulted_national_public_authority/2, 'celex:32024R1689/oj#art_82').
provenance(compliant_with_regulation/1, 'celex:32024R1689/oj#art_82').
provenance(risk_to_other_aspects_of_public_interest_protection/1, 'celex:32024R1689/oj#art_82').
provenance(prescribed_period/2, 'celex:32024R1689/oj#art_82').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_82').
provenance(all_ai_systems_concerned/2, 'celex:32024R1689/oj#art_82').
provenance(member_state_informs_commission_and_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(information_includes_details/2, 'celex:32024R1689/oj#art_82').
provenance(commission_enters_into_consultation/1, 'celex:32024R1689/oj#art_82').
provenance(commission_evaluates_national_measures/1, 'celex:32024R1689/oj#art_82').
provenance(commission_decides_justification/2, 'celex:32024R1689/oj#art_82').
provenance(commission_communicates_decision/2, 'celex:32024R1689/oj#art_82').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_82').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_82').
provenance(inform_commission/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
