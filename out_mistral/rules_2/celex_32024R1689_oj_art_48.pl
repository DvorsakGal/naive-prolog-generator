% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : b644743848bd5fdb1b53fd9b220770398100573dda14e396adc588fd0af3a692
% cached     : False
% title      : CE marking
:- pred ce_marking_affixed/1, gloss('CE marking affixed to high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_visible_legible_indelible/1, gloss('CE marking affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_on_packaging_or_documentation/1, gloss('CE marking affixed to packaging or accompanying documentation when not possible or warranted on the system itself'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking/1, gloss('digital CE marking used for high-risk AI system provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking_accessible/1, gloss('digital CE marking easily accessible via interface, machine-readable code or other electronic means'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_followed_by_notified_body_identification_number/1, gloss('CE marking followed by identification number of notified body responsible for conformity assessment'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_identification_number_affixed_by_notified_body/1, gloss('identification number of notified body affixed by the body itself'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_identification_number_affixed_under_instructions/2, gloss('identification number of notified body affixed under its instructions by provider or authorised representative'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_identification_number_in_promotional_material/1, gloss('identification number of notified body indicated in promotional material mentioning CE marking requirements fulfilled'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_indicates_compliance_with_other_union_law/1, gloss('CE marking indicates high-risk AI system also fulfils requirements of other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_subject_to_general_principles/1, gloss('CE marking subject to general principles set out in Regulation 765/2008 Article 30'), source('celex:32024R1689/oj#art_48').

ce_marking_subject_to_general_principles(S) :-
    high_risk_ai_system(S),
    ce_marking(S).

ce_marking_affixed(S) :-
    high_risk_ai_system(S),
    ce_marking(S).

ce_marking_visible_legible_indelible(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    ce_marking_visible_legible_indelible(S).

ce_marking_on_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    \+ ce_marking_visible_legible_indelible(S),
    ce_marking_on_packaging_or_documentation(S).

digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_ce_marking(S).

digital_ce_marking_accessible(S) :-
    digital_ce_marking(S),
    digital_ce_marking_accessible(S).

ce_marking_followed_by_notified_body_identification_number(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    conformity_assessment_procedure(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    ce_marking_followed_by_notified_body_identification_number(S).

notified_body_identification_number_affixed_by_notified_body(S) :-
    ce_marking_followed_by_notified_body_identification_number(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    affixed_by(B, identification_number(B), S).

notified_body_identification_number_affixed_under_instructions(S, P) :-
    ce_marking_followed_by_notified_body_identification_number(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    (provider(P) ; authorised_representative(P)),
    affixed_under_instructions(B, P, identification_number(B), S).

notified_body_identification_number_in_promotional_material(S) :-
    ce_marking_followed_by_notified_body_identification_number(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    promotional_material_mentions_ce_requirements(S),
    notified_body_identification_number_in_promotional_material(S).

ce_marking_indicates_compliance_with_other_union_law(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    subject_to_other_union_law_providing_ce_marking(S),
    ce_marking_indicates_compliance_with_other_union_law(S).

provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_visible_legible_indelible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_on_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking_accessible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_followed_by_notified_body_identification_number/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_identification_number_affixed_by_notified_body/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_identification_number_affixed_under_instructions/2, 'celex:32024R1689/oj#art_48').
provenance(notified_body_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_compliance_with_other_union_law/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
