% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1d95e0b4862bf68ec5ff8fd2178d4740c3ecc6b27d6deaf8846b48d97729569f
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred issued_by/2, gloss('certificate issued by notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_language/2, gloss('language of a certificate'), source('celex:32024R1689/oj#art_44').
:- pred language_understood_by_relevant_authorities/2, gloss('language understandable by relevant authorities in the member state of the notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity/2, gloss('validity period of a certificate'), source('celex:32024R1689/oj#art_44').
:- pred certificate_for_ai/2, gloss('certificate applies to AI system'), source('celex:32024R1689/oj#art_44').
:- pred annex1_covered/1, gloss('AI system covered by annex 1'), source('celex:32024R1689/oj#art_44').
:- pred annex3_covered/1, gloss('AI system covered by annex 3'), source('celex:32024R1689/oj#art_44').
:- pred request_extension_by_provider/2, gloss('provider requests extension of certificate validity'), source('celex:32024R1689/oj#art_44').
:- pred extension_period/2, gloss('extension period requested'), source('celex:32024R1689/oj#art_44').
:- pred re_assessment_based_on_conformity_assessment_procedures/1, gloss('re‑assessment according to conformity assessment procedures'), source('celex:32024R1689/oj#art_44').
:- pred supplement_of/2, gloss('supplement certificate and base certificate'), source('celex:32024R1689/oj#art_44').
:- pred non_compliant_certificate/1, gloss('certificate for AI system no longer meets requirements'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_taken/2, gloss('provider takes corrective action for certificate'), source('celex:32024R1689/oj#art_44').
:- pred deadline_set_by_notified_body/2, gloss('deadline set by notified body for corrective action'), source('celex:32024R1689/oj#art_44').
:- pred decision/1, gloss('decision of notified body'), source('celex:32024R1689/oj#art_44').
:- pred related_certificate/2, gloss('certificate related to a decision'), source('celex:32024R1689/oj#art_44').
:- pred must_draw_up/2, gloss('obligation for notified body to draw up certificate in an understandable language'), source('celex:32024R1689/oj#art_44').
:- pred max_validity_years/2, gloss('maximum allowed validity period for a certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_have_validity_within_limit/1, gloss('certificate validity must not exceed the maximum period'), source('celex:32024R1689/oj#art_44').
:- pred permitted_extend_certificate_validity/1, gloss('permission to extend certificate validity upon provider request'), source('celex:32024R1689/oj#art_44').
:- pred valid_certificate/1, gloss('certificate is valid'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_or_impose_restrictions/2, gloss('obligation for notified body to suspend, withdraw or restrict a certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('obligation for notified body to give reasons for its decision'), source('celex:32024R1689/oj#art_44').
:- pred required_appeal_procedure/1, gloss('availability of appeal procedure against notified body decisions'), source('celex:32024R1689/oj#art_44').

must_draw_up(notified_body(NB), certificate_in_language(Cert, Lang)) :-
    issued_by(Cert, NB),
    certificate(Cert),
    language_understood_by_relevant_authorities(NB, Lang).
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_44').

max_validity_years(Cert, years(5)) :-
    certificate(Cert),
    certificate_for_ai(Cert, AI),
    annex1_covered(AI).
provenance(max_validity_years/2, 'celex:32024R1689/oj#art_44').

max_validity_years(Cert, years(4)) :-
    certificate(Cert),
    certificate_for_ai(Cert, AI),
    annex3_covered(AI).
provenance(max_validity_years/2, 'celex:32024R1689/oj#art_44').

must_have_validity_within_limit(Cert) :-
    certificate(Cert),
    certificate_validity(Cert, years(N)),
    max_validity_years(Cert, years(Max)),
    N =< Max.
provenance(must_have_validity_within_limit/1, 'celex:32024R1689/oj#art_44').

permitted_extend_certificate_validity(Cert) :-
    request_extension_by_provider(Prov, Cert),
    provider(Prov),
    certificate(Cert),
    certificate_for_ai(Cert, AI),
    ( annex1_covered(AI) -> Max = years(5) ; annex3_covered(AI) -> Max = years(4) ),
    extension_period(Cert, years(N)),
    N =< Max,
    re_assessment_based_on_conformity_assessment_procedures(Cert).
provenance(permitted_extend_certificate_validity/1, 'celex:32024R1689/oj#art_44').

valid_certificate(Cert) :-
    certificate(Cert),
    certificate_validity(Cert, _).
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').

valid_certificate(Supp) :-
    supplement_of(Supp, Base),
    valid_certificate(Base).
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_44').

must_suspend_or_withdraw_or_impose_restrictions(notified_body(NB), Cert) :-
    notified_body(NB),
    issued_by(Cert, NB),
    non_compliant_certificate(Cert),
    \+ corrective_action_taken(Prov, Cert).
provenance(must_suspend_or_withdraw_or_impose_restrictions/2, 'celex:32024R1689/oj#art_44').

must_give_reasons(notified_body(NB), Decision) :-
    notified_body(NB),
    decision(Decision),
    related_certificate(Decision, Cert),
    issued_by(Cert, NB).
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').

required_appeal_procedure(appeal_procedure).
provenance(required_appeal_procedure/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
