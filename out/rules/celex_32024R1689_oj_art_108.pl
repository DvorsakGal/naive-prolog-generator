% unit       : celex:32024R1689/oj#art_108
% title      : Amendments to <ref id="celex:32018R1139/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 441cba7020114a8b3b9ecd55005f3e4e2bda2a1f37d00cc422c8ad59d2f25b1e
% model      : gpt-oss:120b-cloud
% prompt sha : 1fb46e9ad172c60996ee43e058e0727f57e95a04188f1407a382591fe3f597ab
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred adopt_implementing_act/2, gloss('adopting an implementing act concerning an AI system'), source('celex:32024R1689/oj#art_108').
:- pred adopt_delegated_act/2, gloss('adopting a delegated act concerning an AI system'), source('celex:32024R1689/oj#art_108').
:- pred requirements_chapter_3_section_2/0, gloss('requirements set out in chapter 3 section 2 of the AI Regulation'), source('celex:32024R1689/oj#art_108').
:- pred must_take_into_account/2, gloss('authority must take into account the requirements of chapter 3 section 2 when adopting an act concerning a safety‑component AI system'), source('celex:32024R1689/oj#art_108').

must_take_into_account(Authority, S) :-
    (   adopt_implementing_act(Authority, S)
    ;   adopt_delegated_act(Authority, S)
    ),
    safety_component(S),
    requirements_chapter_3_section_2.

provenance(adopt_implementing_act/2, 'celex:32024R1689/oj#art_108').
provenance(adopt_delegated_act/2, 'celex:32024R1689/oj#art_108').
provenance(requirements_chapter_3_section_2/0, 'celex:32024R1689/oj#art_108').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_108').

references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').
