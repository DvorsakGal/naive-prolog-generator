% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 7aaebb52465fe5aab1385874ded768beae116cb3c5384223b422817e04d09b6a
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_of/2, gloss('certificate relates to AI system'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity/2, gloss('validity period of a certificate expressed in years'), source('celex:32024R1689/oj#art_44').
:- pred annex_1_ai_system/1, gloss('AI system covered by annex 1'), source('celex:32024R1689/oj#art_44').
:- pred non_compliant/1, gloss('AI system no longer meets the requirements'), source('celex:32024R1689/oj#art_44').
:- pred compliance_restored_by_provider/2, gloss('provider has taken corrective action ensuring compliance by a deadline'), source('celex:32024R1689/oj#art_44').
:- pred decision/1, gloss('decision taken by a notified body'), source('celex:32024R1689/oj#art_44').

must_draw_up(NotifiedBody, certificate_language(Authority)) :-
    notified_body(NotifiedBody),
    market_surveillance_authority(Authority).

prohibited_certificate(Cert) :-
    certificate(Cert),
    certificate_of(Cert, System),
    annex_1_ai_system(System),
    certificate_validity(Cert, years(Years)),
    Years > 5.

prohibited_certificate(Cert) :-
    certificate(Cert),
    certificate_of(Cert, System),
    annex_3_ai_system(System),
    certificate_validity(Cert, years(Years)),
    Years > 4.

must_suspend_or_withdraw_or_restrict(NotifiedBody, Cert) :-
    notified_body(NotifiedBody),
    certificate(Cert),
    certificate_of(Cert, System),
    non_compliant(System),
    \+ compliance_restored_by_provider(System, _Deadline).

must_give_reasons(NotifiedBody, Decision) :-
    notified_body(NotifiedBody),
    decision(Decision),
    decision_made_by(NotifiedBody, Decision).

required_appeal_procedure_available(appeal_procedure).

provenance(must_draw_up/2, 'celex:32024R1689/oj#art_44').
provenance(prohibited_certificate/1, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_or_restrict/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(required_appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
