% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 034057360b98014102c1d8ead229fbde22dc4bcd3350acac23507bc95c8169c7
% cached     : False
% title      : Corrective actions and duty of information
:- pred must_take_corrective_actions/2, gloss('provider must take necessary corrective actions and provide information'), source('reconciled').
:- pred must_immediately_inform/2, gloss('entity must immediately inform others'), source('reconciled').
:- pred must_report_serious_incident/2, gloss('provider must report serious incident to market surveillance authority'), source('reconciled').

% Article 20(1) — corrective actions and duty to inform supply chain
must_take_corrective_actions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( placing_on_market(System)
    ; putting_into_service(System)
    ),
    ( considers_nonconformity(Provider, System)
    ; has_reason_to_consider_nonconformity(Provider, System)
    ).

must_immediately_inform(Provider, nonconformity(System)) :-
    must_take_corrective_actions(Provider, System).

must_immediately_inform(Provider, nonconformity(System)) :-
    distributor(D),
    must_immediately_inform(Provider, nonconformity(System)),
    must_immediately_inform(Provider, distributor(D, System)).

must_immediately_inform(Provider, deployer(D, System)) :-
    deployer(D),
    must_immediately_inform(Provider, nonconformity(System)).

must_immediately_inform(Provider, authorised_representative(R, System)) :-
    authorised_representative(R),
    must_immediately_inform(Provider, nonconformity(System)).

must_immediately_inform(Provider, importer(I, System)) :-
    importer(I),
    must_immediately_inform(Provider, nonconformity(System)).

% Article 20(2) — risk investigation and notification
must_report_serious_incident(Provider, risk(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presenting_system(System),
    aware_of_risk(Provider, System).

must_immediately_inform(Provider, market_surveillance_authority(A, System)) :-
    must_report_serious_incident(Provider, risk(System)),
    market_surveillance_authority(A),
    competent_for(A, System).

must_immediately_inform(Provider, notified_body(B, System)) :-
    must_report_serious_incident(Provider, risk(System)),
    notified_body(B),
    issued_certificate_for(B, System).

% Auxiliary predicates
considers_nonconformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

has_reason_to_consider_nonconformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

aware_of_risk(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

competent_for(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).

issued_certificate_for(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System).

% Provenance
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_20').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_20').

% References
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
