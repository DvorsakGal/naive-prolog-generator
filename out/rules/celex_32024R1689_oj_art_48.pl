% unit       : celex:32024R1689/oj#art_48
% title      : CE marking
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : gpt-oss:120b-cloud
% prompt sha : ceb7987b3693f49620ad27d7ed1ced4ae21a3689bbcbcfd8b92e8f6e849ee3b2
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_48').
:- pred provided_digitally/1, gloss('AI system provided digitally'), source('celex:32024R1689/oj#art_48').
:- pred digital_accessible/1, gloss('CE marking can be easily accessed via interface or machine‑readable code'), source('celex:32024R1689/oj#art_48').
:- pred affix_possible/1, gloss('CE marking can be affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred applicable/1, gloss('the provision on identification number applies'), source('celex:32024R1689/oj#art_48').
:- pred other_union_law_applies/1, gloss('high‑risk AI system is subject to another Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

% 1. CE marking shall be subject to the general principles set out in the referenced act.
required_general_principles_for_ce_marking(S) :-
    ce_marking(S),
    high_risk_ai_system(S).

provenance(required_general_principles_for_ce_marking/1, 'celex:32024R1689/oj#art_48').

% 2. For digitally provided high‑risk AI systems, a digital CE marking shall be used only if it is easily accessible.
required_digital_ce_marking(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_accessible(S).

provenance(required_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').

% 3. CE marking shall be affixed visibly, legibly and indelibly where possible.
required_affix_visibly_legibly_indelibly(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    affix_possible(S).

provenance(required_affix_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').

% 3. Where not possible, affixing to packaging or documentation is permitted.
permitted_affix_to_packaging_or_documentation(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    \+ affix_possible(S).

provenance(permitted_affix_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').

% 4. Identification number of the notified body shall be affixed by the body itself,
%    or under its instructions by the provider or the provider’s authorised representative.
must_affix_identification_number(NB, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S),
    notified_body(NB).

must_affix_identification_number(P, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S),
    provider(P).

must_affix_identification_number(AR, S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S),
    authorised_representative(AR).

provenance(must_affix_identification_number/2, 'celex:32024R1689/oj#art_48').

% 4. The identification number shall also be indicated in any promotional material.
required_indicate_identification_number_in_promotional_material(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    applicable(S).

provenance(required_indicate_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').

% 5. Where other Union law also requires CE marking, the CE marking shall indicate compliance with that law.
required_indicate_other_union_law(S) :-
    ce_marking(S),
    high_risk_ai_system(S),
    other_union_law_applies(S).

provenance(required_indicate_other_union_law/1, 'celex:32024R1689/oj#art_48').

% References
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').
