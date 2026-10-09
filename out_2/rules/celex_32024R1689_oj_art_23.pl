% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bdc96a974ed5fb10764b15c5e5433d03a480f3a6bfaee95471f0604d5fbb7c32
% cached     : False
% title      : Obligations of importers
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred reason_not_conform/2, gloss('importer has sufficient reason to consider the system not in conformity or falsified'), source('celex:32024R1689/oj#art_23').
:- pred presents_risk/1, gloss('system presents a risk within the meaning of article 79'), source('celex:32024R1689/oj#art_23').

must_ensure(Importer, system_in_conformity(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_ensure(Importer, provider_conducted_assessment(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_ensure(Importer, provider_technical_documentation(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_ensure(Importer, ce_marking_and_declaration(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_ensure(Importer, provider_appointed_authorised_representative(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

prohibited_placing_on_market(S) :-
    high_risk_ai_system(S),
    reason_not_conform(_,S).

must_inform(Importer, risk_information(Provider, AuthorisedRepresentative, MarketSurveillanceAuthority, S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(Provider),
    authorised_representative(AuthorisedRepresentative),
    market_surveillance_authority(MarketSurveillanceAuthority),
    presents_risk(S).

must_provide(Importer, identification_information(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_ensure(Importer, storage_transport_not_jeopardise(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_keep(Importer, documentation_copy(S, period(years(10), after(placed_or_put_into_service(S))))) :-
    importer(Importer),
    high_risk_ai_system(S).

must_provide(Importer, information_to_competent_authorities(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_ensure(Importer, technical_documentation_available(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

must_cooperate(Importer, competent_authorities(S)) :-
    importer(Importer),
    high_risk_ai_system(S).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').
