% unit       : celex:32024R1689/oj#art_108
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 28c0273580876f7d5942b9fc6340513bfc0296fb6a805034a7c4d90b868e66f7
% cached     : False
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
:- pred must_take_into_account/2, gloss('authority must take requirements into account when adopting acts'), source('celex:32024R1689/oj#art_108').

must_take_into_account(Authority, adoption(Act, concerning(S))) :-
    adopting_authority(Act, Authority),
    safety_component(S),
    ai_system(S),
    act_concerns_ai_safety_component(Act, S),
    chapter_3_section_2_requirements(Reqs),
    requirements_to_consider(Reqs).

% Specific act types and authorities from the provision
adoption(Act) :- implementing_act(Act).
adoption(Act) :- delegated_act(Act).

implementing_act(adoption_implementing_act(article_17_par_1, celex_32018R1139)).
implementing_act(adoption_implementing_act(article_43_par_1, celex_32024R1689)).
implementing_act(adoption_implementing_act(article_57, celex_32018R1139)).

delegated_act(adoption_delegated_act(article_19_par_1_2, celex_32014L0090)).
delegated_act(adoption_delegated_act(article_47_par_1_2, celex_32024R1689)).
delegated_act(adoption_delegated_act(article_58_par_1_2, celex_32024R1689)).

% Authority determination based on the act being adopted
adopting_authority(adoption_implementing_act(article_17_par_1, _), commission) :- commission.
adopting_authority(adoption_implementing_act(article_43_par_1, _), commission) :- commission.
adopting_authority(adoption_implementing_act(article_57, _), commission) :- commission.
adopting_authority(adoption_delegated_act(article_19_par_1_2, _), commission) :- commission.
adopting_authority(adoption_delegated_act(article_47_par_1_2, _), commission) :- commission.
adopting_authority(adoption_delegated_act(article_58_par_1_2, _), commission) :- commission.

% The subject matter of the act
act_concerns_ai_safety_component(Act, S) :-
    adoption(Act),
    safety_component(S),
    ai_system(S).

% Requirements from Chapter 3 Section 2 of the AI Act
chapter_3_section_2_requirements(requirements_chapter_3_section_2).

requirements_to_consider(requirements_chapter_3_section_2).

% Provenance
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').
provenance(adoption/1, 'celex:32024R1689/oj#art_108').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_108').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_108').
provenance(adopting_authority/2, 'celex:32024R1689/oj#art_108').
provenance(act_concerns_ai_safety_component/2, 'celex:32024R1689/oj#art_108').
provenance(chapter_3_section_2_requirements/1, 'celex:32024R1689/oj#art_108').
provenance(requirements_to_consider/1, 'celex:32024R1689/oj#art_108').

% References
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
