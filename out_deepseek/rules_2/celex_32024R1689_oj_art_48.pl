% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : a462812dc81b30c52d8ac96137987219a5fed65c4bd3c844e0f3256f1e68891a
% cached     : False
% title      : CE marking
:- pred ce_marking_subject_to_general_principles/1, gloss('CE marking subject to general principles of Regulation 765/2008'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking_accessible/1, gloss('digital CE marking easily accessible via interface or machine-readable code'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_visibly_legibly_indelibly/1, gloss('CE marking affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_to_packaging_or_documentation/1, gloss('CE marking affixed to packaging or accompanying documentation'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_followed_by_notified_body_number/1, gloss('CE marking followed by identification number of notified body'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_number_affixed_by_body_or_under_instructions/1, gloss('notified body number affixed by body itself or under its instructions'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_number_in_promotional_material/1, gloss('notified body number indicated in promotional material mentioning CE marking'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_indicates_compliance_with_other_union_law/1, gloss('CE marking indicates compliance with other Union law also requiring CE marking'), source('celex:32024R1689/oj#art_48').

ce_marking_subject_to_general_principles(M) :-
    ce_marking(M).

digital_ce_marking_accessible(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    (   accessible_via_interface(S)
    ;   accessible_via_machine_readable_code(S)
    ;   accessible_via_electronic_means(S)
    ).

ce_marking_affixed_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    ce_marking(M),
    affixed_visibly_legibly_indelibly(M, S).

ce_marking_affixed_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(M),
    \+ ce_marking_affixed_visibly_legibly_indelibly(S),
    (   affixed_to_packaging(M, S)
    ;   affixed_to_accompanying_documentation(M, S)
    ).

ce_marking_followed_by_notified_body_number(S) :-
    high_risk_ai_system(S),
    ce_marking(M),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    followed_by(M, identification_number(B)).

notified_body_number_affixed_by_body_or_under_instructions(S) :-
    high_risk_ai_system(S),
    notified_body(B),
    identification_number(N, B),
    (   affixed_by(N, B, S)
    ;   affixed_under_instructions(N, B, S, provider)
    ;   affixed_under_instructions(N, B, S, authorised_representative)
    ).

notified_body_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    notified_body(B),
    identification_number(N, B),
    promotional_material(P, S),
    mentions_ce_marking_fulfilment(P),
    indicated_in(N, P).

ce_marking_indicates_compliance_with_other_union_law(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_requiring_ce_marking(S, Law),
    ce_marking(M),
    indicates_fulfilment(M, S, Law).

provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking_accessible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_followed_by_notified_body_number/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_affixed_by_body_or_under_instructions/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_compliance_with_other_union_law/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
