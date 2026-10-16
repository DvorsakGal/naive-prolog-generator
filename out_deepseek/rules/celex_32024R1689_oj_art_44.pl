% unit       : celex:32024R1689/oj#art_44
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 46134af55384cab69d2f780c43c71a7f887fb49340a21c1cfa8f0e0737f6cb68
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 74b155c7db1a91774a807fb78bf2012a3112c97d0a08b1d37090d3e9821fc14a
% cached     : False
% title      : Certificates
:- pred certificate/1, gloss('certificate issued by a notified body'), source('celex:32024R1689/oj#art_44').
:- pred certificate_language/2, gloss('certificate drawn up in a language understandable by authorities'), source('celex:32024R1689/oj#art_44').
:- pred certificate_validity_period/2, gloss('certificate valid for a period'), source('celex:32024R1689/oj#art_44').
:- pred certificate_extension/2, gloss('certificate validity extended for a period'), source('celex:32024R1689/oj#art_44').
:- pred supplement_valid/1, gloss('supplement to a certificate remains valid'), source('celex:32024R1689/oj#art_44').
:- pred must_suspend_certificate/2, gloss('notified body must suspend certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_withdraw_certificate/2, gloss('notified body must withdraw certificate'), source('celex:32024R1689/oj#art_44').
:- pred must_impose_restrictions/2, gloss('notified body must impose restrictions on certificate'), source('celex:32024R1689/oj#art_44').
:- pred corrective_action_taken/2, gloss('provider takes corrective action within deadline'), source('celex:32024R1689/oj#art_44').
:- pred must_give_reasons/2, gloss('notified body must give reasons for decision'), source('celex:32024R1689/oj#art_44').
:- pred appeal_available/1, gloss('appeal procedure available against notified body decisions'), source('celex:32024R1689/oj#art_44').

% Paragraph 1
must_draw_up_certificate_in_language(Body, C) :-
    notified_body(Body),
    certificate(C),
    issued_in_accordance_with(C, 'celex:32024R1689/oj#anx_7'),
    certificate_language(C, Language),
    easily_understood_by_authorities(Language, Body).

% Paragraph 2 – initial validity
certificate_validity_period(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_1'),
    Max = 5.
certificate_validity_period(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_3'),
    Max = 4.

% Paragraph 2 – extension
certificate_extension(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_1'),
    Max = 5,
    requested_by_provider(C),
    reassessment_conducted(C).
certificate_extension(C, period(years(Max), for(System))) :-
    certificate(C),
    ai_system(System),
    covered_by(System, 'celex:32024R1689/oj#anx_3'),
    Max = 4,
    requested_by_provider(C),
    reassessment_conducted(C).

% Paragraph 2 – supplement validity
supplement_valid(Supplement) :-
    supplement(Supplement),
    supplements(Supplement, Certificate),
    certificate(Certificate),
    certificate_valid(Certificate).

% Paragraph 3 – suspension, withdrawal, restrictions
must_suspend_certificate(Body, C) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).

must_withdraw_certificate(Body, C) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).

must_impose_restrictions(Body, C) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).

must_give_reasons(Body, decision(suspend_or_withdraw_or_restrict(C))) :-
    notified_body(Body),
    certificate(C),
    ai_system(System),
    certificate_covers(C, System),
    \+ meets_requirements(System, 'celex:32024R1689/oj#chp_3/sec_2'),
    \+ corrective_action_taken(provider_of(System), within_deadline_set_by(Body)).

% Paragraph 3 – appeal
appeal_available(decision(notified_body(Body), _)) :-
    notified_body(Body).

% Provenance
provenance(certificate/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_language/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension/2, 'celex:32024R1689/oj#art_44').
provenance(supplement_valid/1, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_impose_restrictions/2, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_available/1, 'celex:32024R1689/oj#art_44').

% References
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').
