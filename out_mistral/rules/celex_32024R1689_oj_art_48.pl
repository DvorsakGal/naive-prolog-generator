% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2fdb273f3ba7d0c02c76e2ecfca0770868e551d54d2af2a4189ca309e969b1f6
% cached     : False
% title      : CE marking
:- pred ce_marking_affixed/1, gloss('CE marking affixed to a high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking/1, gloss('digital CE marking used for a digitally provided high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_visible_legible_indelible/1, gloss('CE marking affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_on_packaging_or_documentation/1, gloss('CE marking affixed to packaging or accompanying documentation when not possible on the system'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_followed_by_notified_body_id/1, gloss('CE marking followed by identification number of notified body'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_id_affixed_by_notified_body/1, gloss('identification number affixed by the notified body itself'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_id_affixed_under_instructions/1, gloss('identification number affixed under notified body instructions by provider or authorised representative'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_id_in_promotional_material/1, gloss('identification number indicated in promotional material mentioning CE marking requirements'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_indicates_other_union_law_compliance/1, gloss('CE marking indicates compliance with other Union law also requiring CE marking'), source('celex:32024R1689/oj#art_48').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('high-risk AI system provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_union_law_ce_marking/1, gloss('high-risk AI system subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

must_affix_ce_marking(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S).

ce_marking_affixed(S) :-
    high_risk_ai_system(S),
    ce_marking_visible_legible_indelible(S).

ce_marking_affixed(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_visible_legible_indelible(S),
    ce_marking_on_packaging_or_documentation(S).

digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    ce_marking(S),
    easily_accessible_via_interface(S).

easily_accessible_via_interface(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    accessible_via_interface(S).

easily_accessible_via_interface(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    accessible_via_machine_readable_code(S).

easily_accessible_via_interface(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    accessible_via_other_electronic_means(S).

ce_marking_visible_legible_indelible(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    affixed_visibly(S),
    affixed_legibly(S),
    affixed_indelibly(S).

ce_marking_on_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    affixed_to_packaging(S).

ce_marking_on_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    affixed_to_accompanying_documentation(S).

ce_marking_followed_by_notified_body_id(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    applicable_notified_body_identification(S).

applicable_notified_body_identification(S) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure_applies(S).

notified_body_id_affixed_by_notified_body(S) :-
    high_risk_ai_system(S),
    ce_marking_followed_by_notified_body_id(S),
    notified_body(B),
    affixes_identification_number(B, S).

notified_body_id_affixed_under_instructions(S) :-
    high_risk_ai_system(S),
    ce_marking_followed_by_notified_body_id(S),
    notified_body(B),
    under_instructions_of(B, A),
    affixes_identification_number(A, S),
    responsible_party(A).

responsible_party(A) :-
    provider(A).

responsible_party(A) :-
    authorised_representative(A),
    mandated_by_provider(A).

notified_body_id_in_promotional_material(S) :-
    high_risk_ai_system(S),
    ce_marking_followed_by_notified_body_id(S),
    promotional_material_mentions_ce_requirements(S),
    identification_number_indicated_in_material(S).

ce_marking_indicates_other_union_law_compliance(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_ce_marking(S),
    ce_marking(S),
    indicates_compliance_with_other_law(S).

provenance(ce_marking_affixed/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_visible_legible_indelible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_on_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_followed_by_notified_body_id/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_id_affixed_by_notified_body/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_id_affixed_under_instructions/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_id_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_union_law_compliance/1, 'celex:32024R1689/oj#art_48').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_48').
provenance(provided_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(subject_to_other_union_law_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
