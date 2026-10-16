% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 281f47ae4a60273c4049b2d4345758f61ae1cece86892ae0f440160b8e7609b1
% cached     : False
% title      : CE marking
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking/1, gloss('CE marking in digital form'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('AI system supplied in digital form'), source('celex:32024R1689/oj#art_48').
:- pred easily_accessible_digital_marking/1, gloss('digital CE marking accessible via interface or machine-readable code'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_visibly_legibly_indelibly/1, gloss('CE marking affixed in visible, legible and indelible manner'), source('celex:32024R1689/oj#art_48').
:- pred nature_precludes_direct_affixing/1, gloss('nature of system makes direct affixing impossible or unwarranted'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_on_packaging_or_documentation/1, gloss('CE marking affixed to packaging or accompanying documentation'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_identification_number_required/1, gloss('CE marking must be followed by notified body identification number'), source('celex:32024R1689/oj#art_48').
:- pred identification_number_affixed_by_notified_body/2, gloss('notified body affixes its own identification number'), source('celex:32024R1689/oj#art_48').
:- pred identification_number_affixed_under_instructions/3, gloss('provider or representative affixes number under notified body instructions'), source('celex:32024R1689/oj#art_48').
:- pred identification_number_in_promotional_material/1, gloss('notified body number indicated in promotional material mentioning CE compliance'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_union_law_with_ce_marking/1, gloss('high-risk AI system also subject to other Union law requiring CE marking'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_indicates_compliance_with_other_law/1, gloss('CE marking indicates fulfilment of other Union law requirements'), source('celex:32024R1689/oj#art_48').

must_use_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_digital_marking(S).

must_affix_ce_marking_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ nature_precludes_direct_affixing(S).

must_affix_ce_marking_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    nature_precludes_direct_affixing(S).

must_follow_ce_marking_with_notified_body_number(S) :-
    high_risk_ai_system(S),
    notified_body_identification_number_required(S).

must_affix_identification_number(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    notified_body_identification_number_required(S),
    identification_number_affixed_by_notified_body(B, S).

must_affix_identification_number_under_instructions(A, B, S) :-
    high_risk_ai_system(S),
    notified_body(B),
    notified_body_identification_number_required(S),
    (provider(A) ; authorised_representative(A)),
    identification_number_affixed_under_instructions(A, B, S).

must_indicate_identification_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    notified_body_identification_number_required(S),
    identification_number_in_promotional_material(S).

must_indicate_other_law_compliance_in_ce_marking(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_with_ce_marking(S),
    ce_marking_indicates_compliance_with_other_law(S).

provenance(must_use_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(must_follow_ce_marking_with_notified_body_number/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(must_affix_identification_number_under_instructions/3, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_other_law_compliance_in_ce_marking/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
