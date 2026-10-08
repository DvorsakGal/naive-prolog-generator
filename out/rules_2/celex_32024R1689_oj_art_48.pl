% unit       : celex:32024R1689/oj#art_48
% title      : CE marking
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : gpt-oss:120b-cloud
% prompt sha : 2e01dfea571d2b840db842d16a4cbf3cc50973260c3091d02cb6a24e19790521
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('AI system provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking/1, gloss('digital CE marking'), source('celex:32024R1689/oj#art_48').
:- pred easily_accessed_via_interface/1, gloss('CE marking can be easily accessed via the interface or machine‑readable code'), source('celex:32024R1689/oj#art_48').
:- pred affixing_not_possible/1, gloss('affixing CE marking not possible due to nature of the system'), source('celex:32024R1689/oj#art_48').
:- pred affixing_not_warranted/1, gloss('affixing CE marking not warranted due to nature of the system'), source('celex:32024R1689/oj#art_48').
:- pred identification_number_of_notified_body/1, gloss('identification number of the notified body'), source('celex:32024R1689/oj#art_48').
:- pred must_affix_identification_number/3, gloss('obligation to affix the identification number of the notified body'), source('celex:32024R1689/oj#art_48').
:- pred required_promotional_material_includes_identification_number/2, gloss('identification number must be indicated in promotional material'), source('celex:32024R1689/oj#art_48').
:- pred other_union_law_applies/1, gloss('high‑risk AI system is subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').
:- pred required_ce_marking_subject_to_general_principles/1, gloss('CE marking shall be subject to the general principles set out in the referenced provision'), source('celex:32024R1689/oj#art_48').
:- pred required_digital_ce_marking/1, gloss('digital CE marking shall be used for digitally provided high‑risk AI systems'), source('celex:32024R1689/oj#art_48').
:- pred required_affix_ce_marking_visibly_legibly_indelibly/1, gloss('CE marking shall be affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred required_ce_marking_indicates_other_union_law/1, gloss('CE marking shall indicate compliance with other applicable Union law'), source('celex:32024R1689/oj#art_48').

required_ce_marking_subject_to_general_principles(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    ce_marking(S).

required_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_ce_marking(S),
    easily_accessed_via_interface(S),
    ce_marking(S).

required_affix_ce_marking_visibly_legibly_indelibly(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    high_risk_ai_system(S),
    \+ affixing_not_possible(S),
    \+ affixing_not_warranted(S).

must_affix_identification_number(Actor, NB, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    identification_number_of_notified_body(NB),
    identification_number_of_notified_body(NB),
    (Actor = body ; Actor = provider ; Actor = authorised_representative).

required_promotional_material_includes_identification_number(NB, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    identification_number_of_notified_body(NB),
    identification_number_of_notified_body(NB).

required_ce_marking_indicates_other_union_law(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    other_union_law_applies(S),
    other_union_law_applies(S).

provenance(required_ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(required_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_identification_number/3, 'celex:32024R1689/oj#art_48').
provenance(required_promotional_material_includes_identification_number/2, 'celex:32024R1689/oj#art_48').
provenance(required_ce_marking_indicates_other_union_law/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
