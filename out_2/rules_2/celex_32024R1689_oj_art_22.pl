% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 374ea75f5b3f532f0807d5275d45086eb94a7720f9803232410937dfdeb38ac9
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred must_appoint/2, gloss('provider must appoint an authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred must_enable/2, gloss('provider must enable its authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_verify/2, gloss('authorised representative must verify conformity documentation'), source('celex:32024R1689/oj#art_22').
:- pred must_keep/2, gloss('authorised representative must keep information for ten years after placement'), source('celex:32024R1689/oj#art_22').
:- pred must_provide/2, gloss('authorised representative must provide information to competent authority on request'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate/2, gloss('authorised representative must cooperate with competent authorities'), source('celex:32024R1689/oj#art_22').
:- pred must_comply/2, gloss('authorised representative must comply with registration obligations where applicable'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate/2, gloss('authorised representative must terminate the mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_inform/2, gloss('authorised representative must inform authorities of termination'), source('celex:32024R1689/oj#art_22').
:- pred provider_contrary_obligations/1, gloss('provider is acting contrary to its obligations'), source('celex:32024R1689/oj#art_22').

must_appoint(Provider, authorised_representative(Representative)) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ placing_on_market(S),
    authorised_representative(Representative).

must_enable(Provider, authorised_representative(Representative)) :-
    provider(Provider),
    authorised_representative(Representative).

must_verify(Representative, conformity_documents) :-
    authorised_representative(Representative).

must_keep(Representative,
          kept_information(Provider,
                           eu_declaration,
                           technical_documentation,
                           certificate,
                           years(10),
                           after_placement(S))) :-
    authorised_representative(Representative),
    provider(Provider),
    high_risk_ai_system(S).

must_provide(Representative, conformity_information(Authority)) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).

must_cooperate(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).

must_comply(Representative, registration_obligations) :-
    authorised_representative(Representative).

must_terminate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_contrary_obligations(Provider).

must_inform(Representative,
            termination_notice(market_surveillance_authority, Provider)) :-
    authorised_representative(Representative),
    provider(Provider).

must_inform(Representative,
            termination_notice(notified_body(NB), Provider)) :-
    authorised_representative(Representative),
    provider(Provider),
    notified_body(NB).

provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
