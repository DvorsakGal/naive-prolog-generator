% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : cedca3d6c766bb6388624e1a9bbdcda9732f5fdf5cffaa94fef9c48585b28139
% cached     : False
% title      : Corrective actions and duty of information
:- pred must_take_corrective_action/2, gloss('provider must take corrective action for non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_distributors/2, gloss('provider must inform distributors of non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_deployers/2, gloss('provider must inform deployers of non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_authorised_representative/2, gloss('provider must inform authorised representative of non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_importers/2, gloss('provider must inform importers of non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_investigate_risk_causes/2, gloss('provider must investigate causes of risk with reporting deployer'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_market_surveillance_authorities/2, gloss('provider must inform market surveillance authorities of risk and corrective action'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_notified_body/2, gloss('provider must inform notified body that issued certificate of risk and corrective action'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).

must_inform_distributors(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).

must_inform_deployers(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).

must_inform_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S),
    authorised_representative(R).

must_inform_importers(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    non_conforming(S).

must_investigate_risk_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    aware_of_risk(P, S).

must_inform_market_surveillance_authorities(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    aware_of_risk(P, S).

must_inform_notified_body(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    aware_of_risk(P, S),
    issued_certificate(B, S),
    notified_body(B).

non_conforming(S) :-
    high_risk_ai_system(S),
    \+ meets_requirements(S, chapter_3_section_2).

aware_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_within_art_79_1(S).

provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributors/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployers/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importers/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_risk_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').
provenance(non_conforming/1, 'celex:32024R1689/oj#art_20').
provenance(aware_of_risk/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
