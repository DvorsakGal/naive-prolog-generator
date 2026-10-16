% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 24700c2da2b20c023f9644dad48dc97ddfd5e54ca2094cdf4a05d5df300ec066
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred presents_risk/1, gloss('AI system presents a risk to health, safety, or fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred presents_risk_to_health_or_safety/1, gloss('AI system presents a risk to health or safety'), source('celex:32024R1689/oj#art_79').
:- pred presents_risk_to_fundamental_rights/1, gloss('AI system presents a risk to fundamental rights'), source('celex:32024R1689/oj#art_79').
:- pred presents_risk_to_vulnerable_groups/1, gloss('AI system presents a risk to vulnerable groups'), source('celex:32024R1689/oj#art_79').
:- pred evaluation_prescribed_period/2, gloss('prescribed period for corrective action on an AI system'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_cross_border/1, gloss('non-compliance of AI system is not restricted to national territory'), source('celex:32024R1689/oj#art_79').
:- pred notified_national_measure/2, gloss('notification of provisional national measure under Art 79(5)'), source('celex:32024R1689/oj#art_79').
:- pred objection_raised/2, gloss('objection raised against a provisional national measure'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_prohibited_practices/1, gloss('non-compliance is due to breach of prohibited practices under Art 5'), source('celex:32024R1689/oj#art_79').

% Paragraph 1: definition of AI system presenting a risk
presents_risk(S) :-
    ai_system(S),
    presents_risk_to_health_or_safety(S).
presents_risk(S) :-
    ai_system(S),
    presents_risk_to_fundamental_rights(S).

% Paragraph 2: duties to evaluate, cooperate, require corrective actions, inform notified body
must_comply(Msa, evaluation(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    presents_risk(S).

must_comply(Msa, cooperate_fundamental_rights(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    presents_risk_to_fundamental_rights(S).

must_comply(Op, cooperate(Msa)) :-
    operator(Op),
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    presents_risk(S).

must_comply(Msa, require_corrective_action(Op, S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliant(S),
    operator(Op).

must_comply(Msa, inform_notified_body(Nb, S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliant(S),
    notified_body(Nb).

% Paragraph 3: cross-border information duty
must_report(Msa, non_compliance_cross_border(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliance_cross_border(S).

% Paragraph 4: operator duty across Union market
must_comply(Op, corrective_action_union_market(S)) :-
    operator(Op),
    non_compliant(S).

% Paragraph 5: provisional national measures if operator fails to take adequate corrective action
national_measure(Msa, provisional_measure(S)) :-
    market_surveillance_authority(Msa),
    market_surveillance_authority_for(Msa, S),
    non_compliant(S),
    \+ adequate_corrective_action_taken(Op, S),
    operator(Op).

must_report(Msa, provisional_measure(S)) :-
    market_surveillance_authority(Msa),
    national_measure(Msa, provisional_measure(S)).

% Paragraph 8: measure deemed justified if no objection within deadline
deemed_justified(Measure) :-
    notified_national_measure(Measure, S),
    non_compliance_prohibited_practices(S),
    \+ objection_raised(Measure, days(30)).

deemed_justified(Measure) :-
    notified_national_measure(Measure, S),
    \+ non_compliance_prohibited_practices(S),
    \+ objection_raised(Measure, months(3)).

% Paragraph 9: restrictive measures by other MSAs
must_comply(Msa, restrictive_measures(S)) :-
    market_surveillance_authority(Msa),
    deemed_justified(provisional_measure(S)).

% Provenance
provenance(presents_risk/1, 'celex:32024R1689/oj#art_79').
provenance(must_comply/2, 'celex:32024R1689/oj#art_79').
provenance(must_report/2, 'celex:32024R1689/oj#art_79').
provenance(national_measure/2, 'celex:32024R1689/oj#art_79').
provenance(deemed_justified/1, 'celex:32024R1689/oj#art_79').

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
