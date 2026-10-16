% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d9e95e6e410b6691c1915648d878c01012589256341705a4af5728b6c490e054
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/1, gloss('duty to respect confidentiality of information and data obtained'), source('celex:32024R1689/oj#art_78/par_1').
:- pred must_request_only_necessary_data/1, gloss('duty to request only strictly necessary data'), source('celex:32024R1689/oj#art_78/par_2').
:- pred must_protect_confidentiality/1, gloss('duty to put in place cybersecurity measures and delete data when no longer needed'), source('celex:32024R1689/oj#art_78/par_2').
:- pred must_not_disclose_without_consultation/1, gloss('prohibition on disclosing confidential information without prior consultation'), source('celex:32024R1689/oj#art_78/par_3').
:- pred must_remain_on_premises/1, gloss('duty to keep technical documentation within premises'), source('celex:32024R1689/oj#art_78/par_3').
:- pred must_ensure_access/1, gloss('duty to ensure market surveillance authorities can access documentation'), source('celex:32024R1689/oj#art_78/par_3').
:- pred permitted_exchange_with_third_countries/1, gloss('permission to exchange confidential information with third country regulatory authorities'), source('celex:32024R1689/oj#art_78/par_5').

:- pred confidentiality_party/1, gloss('entity bound by confidentiality obligations under Article 78(1)'), source('celex:32024R1689/oj#art_78/par_1').
:- pred involved_in_application/1, gloss('involved in application of the AI Act'), source('celex:32024R1689/oj#art_78/par_1').
:- pred protected_interest/1, gloss('interest protected by confidentiality obligation'), source('celex:32024R1689/oj#art_78/par_1').
:- pred law_enforcement_border_immigration_asylum_authority/1, gloss('authority using high-risk AI systems in sensitive domains'), source('celex:32024R1689/oj#art_78/par_3').
:- pred high_risk_ai_system_annex_3_sensitive/1, gloss('high-risk AI system listed in Annex 3 points 1, 6, or 7'), source('celex:32024R1689/oj#art_78/par_3').
:- pred jeopardises_public_national_security/1, gloss('disclosure would jeopardise public and national security interests'), source('celex:32024R1689/oj#art_78/par_3').
:- pred appropriate_security_clearance/1, gloss('staff with appropriate level of security clearance'), source('celex:32024R1689/oj#art_78/par_3').
:- pred bilateral_multilateral_confidentiality_arrangement/1, gloss('arrangement guaranteeing adequate confidentiality with third country'), source('celex:32024R1689/oj#art_78/par_5').

confidentiality_party(P) :-
    (commission(P); market_surveillance_authority(P); notified_body(P); involved_in_application(P)).

protected_interest(intellectual_property_rights).
protected_interest(confidential_business_information).
protected_interest(trade_secrets).
protected_interest(effective_implementation).
protected_interest(public_and_national_security_interests).
protected_interest(conduct_of_criminal_or_administrative_proceedings).
protected_interest(classified_information).

must_respect_confidentiality(P) :-
    confidentiality_party(P),
    protected_interest(_I).

must_request_only_necessary_data(A) :-
    confidentiality_party(A).

must_protect_confidentiality(A) :-
    confidentiality_party(A).

must_not_disclose_without_consultation(Information) :-
    exchanged_confidentially_between_national_competent_authorities_or_commission(Information),
    high_risk_ai_system_annex_3_sensitive(_S),
    used_by_law_enforcement_border_immigration_asylum_authority(_S),
    jeopardises_public_national_security(Information),
    \+ sensitive_operational_data(Information).

must_remain_on_premises(Documentation) :-
    technical_documentation(Documentation),
    law_enforcement_immigration_asylum_authority(A),
    provider(A),
    high_risk_ai_system_annex_3_sensitive(S),
    technical_documentation_for(Documentation, S).

must_ensure_access(Authority) :-
    law_enforcement_immigration_asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system_annex_3_sensitive(_S),
    market_surveillance_authority(RequestingAuthority),
    (applicable_market_surveillance_authority_74_8(RequestingAuthority); applicable_market_surveillance_authority_74_9(RequestingAuthority)),
    appropriate_security_clearance(Staff),
    staff_of(Staff, RequestingAuthority).

permitted_exchange_with_third_countries(Information) :-
    confidential(Information),
    regulatory_authority_of_third_country(Recipient),
    bilateral_multilateral_confidentiality_arrangement(Arrangement),
    guarantees_adequate_confidentiality(Arrangement).

% Provenance
provenance(must_respect_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/1, 'celex:32024R1689/oj#art_78').
provenance(must_protect_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(must_not_disclose_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(must_remain_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_access/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_countries/1, 'celex:32024R1689/oj#art_78').
provenance(confidentiality_party/1, 'celex:32024R1689/oj#art_78').
provenance(protected_interest/1, 'celex:32024R1689/oj#art_78').

% References
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_4').
