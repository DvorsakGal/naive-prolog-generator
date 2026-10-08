% unit       : celex:32024R1689/oj#art_104
% title      : Amendment to <ref id="celex:32013R0168/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : ce70014e1f2de08276b23b9a004059e9557a6fb5a518d8189cd965245fc97838
% model      : gpt-oss:120b-cloud
% prompt sha : 354db5721e7f2bce357a09dac3f9f36e5f235db8c246e2a2342d3c3cb74424a2
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred adopt_delegated_act/2, gloss('adoption of a delegated act concerning an AI system'), source('celex:32024R1689/oj#art_104').
:- pred required_consideration_of_requirements/2, gloss('requirement to take into account Chapter 3 Section 2 requirements when adopting delegated acts for safety‑component AI systems'), source('celex:32024R1689/oj#art_104').
:- pred requirements_chapter3_section2_applies/1, gloss('requirements set out in Chapter 3 Section 2 apply to the AI system'), source('celex:32024R1689/oj#art_104').

required_consideration_of_requirements(_Actor, AI_System) :-
    adopt_delegated_act(_Actor, AI_System),
    safety_component(AI_System),
    requirements_chapter3_section2_applies(AI_System).

requirements_chapter3_section2_applies(_).

provenance(required_consideration_of_requirements/2, 'celex:32024R1689/oj#art_104').

references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj#art_22/par_5/unp_1').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_104', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_104', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_104', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_104', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_104', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_104', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_104', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_104', 'celex:32024R1689/oj#chp_3/sec_2').
