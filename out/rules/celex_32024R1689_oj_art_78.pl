% unit       : celex:32024R1689/oj#art_78
% title      : Confidentiality
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : gpt-oss:120b-cloud
% prompt sha : eee6db277e3b146a6e5b3a4106a64471ae3089149d665c0a7a54f5528c3ecd4e
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_78').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_78').
:- pred other_natural_or_legal_person/1, gloss('any other natural or legal person'), source('celex:32024R1689/oj#art_78').
:- pred involved_in_application/1, gloss('person or entity involved in the application of the Regulation'), source('celex:32024R1689/oj#art_78').
:- pred information_obtained/1, gloss('information obtained in carrying out tasks'), source('celex:32024R1689/oj#art_78').
:- pred data_obtained/1, gloss('data obtained in carrying out tasks'), source('celex:32024R1689/oj#art_78').
:- pred strictly_necessary_for_risk_assessment/1, gloss('data strictly necessary for risk assessment'), source('celex:32024R1689/oj#art_78').
:- pred adequate_and_effective_cybersecurity_measures/1, gloss('adequate and effective cybersecurity measures'), source('celex:32024R1689/oj#art_78').
:- pred no_longer_needed_for_purpose/1, gloss('data no longer needed for its original purpose'), source('celex:32024R1689/oj#art_78').
:- pred confidential_exchange/1, gloss('information exchanged on a confidential basis'), source('celex:32024R1689/oj#art_78').
:- pred high_risk_ai_system_used_by/1, gloss('high‑risk AI system used by the given authority'), source('celex:32024R1689/oj#art_78').
:- pred jeopardises_public_and_national_security/1, gloss('disclosure would jeopardise public and national security'), source('celex:32024R1689/oj#art_78').
:- pred exempt_sensitive_operational_data/1, gloss('exempted sensitive operational data'), source('celex:32024R1689/oj#art_78').
:- pred third_country_regulatory_authority/1, gloss('regulatory authority of a third country'), source('celex:32024R1689/oj#art_78').
:- pred confidentiality_arrangement/2, gloss('confidentiality arrangement between two parties'), source('celex:32024R1689/oj#art_78').

must_respect_confidentiality(Actor, Info) :-
    (   commission(Actor)
    ;   market_surveillance_authority(Actor)
    ;   notified_body(Actor)
    ;   other_natural_or_legal_person(Actor)
    ),
    involved_in_application(Actor),
    information_obtained(Info).

must_request_only_necessary_data(Authority, Data) :-
    involved_in_application(Authority),
    data_obtained(Data),
    strictly_necessary_for_risk_assessment(Data).

must_implement_cybersecurity_measures(Authority) :-
    involved_in_application(Authority),
    adequate_and_effective_cybersecurity_measures(Authority).

must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application(Authority),
    data_obtained(Data),
    no_longer_needed_for_purpose(Data).

prohibited_disclosure_without_consultation(Info) :-
    confidential_exchange(Info),
    high_risk_ai_system_used_by(law_enforcement_authority),
    jeopardises_public_and_national_security(Info),
    \+ exempt_sensitive_operational_data(Info).

exempt_sensitive_operational_data(Info) :-
    sensitive_operational_data(Info).

permitted_exchange_confidential_information(Actor, Recipient) :-
    (   commission(Actor)
    ;   member_state(Actor)
    ),
    third_country_regulatory_authority(Recipient),
    confidentiality_arrangement(Actor, Recipient).

high_risk_ai_system_used_by(Authority) :-
    law_enforcement_authority(Authority).

provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(exempt_sensitive_operational_data/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_information/2, 'celex:32024R1689/oj#art_78').

references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
