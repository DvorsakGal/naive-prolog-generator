% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 036633e5caa530bd46b21ba627e7ed0dbd626ed12cd190b4f72a17cff18d36bc
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting acts concerning AI systems that are safety components, the requirements of Chapter 3 Section 2 shall be taken into account'), source('celex:32024R1689/oj#art_108').
:- pred adopting_implementing_act/2, gloss('adopting implementing act pursuant to a specific legal basis concerning a subject matter'), source('celex:32024R1689/oj#art_108').
:- pred adopting_delegated_act/2, gloss('adopting delegated act pursuant to a specific legal basis concerning a subject matter'), source('celex:32024R1689/oj#art_108').
:- pred concerning_ai_safety_components/1, gloss('act concerns Artificial Intelligence systems which are safety components within the meaning of the AI Act'), source('celex:32024R1689/oj#art_108').

must_take_into_account_requirements(Act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(Act, LegalBasis),
    concerning_ai_safety_components(Act),
    legal_basis_for_ai_safety_components(LegalBasis).

must_take_into_account_requirements(Act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(Act, LegalBasis),
    concerning_ai_safety_components(Act),
    legal_basis_for_ai_safety_components(LegalBasis).

concerning_ai_safety_components(Act) :-
    act_concerns(Act, S),
    ai_system_safety_component(S).

adopting_implementing_act(act, 'celex:32018R1139/oj#art_17/par_1') :-
    true.

adopting_implementing_act(act, 'celex:32024R1689/oj#art_43/par_1') :-
    true.

adopting_implementing_act(act, 'celex:32018R1139/oj#art_57/unp_1') :-
    true.

adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_1') :-
    true.

adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_2') :-
    true.

adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_1') :-
    true.

adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_2') :-
    true.

adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_1') :-
    true.

adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_2') :-
    true.

legal_basis_for_ai_safety_components('celex:32018R1139/oj#art_17/par_1').
legal_basis_for_ai_safety_components('celex:32014L0090/oj#art_19/par_1').
legal_basis_for_ai_safety_components('celex:32014L0090/oj#art_19/par_2').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_43/par_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_47/par_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_47/par_2').
legal_basis_for_ai_safety_components('celex:32018R1139/oj#art_57/unp_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_58/par_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_58/par_2').

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(act, 'celex:32018R1139/oj#art_17/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_2'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(act, 'celex:32024R1689/oj#art_43/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(act, 'celex:32018R1139/oj#art_57/unp_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_2'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).

must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_2'),
    act_concerns(act, S),
    ai_system_safety_component(S).

:- pred act_concerns/2, gloss('an act concerns a subject matter'), source('celex:32024R1689/oj#art_108').

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_implementing_act/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_108').
provenance(concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_108').
provenance(act_concerns/2, 'celex:32024R1689/oj#art_108').

references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
