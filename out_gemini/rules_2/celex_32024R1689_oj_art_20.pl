% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 3e0a10302023fe1ed8de0352b00c6a62bcbb7ee4139214fc3789b8701a6b4e49
% cached     : False
% title      : Corrective actions and duty of information
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_20').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_20').
:- pred placed_on_market/2, gloss('provider placed AI system on the market'), source('celex:32024R1689/oj#art_20').
:- pred put_into_service/2, gloss('provider put AI system into service'), source('celex:32024R1689/oj#art_20').
:- pred considers_or_reason_to_consider_non_compliant/2, gloss('provider considers or has reason to consider system is non-compliant'), source('celex:32024R1689/oj#art_20').
:- pred presents_risk_art_79_1/1, gloss('AI system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_20').
:- pred aware_of_risk/2, gloss('provider becomes aware of risk presented by AI system'), source('celex:32024R1689/oj#art_20').
:- pred distributor_of/2, gloss('entity is distributor of the AI system'), source('celex:32024R1689/oj#art_20').
:- pred deployer_of/2, gloss('entity is deployer of the AI system'), source('celex:32024R1689/oj#art_20').
:- pred importer_of/2, gloss('entity is importer of the AI system'), source('celex:32024R1689/oj#art_20').
:- pred notified_body_issued_certificate/2, gloss('notified body issued a certificate for the AI system under Article 44'), source('celex:32024R1689/oj#art_20').
:- pred must_take_corrective_action/2, gloss('provider must immediately take necessary corrective action'), source('celex:32024R1689/oj#art_20').
:- pred must_inform/2, gloss('actor must inform recipient about matter'), source('celex:32024R1689/oj#art_20').
:- pred must_investigate/2, gloss('provider must immediately investigate causes of risk'), source('celex:32024R1689/oj#art_20').

% Paragraph 1: corrective actions
must_take_corrective_action(Provider, System) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    ( placed_on_market(Provider, System) ; put_into_service(Provider, System) ),
    considers_or_reason_to_consider_non_compliant(Provider, System).

% Paragraph 1: informing distributors, deployers, authorised representatives, importers
must_inform(Provider, informed_party(Distributor, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    distributor_of(Distributor, System).

must_inform(Provider, informed_party(Deployer, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    deployer_of(Deployer, System).

must_inform(Provider, informed_party(AuthorisedRepresentative, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    authorised_representative_of(AuthorisedRepresentative, Provider).

must_inform(Provider, informed_party(Importer, non_compliance(System))) :-
    must_take_corrective_action(Provider, System),
    importer_of(Importer, System).

% Paragraph 2: investigation of causes
must_investigate(Provider, causes_of_risk(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    presents_risk_art_79_1(System),
    aware_of_risk(Provider, System).

% Paragraph 2: informing market surveillance authorities and notified body
must_inform(Provider, authority(Authority, details(System, non_compliance_and_corrective_action))) :-
    must_investigate(Provider, causes_of_risk(System)),
    market_surveillance_authority_for(Authority, System).

must_inform(Provider, notified_body(Body, details(System, non_compliance_and_corrective_action))) :-
    must_investigate(Provider, causes_of_risk(System)),
    notified_body_issued_certificate(Body, System).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_20').
provenance(provider_of/2, 'celex:32024R1689/oj#art_20').
provenance(placed_on_market/2, 'celex:32024R1689/oj#art_20').
provenance(put_into_service/2, 'celex:32024R1689/oj#art_20').
provenance(considers_or_reason_to_consider_non_compliant/2, 'celex:32024R1689/oj#art_20').
provenance(presents_risk_art_79_1/1, 'celex:32024R1689/oj#art_20').
provenance(aware_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(distributor_of/2, 'celex:32024R1689/oj#art_20').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_20').
provenance(importer_of/2, 'celex:32024R1689/oj#art_20').
provenance(notified_body_issued_certificate/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_20').

% References
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
