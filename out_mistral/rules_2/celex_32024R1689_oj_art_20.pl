% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 2ffcac9535bf4f3e0613655456e8a087fe9821f71ef9205eba73e9a267276add
% cached     : False
% title      : Corrective actions and duty of information
:- pred nonconformity_considered/2, gloss('provider considers or has reason to consider that high-risk AI system is not in conformity'), source('celex:32024R1689/oj#art_20').
:- pred corrective_action_taken/2, gloss('provider takes necessary corrective actions to bring system into conformity, withdraw, disable, or recall'), source('celex:32024R1689/oj#art_20').
:- pred informed_distributors/2, gloss('provider informs distributors of the high-risk AI system concerned'), source('celex:32024R1689/oj#art_20').
:- pred informed_deployers/2, gloss('provider informs deployers where applicable'), source('celex:32024R1689/oj#art_20').
:- pred informed_authorised_representative/2, gloss('provider informs authorised representative where applicable'), source('celex:32024R1689/oj#art_20').
:- pred informed_importers/2, gloss('provider informs importers where applicable'), source('celex:32024R1689/oj#art_20').
:- pred risk_investigated/2, gloss('provider investigates causes of risk in collaboration with reporting deployer'), source('celex:32024R1689/oj#art_20').
:- pred informed_market_surveillance_authorities/2, gloss('provider informs market surveillance authorities competent for the high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred informed_notified_body/2, gloss('provider informs notified body that issued certificate where applicable'), source('celex:32024R1689/oj#art_20').

nonconformity_considered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S).

nonconformity_considered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S).

must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S).

must_inform(P, distributors(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    distributor(D),
    informed_distributors(P, D).

must_inform(P, deployers(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    deployer(D),
    informed_deployers(P, D).

must_inform(P, authorised_representative(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    authorised_representative(AR),
    informed_authorised_representative(P, AR).

must_inform(P, importers(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    importer(I),
    informed_importers(P, I).

must_investigate_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    deployer(D),
    risk_investigated(P, D).

must_inform_market_surveillance_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    market_surveillance_authority(MSA),
    informed_market_surveillance_authorities(P, MSA).

must_notify_market_surveillance_authority(P, nonconformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    market_surveillance_authority(MSA),
    informed_market_surveillance_authorities(P, MSA).

must_inform(P, notified_body(S, certificate(S))) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    notified_body(NB),
    certificate(C),
    informed_notified_body(P, NB).

provenance(nonconformity_considered/2, 'celex:32024R1689/oj#art_20').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_20').
provenance(informed_distributors/2, 'celex:32024R1689/oj#art_20').
provenance(informed_deployers/2, 'celex:32024R1689/oj#art_20').
provenance(informed_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(informed_importers/2, 'celex:32024R1689/oj#art_20').
provenance(risk_investigated/2, 'celex:32024R1689/oj#art_20').
provenance(informed_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(informed_notified_body/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_20').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
