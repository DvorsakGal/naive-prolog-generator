% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 28ce867e7318176eba59228598f31ee25aa9e7835756f46a61f222a305bb5890
% cached     : False
% title      : Corrective actions and duty of information
:- pred must_take_corrective_action/2, gloss('provider must take corrective action for non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_parties/2, gloss('provider must inform relevant parties about corrective action'), source('celex:32024R1689/oj#art_20').
:- pred must_investigate_risk/2, gloss('provider must investigate causes of risk with deployer'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_authorities/2, gloss('provider must inform market surveillance authorities and notified body'), source('celex:32024R1689/art_20').
:- pred non_conforming_system/1, gloss('high-risk AI system not in conformity with the regulation'), source('celex:32024R1689/oj#art_20').
:- pred risk_within_art_79_1/1, gloss('high-risk AI system presents a risk within meaning of Article 79(1)'), source('celex:32024R1689/oj#art_20').

non_conforming_system(S) :-
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)),
    \+ in_conformity_with_regulation(S).

risk_within_art_79_1(S) :-
    high_risk_ai_system(S),
    risk(S),
    serious_risk_to_health_safety_or_fundamental_rights(S).

must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming_system(S),
    corrective_action(Action),
    member(Action, [bring_into_conformity, withdraw, disable, recall]).

must_inform_parties(P, corrective_action(S, Action)) :-
    provider(P),
    high_risk_ai_system(S),
    must_take_corrective_action(P, S),
    Action = corrective_action(S, _).

must_investigate_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    becomes_aware(P, risk(S)).

must_inform_authorities(P, non_compliance_report(S)) :-
    provider(P),
    high_risk_ai_system(S),
    must_investigate_risk(P, S),
    market_surveillance_authority(Authority),
    competent_for(Authority, S),
    notified_body(Body),
    issued_certificate(Body, S).

provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_parties/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(non_conforming_system/1, 'celex:32024R1689/oj#art_20').
provenance(risk_within_art_79_1/1, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% Helper predicates for article 20
placed_or_put_into_service_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market_by(P, S).
placed_or_put_into_service_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service_by(P, S).

in_conformity_with_regulation(S) :-
    high_risk_ai_system(S),
    ce_marking(S).

serious_risk_to_health_safety_or_fundamental_rights(S) :-
    high_risk_ai_system(S),
    risk(S),
    (harm_to_health(S); harm_to_safety(S); harm_to_fundamental_rights(S)).

corrective_action(bring_into_conformity).
corrective_action(withdraw).
corrective_action(disable).
corrective_action(recall).

becomes_aware(P, risk(S)) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    informed_of_risk(P, S).

competent_for(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    jurisdiction_for(Authority, S).

issued_certificate(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    conformity_assessment(C),
    for_system(C, S),
    issued_by(C, Body).

placing_on_market_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    responsible_provider(P, S).

putting_into_service_by(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    responsible_provider(P, S).

provenance(placed_or_put_into_service_by/2, 'celex:32024R1689/oj#art_20').
provenance(in_conformity_with_regulation/1, 'celex:32024R1689/oj#art_20').
provenance(serious_risk_to_health_safety_or_fundamental_rights/1, 'celex:32024R1689/oj#art_20').
provenance(becomes_aware/2, 'celex:32024R1689/oj#art_20').
provenance(competent_for/2, 'celex:32024R1689/oj#art_20').
provenance(issued_certificate/2, 'celex:32024R1689/oj#art_20').
provenance(placing_on_market_by/2, 'celex:32024R1689/oj#art_20').
provenance(putting_into_service_by/2, 'celex:32024R1689/oj#art_20').
