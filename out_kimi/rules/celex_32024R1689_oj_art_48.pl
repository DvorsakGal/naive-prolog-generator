% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cb2ac1377f924bc3790c6ceebaf6923f483b87f48b6eede50bf13ba92c1743fa
% cached     : False
% title      : CE marking
:- pred must_affix_ce_marking/2, gloss('actor must affix CE marking to high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred must_use_digital_ce_marking/1, gloss('high-risk AI system must use digital CE marking'), source('celex:32024R1689/oj#art_48').
:- pred must_affix_ce_marking_visibly_legibly_indelibly/1, gloss('CE marking must be affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred may_affix_ce_marking_to_packaging_or_documentation/1, gloss('CE marking may be affixed to packaging or documentation instead'), source('celex:32024R1689/oj#art_48').
:- pred must_follow_with_notified_body_number/1, gloss('CE marking must be followed by notified body identification number'), source('celex:32024R1689/oj#art_48').
:- pred must_affix_notified_body_number/2, gloss('actor must affix notified body identification number'), source('celex:32024R1689/oj#art_48').
:- pred must_indicate_notified_body_number_in_promotional_material/1, gloss('notified body number must be indicated in promotional material'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_indicates_other_union_law_compliance/1, gloss('CE marking indicates compliance with other Union law'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('AI system is provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred easily_accessible_via_interface/1, gloss('digital marking can be accessed via system interface'), source('celex:32024R1689/oj#art_48').
:- pred easily_accessible_machine_readable_code/1, gloss('digital marking accessible via machine-readable code or electronic means'), source('celex:32024R1689/oj#art_48').
:- pred affixing_to_system_not_possible_or_not_warranted/1, gloss('affixing CE marking to system itself is not possible or not warranted'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_responsible_for_conformity_assessment/2, gloss('notified body is responsible for conformity assessment procedures'), source('celex:32024R1689/oj#art_48').
:- pred promotional_material_mentions_ce_marking/1, gloss('promotional material mentions CE marking compliance'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_union_law_with_ce_marking/1, gloss('high-risk AI system subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

% Article 48(1): CE marking subject to general principles of Regulation (EC) No 765/2008
ce_marking_subject_to_general_principles(S) :-
    high_risk_ai_system(S).

% Article 48(2): Digital CE marking for digitally provided systems
must_use_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    (easily_accessible_via_interface(S); easily_accessible_machine_readable_code(S)).

% Article 48(3): Affixing CE marking visibly, legibly, indelibly
must_affix_ce_marking_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ affixing_to_system_not_possible_or_not_warranted(S).

may_affix_ce_marking_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    affixing_to_system_not_possible_or_not_warranted(S).

% Article 48(4): Notified body identification number
must_follow_with_notified_body_number(S) :-
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B).

must_affix_notified_body_number(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S).

must_affix_notified_body_number(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B),
    under_instructions(B, P).

must_affix_notified_body_number(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B),
    under_instructions(B, R).

must_indicate_notified_body_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    promotional_material_mentions_ce_marking(S),
    notified_body_responsible_for_conformity_assessment(B, S),
    notified_body(B).

% Article 48(5): CE marking indicates other Union law compliance
ce_marking_indicates_other_union_law_compliance(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_with_ce_marking(S).

% Provenance
provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(must_use_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(may_affix_ce_marking_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(must_follow_with_notified_body_number/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_notified_body_number/2, 'celex:32024R1689/oj#art_48').
provenance(must_indicate_notified_body_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_union_law_compliance/1, 'celex:32024R1689/oj#art_48').

% References
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
