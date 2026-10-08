% unit       : celex:32024R1689/oj#art_44
% title      : Certificates
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : gpt-oss:120b-cloud
% prompt sha : 221fbf077923694a69757654b3db692b8ad08bc5beebc69ef1d5639479d530c3
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_certificate_language/2, gloss('language in which a certificate must be drawn up'), source('celex:32024R1689/oj#art_44').
:- pred certificate_language/2, gloss('language used in a certificate'), source('celex:32024R1689/oj#art_44').
:- pred language_understood_by_authorities/2, gloss('language that can be easily understood by the relevant authorities in the Member State where the notified body is established'), source('celex:32024R1689/oj#art_44').
:- pred certificate_issued_by/2, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_for_system/2, gloss('certificate that applies to an AI system'), source('celex:32024R1689/oj#art_44').
:- pred covered_by_annex_1/1, gloss('AI system covered by annex 1'), source('celex:32024R1689/oj#art_44').
:- pred covered_by_annex_3/1, gloss('AI system covered by annex 3'), source('celex:32024R1689/oj#art_44').
:- pred required_certificate_validity_limit/2, gloss('maximum validity period (in years) for a certificate'), source('celex:32024R1689/oj#art_44').
:- pred permitted_certificate_extension/3, gloss('extension of a certificate validity period requested by the provider'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_taken/2, gloss('corrective action taken by the provider for an AI system'), source('celex:32024R1689/oj#art_44').
:- pred deadline_set_by/3, gloss('deadline set by a notified body for corrective action'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_or_withdraw_certificate/2, gloss('suspend or withdraw a certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('give reasons for a decision concerning a certificate'), source('celex:32024R1689/oj#art_44').
:- pred required_appeal_procedure_available/1, gloss('make an appeal procedure available'), source('celex:32024R1689/oj#art_44').

required_certificate_language(Body, Language) :-
    notified_body(Body),
    certificate_language(_C, Language),
    language_understood_by_authorities(Language, Body).

required_certificate_validity_limit(Cert, 5) :-
    certificate_for_system(Cert, S),
    covered_by_annex_1(S).

required_certificate_validity_limit(Cert, 4) :-
    certificate_for_system(Cert, S),
    covered_by_annex_3(S).

permitted_certificate_extension(Provider, Cert, Years) :-
    provider(Provider),
    certificate_for_system(Cert, S),
    covered_by_annex_1(S),
    Years =< 5.

permitted_certificate_extension(Provider, Cert, Years) :-
    provider(Provider),
    certificate_for_system(Cert, S),
    covered_by_annex_3(S),
    Years =< 4.

must_suspend_or_withdraw_certificate(Body, Cert) :-
    notified_body(Body),
    certificate_issued_by(Cert, Body),
    \+ corrective_action_taken(_P, _S),
    deadline_set_by(Body, Cert, _D).

must_give_reasons(Body, Cert) :-
    notified_body(Body),
    certificate_issued_by(Cert, Body).

required_appeal_procedure_available(Body) :-
    notified_body(Body).

provenance(required_certificate_language/2, 'celex:32024R1689/oj#art_44').
provenance(required_certificate_validity_limit/2, 'celex:32024R1689/oj#art_44').
provenance(permitted_certificate_extension/3, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(required_appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').

references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
