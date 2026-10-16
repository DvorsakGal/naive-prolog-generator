% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : cab58ef3db1ee6eebe9e7b883c16fb370fb3bf12eef1824644055ba137221c3c
% cached     : False
% title      : CE marking
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('System is provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred easily_accessible_digitally/1, gloss('CE marking is easily accessible via interface, machine-readable code, or other electronic means'), source('celex:32024R1689/oj#art_48').
:- pred permitted_ce_marking/2, gloss('Type of CE marking permitted for an AI system'), source('celex:32024R1689/oj#art_48').
:- pred required_ce_marking/2, gloss('Affixing location or manner required for the CE marking of an AI system'), source('celex:32024R1689/oj#art_48').
:- pred affixing_on_system_possible_and_warranted/1, gloss('Affixing visibly, legibly and indelibly directly on the system is possible and warranted'), source('celex:32024R1689/oj#art_48').
:- pred conformity_assessment_involves_notified_body/2, gloss('Conformity assessment under Article 43 involves the specified notified body'), source('celex:32024R1689/oj#art_48').
:- pred permitted_affix_identification_number/2, gloss('Actor permitted to affix the notified body identification number'), source('celex:32024R1689/oj#art_48').
:- pred required_in_promotional_material/2, gloss('Item required to be indicated in promotional material for an AI system'), source('celex:32024R1689/oj#art_48').
:- pred mentions_fulfils_ce_marking_requirements/1, gloss('Promotional material mentions that the system fulfils requirements for CE marking'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_union_law_providing_ce_marking/2, gloss('High-risk AI system is subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').
:- pred required_ce_marking_indication/2, gloss('Indication required to be made by the CE marking for a system'), source('celex:32024R1689/oj#art_48').

% Paragraph 1: General principles
required_ce_marking(S, general_principles_regulation_765_2008) :-
    high_risk_ai_system(S).

% Paragraph 2: Digital CE marking
permitted_ce_marking(S, digital) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_digitally(S).

% Paragraph 3: Affixing manner and location
required_ce_marking(S, direct_visible_legible_indelible) :-
    high_risk_ai_system(S),
    affixing_on_system_possible_and_warranted(S).

required_ce_marking(S, packaging_or_accompanying_documentation) :-
    high_risk_ai_system(S),
    \+ affixing_on_system_possible_and_warranted(S).

% Paragraph 4: Identification number of notified body
required_ce_marking(S, followed_by_notified_body_identification_number(B)) :-
    high_risk_ai_system(S),
    conformity_assessment_involves_notified_body(S, B),
    notified_body(B).

permitted_affix_identification_number(B, identification_number(B)) :-
    notified_body(B).

permitted_affix_identification_number(P, identification_number(B)) :-
    provider(P),
    notified_body(B).

permitted_affix_identification_number(AR, identification_number(B)) :-
    authorised_representative(AR),
    notified_body(B).

required_in_promotional_material(M, identification_number(B)) :-
    mentions_fulfils_ce_marking_requirements(M),
    conformity_assessment_involves_notified_body(S, B),
    high_risk_ai_system(S).

% Paragraph 5: Systems subject to other Union law providing for CE marking
required_ce_marking_indication(S, fulfills_requirements_of(Law)) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_providing_ce_marking(S, Law).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_48').
provenance(provided_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(easily_accessible_digitally/1, 'celex:32024R1689/oj#art_48').
provenance(permitted_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(affixing_on_system_possible_and_warranted/1, 'celex:32024R1689/oj#art_48').
provenance(conformity_assessment_involves_notified_body/2, 'celex:32024R1689/oj#art_48').
provenance(permitted_affix_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(required_in_promotional_material/2, 'celex:32024R1689/oj#art_48').
provenance(mentions_fulfils_ce_marking_requirements/1, 'celex:32024R1689/oj#art_48').
provenance(subject_to_other_union_law_providing_ce_marking/2, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking_indication/2, 'celex:32024R1689/oj#art_48').

% References
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
