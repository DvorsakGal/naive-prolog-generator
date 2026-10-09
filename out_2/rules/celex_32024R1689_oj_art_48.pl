% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 92cf474d463bccd44453d840b2a6ed9e2b1ce560efbcb4de6b6b9f6b63266b98
% cached     : False
% title      : CE marking
:- pred high_risk_ai_system_applies/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('AI system provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred accessible_via_interface/1, gloss('digital CE marking can be easily accessed via the interface or machine‑readable code'), source('celex:32024R1689/oj#art_48').
:- pred not_possible_or_not_warranted/1, gloss('affixing CE marking visibly, legibly and indelibly is not possible or not warranted'), source('celex:32024R1689/oj#art_48').
:- pred applicable/1, gloss('the situation where the identification number of the notified body must be affixed'), source('celex:32024R1689/oj#art_48').
:- pred provider_under_instructions_of_notified_body/1, gloss('provider acts under the instructions of the notified body'), source('celex:32024R1689/oj#art_48').
:- pred authorised_representative_under_instructions_of_notified_body/1, gloss('authorised representative acts under the instructions of the notified body'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_union_law/1, gloss('high‑risk AI system is subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

required_ce_marking(S) :-
    high_risk_ai_system_applies(S).

provenance(required_ce_marking/1, 'celex:32024R1689/oj#art_48').

required_digital_ce_marking(S) :-
    high_risk_ai_system_applies(S),
    provided_digitally(S),
    accessible_via_interface(S).

provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').

required_affixed_visibly_legibly_indelibly(S) :-
    high_risk_ai_system_applies(S),
    \+ not_possible_or_not_warranted(S).

provenance(required_affixed_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').

required_affixed_to_packaging_or_documentation(S) :-
    high_risk_ai_system_applies(S),
    not_possible_or_not_warranted(S).

provenance(required_affixed_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').

must_affix_identification_number(notified_body, S) :-
    high_risk_ai_system_applies(S),
    applicable(S).

provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').

must_affix_identification_number(provider, S) :-
    high_risk_ai_system_applies(S),
    applicable(S),
    provider_under_instructions_of_notified_body(S).

provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').

must_affix_identification_number(authorised_representative, S) :-
    high_risk_ai_system_applies(S),
    applicable(S),
    authorised_representative_under_instructions_of_notified_body(S).

provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').

required_identification_number_in_promotional_material(S) :-
    high_risk_ai_system_applies(S),
    applicable(S).

provenance(required_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').

required_ce_marking_indicates_other_law(S) :-
    high_risk_ai_system_applies(S),
    subject_to_other_union_law(S).

provenance(required_ce_marking_indicates_other_law/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
