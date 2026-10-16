% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4e0b81348daad5b5d0ea38e6efe1757b721140bf728aafea7c2461a5af30bce9
% cached     : False
% title      : CE marking
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('system provided via digital means'), source('celex:32024R1689/oj#art_48').
:- pred easily_accessible_electronically/1, gloss('digital access via interface, code, or other electronic means'), source('celex:32024R1689/oj#art_48').
:- pred permitted_digital_ce_marking/1, gloss('digital CE marking permitted for high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred physical_affixing_possible_and_warranted/1, gloss('visible, legible, and indelible affixing on the system is possible and warranted'), source('celex:32024R1689/oj#art_48').
:- pred required_ce_marking/2, gloss('affixing of CE marking required on specified medium'), source('celex:32024R1689/oj#art_48').
:- pred involves_notified_body/2, gloss('notified body involved in conformity assessment of high-risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred instructed_by_notified_body/2, gloss('actor instructed by notified body to affix identification number'), source('celex:32024R1689/oj#art_48').
:- pred permitted_affix_identification_number/2, gloss('actor permitted to affix notified body identification number to system'), source('celex:32024R1689/oj#art_48').
:- pred promotional_material_mentions_ce_marking/2, gloss('promotional material mentions system fulfils requirements for CE marking'), source('celex:32024R1689/oj#art_48').
:- pred required_indication/2, gloss('required indication in promotional material or marking'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_ce_marking_union_law/1, gloss('high-risk AI system is subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

% Paragraph 2: digital CE marking condition
permitted_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_electronically(S).

% Paragraph 3: physical affixing on system vs packaging/documentation
required_ce_marking(S, direct_affixing) :-
    high_risk_ai_system(S),
    physical_affixing_possible_and_warranted(S).

required_ce_marking(S, packaging_or_documentation) :-
    high_risk_ai_system(S),
    \+ physical_affixing_possible_and_warranted(S).

% Paragraph 4: affixing identification number of notified body
permitted_affix_identification_number(B, S) :-
    high_risk_ai_system(S),
    notified_body(B),
    involves_notified_body(S, B).

permitted_affix_identification_number(P, S) :-
    high_risk_ai_system(S),
    provider(P),
    notified_body(B),
    involves_notified_body(S, B),
    instructed_by_notified_body(P, B).

permitted_affix_identification_number(AR, S) :-
    high_risk_ai_system(S),
    authorised_representative(AR),
    notified_body(B),
    involves_notified_body(S, B),
    instructed_by_notified_body(AR, B).

% Paragraph 4: indication in promotional material
required_indication(Material, identification_number(B)) :-
    promotional_material_mentions_ce_marking(Material, S),
    high_risk_ai_system(S),
    notified_body(B),
    involves_notified_body(S, B).

% Paragraph 5: indication of conformity with other Union law
required_indication(ce_marking(S), fulfils_other_union_law) :-
    high_risk_ai_system(S),
    subject_to_other_ce_marking_union_law(S).

% Provenance
provenance(permitted_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(permitted_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(required_indication/2, 'celex:32024R1689/oj#art_48').

% References
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
