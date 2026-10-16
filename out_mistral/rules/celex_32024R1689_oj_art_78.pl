% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cdd26d618603c66f5ffb8a69fb31e4ca8e63297b4975a3c135b7fe10cabd83f8
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/2, gloss('who is obliged, what information to protect'), source('celex:32024R1689/oj#art_78').
:- pred protected_information/1, gloss('information that must be kept confidential'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data/1, gloss('authority that must limit data requests to what is strictly necessary'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/1, gloss('authority that must protect security and confidentiality of obtained data'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/1, gloss('authority that must delete data once purpose is fulfilled'), source('celex:32024R1689/oj#art_78').
:- pred confidential_exchange/2, gloss('information exchanged on confidential basis, between whom'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure_without_consultation/2, gloss('information that cannot be disclosed, without consulting whom'), source('celex:32024R1689/oj#art_78').
:- pred technical_documentation_remains_on_premises/1, gloss('authority whose technical documentation must remain on its premises'), source('celex:32024R1689/oj#art_78').
:- pred must_ensure_immediate_access_to_documentation/2, gloss('authority that must ensure access, to what documentation'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_with_third_country/2, gloss('information that may be exchanged, with which regulatory authority'), source('celex:32024R1689/oj#art_78').

must_respect_confidentiality(commission, Info) :-
    protected_information(Info).

must_respect_confidentiality(A, Info) :-
    market_surveillance_authority(A),
    protected_information(Info).

must_respect_confidentiality(B, Info) :-
    notified_body(B),
    protected_information(Info).

must_respect_confidentiality(P, Info) :-
    natural_or_legal_person(P),
    involved_in_application_of_regulation(P),
    protected_information(Info).

protected_information(intellectual_property_rights(Person)) :-
    natural_or_legal_person(Person).

protected_information(confidential_business_information(Person)) :-
    natural_or_legal_person(Person).

protected_information(trade_secrets(Person)) :-
    natural_or_legal_person(Person).

protected_information(source_code(Person)) :-
    natural_or_legal_person(Person).

protected_information(effective_implementation(inspections)).

protected_information(effective_implementation(investigations)).

protected_information(effective_implementation(audits)).

protected_information(public_security_interests).

protected_information(national_security_interests).

protected_information(conduct_of_criminal_proceedings).

protected_information(conduct_of_administrative_proceedings).

protected_information(classified_information).

must_request_only_necessary_data(A) :-
    authority_involved_in_application(A),
    assessment_of_risk_posed_by_ai_systems(Purpose),
    exercise_of_powers(Purpose),
    data_requested(A, Data, Purpose),
    strictly_necessary(Data, Purpose).

must_implement_cybersecurity_measures(A) :-
    authority_involved_in_application(A),
    obtains_information_or_data(A, Info),
    adequate_and_effective_cybersecurity_measures(A, Info).

must_delete_data_when_no_longer_needed(A) :-
    authority_involved_in_application(A),
    collects_data(A, Data, Purpose),
    \+ still_needed(Data, Purpose),
    deletes_data(A, Data).

confidential_exchange(Info, between(national_competent_authority(A), national_competent_authority(B))) :-
    national_competent_authority(A),
    national_competent_authority(B),
    A \= B,
    exchanged_on_confidential_basis(Info).

confidential_exchange(Info, between(national_competent_authority(A), commission)) :-
    national_competent_authority(A),
    exchanged_on_confidential_basis(Info).

prohibited_disclosure_without_consultation(Info, originating_national_competent_authority) :-
    confidential_exchange(Info, _),
    high_risk_ai_system_used_by_law_enforcement(S),
    disclosure_would_jeopardise_public_or_national_security(Info).

prohibited_disclosure_without_consultation(Info, deployer(D)) :-
    confidential_exchange(Info, _),
    high_risk_ai_system_used_by_law_enforcement(S),
    deployer(D),
    uses(D, S),
    disclosure_would_jeopardise_public_or_national_security(Info).

technical_documentation_remains_on_premises(A) :-
    law_enforcement_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    technical_documentation(S, Doc),
    remains_on_premises(Doc, A).

technical_documentation_remains_on_premises(A) :-
    immigration_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    technical_documentation(S, Doc),
    remains_on_premises(Doc, A).

technical_documentation_remains_on_premises(A) :-
    asylum_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    technical_documentation(S, Doc),
    remains_on_premises(Doc, A).

must_ensure_immediate_access_to_documentation(A, technical_documentation(S)) :-
    law_enforcement_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    market_surveillance_authority(M),
    referred_to_in_art_74_par_8_or_par_9(M).

must_ensure_immediate_access_to_documentation(A, technical_documentation(S)) :-
    immigration_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    market_surveillance_authority(M),
    referred_to_in_art_74_par_8_or_par_9(M).

must_ensure_immediate_access_to_documentation(A, technical_documentation(S)) :-
    asylum_authority(A),
    provider(A),
    high_risk_ai_system_referred_to_in_annex_3(S),
    provides(A, S),
    market_surveillance_authority(M),
    referred_to_in_art_74_par_8_or_par_9(M).

permitted_exchange_with_third_country(Info, regulatory_authority(ThirdCountry)) :-
    commission,
    member_state(MemberState),
    necessary_for_purpose(Info, Purpose),
    relevant_provisions_of_international_agreements(Purpose),
    relevant_provisions_of_trade_agreements(Purpose),
    bilateral_confidentiality_arrangement(ThirdCountry, Arrangement),
    multilateral_confidentiality_arrangement(ThirdCountry, Arrangement),
    adequate_level_of_confidentiality(Arrangement).

% Helper predicates (auxiliary, not part of the frozen signature)
:- pred natural_or_legal_person/1, gloss('natural or legal person'), source('celex:32024R1689/oj#art_78').
:- pred involved_in_application_of_regulation/1, gloss('person involved in application of the regulation'), source('celex:32024R1689/oj#art_78').
:- pred authority_involved_in_application/1, gloss('authority involved in application of the regulation'), source('celex:32024R1689/oj#art_78').
:- pred assessment_of_risk_posed_by_ai_systems/1, gloss('purpose of assessing risk posed by AI systems'), source('celex:32024R1689/oj#art_78').
:- pred exercise_of_powers/1, gloss('purpose of exercising powers'), source('celex:32024R1689/oj#art_78').
:- pred data_requested/3, gloss('authority requests data for a purpose'), source('celex:32024R1689/oj#art_78').
:- pred strictly_necessary/2, gloss('data is strictly necessary for a purpose'), source('celex:32024R1689/oj#art_78').
:- pred obtains_information_or_data/2, gloss('authority obtains information or data'), source('celex:32024R1689/oj#art_78').
:- pred adequate_and_effective_cybersecurity_measures/2, gloss('authority implements cybersecurity measures for data'), source('celex:32024R1689/oj#art_78').
:- pred collects_data/3, gloss('authority collects data for a purpose'), source('celex:32024R1689/oj#art_78').
:- pred still_needed/2, gloss('data is still needed for a purpose'), source('celex:32024R1689/oj#art_78').
:- pred deletes_data/2, gloss('authority deletes data'), source('celex:32024R1689/oj#art_78').
:- pred exchanged_on_confidential_basis/1, gloss('information exchanged on confidential basis'), source('celex:32024R1689/oj#art_78').
:- pred high_risk_ai_system_used_by_law_enforcement/1, gloss('high-risk AI system used by law enforcement'), source('celex:32024R1689/oj#art_78').
:- pred disclosure_would_jeopardise_public_or_national_security/1, gloss('disclosure would jeopardise public or national security'), source('celex:32024R1689/oj#art_78').
:- pred uses/2, gloss('deployer uses an AI system'), source('celex:32024R1689/oj#art_78').
:- pred high_risk_ai_system_referred_to_in_annex_3/1, gloss('high-risk AI system referred to in Annex III'), source('celex:32024R1689/oj#art_78').
:- pred provides/2, gloss('provider provides an AI system'), source('celex:32024R1689/oj#art_78').
:- pred technical_documentation/2, gloss('technical documentation of an AI system'), source('celex:32024R1689/oj#art_78').
:- pred remains_on_premises/2, gloss('documentation remains on premises of an authority'), source('celex:32024R1689/oj#art_78').
:- pred immigration_authority/1, gloss('immigration authority'), source('celex:32024R1689/oj#art_78').
:- pred asylum_authority/1, gloss('asylum authority'), source('celex:32024R1689/oj#art_78').
:- pred referred_to_in_art_74_par_8_or_par_9/1, gloss('market surveillance authority referred to in Article 74(8) or (9)'), source('celex:32024R1689/oj#art_78').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_78').
:- pred necessary_for_purpose/2, gloss('exchange is necessary for a purpose'), source('celex:32024R1689/oj#art_78').
:- pred relevant_provisions_of_international_agreements/1, gloss('relevant provisions of international agreements'), source('celex:32024R1689/oj#art_78').
:- pred relevant_provisions_of_trade_agreements/1, gloss('relevant provisions of trade agreements'), source('celex:32024R1689/oj#art_78').
:- pred bilateral_confidentiality_arrangement/2, gloss('bilateral confidentiality arrangement with a third country'), source('celex:32024R1689/oj#art_78').
:- pred multilateral_confidentiality_arrangement/2, gloss('multilateral confidentiality arrangement with a third country'), source('celex:32024R1689/oj#art_78').
:- pred adequate_level_of_confidentiality/1, gloss('arrangement guarantees adequate level of confidentiality'), source('celex:32024R1689/oj#art_78').

authority_involved_in_application(commission).
authority_involved_in_application(A) :- market_surveillance_authority(A).
authority_involved_in_application(A) :- notified_body(A).
authority_involved_in_application(A) :- national_competent_authority(A).

% Provenance
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(protected_information/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/1, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_exchange/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/2, 'celex:32024R1689/oj#art_78').
provenance(technical_documentation_remains_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country/2, 'celex:32024R1689/oj#art_78').

% References
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
