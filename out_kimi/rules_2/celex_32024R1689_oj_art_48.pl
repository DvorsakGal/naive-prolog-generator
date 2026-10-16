% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 56a7c1870a895093826287f2085d2d9674c27bfa92216f2f8d2006621ecd5ea9
% cached     : False
% title      : CE marking
:- pred ce_marking_applies/1, gloss('CE marking applies to high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking/1, gloss('digital CE marking for digitally provided high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_visibly_legibly_indelibly/1, gloss('CE marking affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_to_packaging_or_documentation/1, gloss('CE marking affixed to packaging or accompanying documentation'), source('celex:32024R1689/oj#art_48').
:- pred identification_number_of_notified_body/2, gloss('identification number of notified body responsible for conformity assessment'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_with_identification_number/2, gloss('CE marking followed by identification number of notified body'), source('celex:32024R1689/oj#art_48').
:- pred affixed_by_or_under_instructions/3, gloss('identification number affixed by body itself or under its instructions by provider or authorised representative'), source('celex:32024R1689/oj#art_48').
:- pred identification_number_in_promotional_material/2, gloss('identification number indicated in promotional material mentioning CE marking requirements fulfilled'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_indicates_other_union_law_requirements/2, gloss('CE marking indicates high-risk AI system fulfils requirements of other Union law'), source('celex:32024R1689/oj#art_48').

ce_marking_applies(S) :-
    high_risk_ai_system(S).

digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_interface(S).

easily_accessible_via_interface(S) :-
    digital_ce_marking(S).

easily_accessible_via_interface(S) :-
    machine_readable_code_accessible(S).

easily_accessible_via_interface(S) :-
    other_electronic_means_accessible(S).

ce_marking_affixed_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixed_to_packaging_or_documentation(S).

ce_marking_affixed_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    not_possible_or_not_warranted(S).

not_possible_or_not_warranted(S) :-
    nature_of_system_precludes_ce_marking(S).

ce_marking_with_identification_number(S, B) :-
    high_risk_ai_system(S),
    notified_body_for_assessment(B, S),
    identification_number_of_notified_body(B, S).

affixed_by_or_under_instructions(B, S, B) :-
    ce_marking_with_identification_number(S, B),
    notified_body(B).

affixed_by_or_under_instructions(B, S, P) :-
    ce_marking_with_identification_number(S, B),
    provider(P),
    under_instructions(B, P).

affixed_by_or_under_instructions(B, S, R) :-
    ce_marking_with_identification_number(S, B),
    authorised_representative(R),
    under_instructions(B, R).

identification_number_in_promotional_material(B, S) :-
    ce_marking_with_identification_number(S, B),
    promotional_material_mentions_ce_marking_fulfilled(S).

promotional_material_mentions_ce_marking_fulfilled(S) :-
    high_risk_ai_system(S).

ce_marking_indicates_other_union_law_requirements(S, L) :-
    high_risk_ai_system(S),
    subject_to_other_union_law(S, L),
    other_union_law_provides_ce_marking(L).

provenance(ce_marking_applies/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_with_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(affixed_by_or_under_instructions/3, 'celex:32024R1689/oj#art_48').
provenance(identification_number_in_promotional_material/2, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_union_law_requirements/2, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
