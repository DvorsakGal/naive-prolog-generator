% unit       : celex:32024R1689/oj#art_46
% title      : Derogation from conformity assessment procedure
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : gpt-oss:120b-cloud
% prompt sha : 8bea3ea796a3293778099129095ff90957138de236a912ee4640e96d2fbaa2b1
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason_applies/1, gloss('exceptional reason such as public security, life and health protection, environmental protection or protection of key industrial and infrastructural assets'), source('celex:32024R1689/oj#art_46').
:- pred compliance_concluded/2, gloss('market surveillance authority concludes that the system complies with the requirements'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_refused/1, gloss('authorisation request has been refused'), source('celex:32024R1689/oj#art_46').
:- pred urgency_applies/1, gloss('urgency situation for exceptional public security reasons or imminent threat to life or physical safety'), source('celex:32024R1689/oj#art_46').
:- pred no_objection_within_15_days/2, gloss('no objection raised by any Member State or the Commission within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred commission_considers_unjustified/2, gloss('Commission considers the authorisation unjustified'), source('celex:32024R1689/oj#art_46').
:- pred related_to_union_legislation/1, gloss('high‑risk AI system related to products covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_46').
:- pred civil_protection_authority/1, gloss('civil protection authority'), source('celex:32024R1689/oj#art_46').

permitted_authorisation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk(System),
    (placing_on_market(System) ; putting_into_service(System)),
    exceptional_reason_applies(System).

required_authorisation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk(System),
    compliance_concluded(Authority, System).

must_inform_commission_and_member_states(Authority, System) :-
    required_authorisation(Authority, System).

permitted_put_into_service_without_authorisation(Authority, System) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    high_risk(System),
    putting_into_service(System),
    urgency_applies(System).

must_stop_use_if_authorisation_refused(System) :-
    authorisation_refused(System).

must_discard_results_if_authorisation_refused(System) :-
    authorisation_refused(System).

justified_authorisation(Authority, System) :-
    no_objection_within_15_days(Authority, System).

must_withdraw_authorisation(Authority, System) :-
    commission_considers_unjustified(Authority, System).

derogation_applies_only_if_union_legislation(System) :-
    high_risk(System),
    related_to_union_legislation(System).

provenance(permitted_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(required_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(permitted_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_if_authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(must_discard_results_if_authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(justified_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(derogation_applies_only_if_union_legislation/1, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
