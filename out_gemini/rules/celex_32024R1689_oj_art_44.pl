% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fdc55ff8c74b6dbd0c7948988b36406fffbeda9f04ea9a58d8a19117a29d581a
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('Conformity certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_supplement/2, gloss('Supplement to a certificate'), source('celex:32024R1689/oj#art_44').
:- pred system_covered_by_annex_1/1, gloss('AI system covered by Annex I'), source('celex:32024R1689/oj#art_44').
:- pred system_covered_by_annex_3/1, gloss('AI system covered by Annex III'), source('celex:32024R1689/oj#art_44').
:- pred certificate_for_system/2, gloss('Certificate corresponds to an AI system'), source('celex:32024R1689/oj#art_44').
:- pred issuing_body/2, gloss('Notified body that issued the certificate'), source('celex:32024R1689/oj#art_44').
:- pred established_in_member_state/2, gloss('Entity is established in a Member State'), source('celex:32024R1689/oj#art_44').
:- pred certificate_language/2, gloss('Language in which the certificate is drawn up'), source('celex:32024R1689/oj#art_44').
:- pred easily_understood_by_authorities/2, gloss('Language easily understood by authorities of a Member State'), source('celex:32024R1689/oj#art_44').
:- pred maximum_validity_period/2, gloss('Maximum allowed validity period for a certificate'), source('celex:32024R1689/oj#art_44').
:- pred maximum_extension_period/2, gloss('Maximum allowed validity extension period for a certificate'), source('celex:32024R1689/oj#art_44').
:- pred valid_certificate/1, gloss('Certificate is currently valid'), source('celex:32024R1689/oj#art_44').
:- pred permitted_extension/2, gloss('Permitted extension of certificate validity'), source('celex:32024R1689/oj#art_44').
:- pred requested_extension/2, gloss('Provider requested extension of certificate validity'), source('celex:32024R1689/oj#art_44').
:- pred reassessment_performed/1, gloss('Re-assessment performed in accordance with conformity assessment procedures'), source('celex:32024R1689/oj#art_44').
:- pred meets_chapter_3_section_2_requirements/1, gloss('AI system meets high-risk requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_ensured_within_deadline/2, gloss('Corrective action ensured compliance within deadline set by notified body'), source('celex:32024R1689/oj#art_44').
:- pred required_suspension_or_withdrawal_or_restriction/2, gloss('Notified body must suspend, withdraw, or restrict certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('Actor must give reasons for an action or decision'), source('celex:32024R1689/oj#art_44').
:- pred required_appeal_procedure/1, gloss('An appeal procedure must be available against notified body decisions'), source('celex:32024R1689/oj#art_44').

% Paragraph 1: Language requirement
required_language(Cert) :-
    certificate(Cert),
    issuing_body(Cert, Body),
    notified_body(Body),
    established_in_member_state(Body, MS),
    certificate_language(Cert, Lang),
    easily_understood_by_authorities(Lang, MS).

% Paragraph 2: Validity limits
maximum_validity_period(Cert, years(5)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System).

maximum_validity_period(Cert, years(4)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System).

maximum_extension_period(Cert, years(5)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_1(System).

maximum_extension_period(Cert, years(4)) :-
    certificate_for_system(Cert, System),
    system_covered_by_annex_3(System).

permitted_extension(Cert, Provider) :-
    certificate(Cert),
    provider(Provider),
    requested_extension(Cert, Provider),
    reassessment_performed(Cert).

valid_certificate(Supplement) :-
    certificate_supplement(Supplement, BaseCert),
    valid_certificate(BaseCert).

% Paragraph 3: Action when system no longer meets requirements
required_suspension_or_withdrawal_or_restriction(Body, Cert) :-
    notified_body(Body),
    issuing_body(Cert, Body),
    certificate_for_system(Cert, System),
    ai_system(System),
    \+ meets_chapter_3_section_2_requirements(System),
    \+ corrective_action_ensured_within_deadline(System, Body).

must_give_reasons(Body, decision(Cert)) :-
    notified_body(Body),
    issuing_body(Cert, Body),
    required_suspension_or_withdrawal_or_restriction(Body, Cert).

% Paragraph 3: Appeal procedure
required_appeal_procedure(Body) :-
    notified_body(Body).

% Provenance
provenance(required_language/1, 'celex:32024R1689/oj#art_44').
provenance(maximum_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(maximum_extension_period/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_44').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').
provenance(required_suspension_or_withdrawal_or_restriction/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(required_appeal_procedure/1, 'celex:32024R1689/oj#art_44').

% References
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
