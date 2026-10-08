% unit       : celex:32024R1689/oj#anx_8
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : gpt-oss:120b-cloud
% prompt sha : 20293e199db2175475b7a86538b131686a4ff5a34882493c9c9af28f38e3ee16
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system as defined in the Regulation'), source('celex:32024R1689/oj#anx_8').
:- pred required_information_submission_by_provider/2, gloss('information that must be submitted by provider of high‑risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred required_information_submission_by_deployer/2, gloss('information that must be submitted by deployer of high‑risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred prohibited_electronic_instructions_for_use/2, gloss('electronic instructions for use must not be provided for certain high‑risk AI systems'), source('celex:32024R1689/oj#anx_8').
:- pred permitted_electronic_instructions_for_use/2, gloss('electronic instructions for use may be provided for high‑risk AI systems not in prohibited areas'), source('celex:32024R1689/oj#anx_8').
:- pred law_enforcement_or_migration_area/1, gloss('high‑risk AI system used in law enforcement or migration, asylum and border control management'), source('celex:32024R1689/oj#anx_8').

required_information_submission_by_provider(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_information_submission_by_deployer(D, S) :-
    deployer(D),
    high_risk_ai_system(S).

prohibited_electronic_instructions_for_use(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    law_enforcement_or_migration_area(S).

permitted_electronic_instructions_for_use(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    \+ law_enforcement_or_migration_area(S).

provenance(required_information_submission_by_provider/2, 'celex:32024R1689/oj#anx_8').
provenance(required_information_submission_by_deployer/2, 'celex:32024R1689/oj#anx_8').
provenance(prohibited_electronic_instructions_for_use/2, 'celex:32024R1689/oj#anx_8').
provenance(permitted_electronic_instructions_for_use/2, 'celex:32024R1689/oj#anx_8').

references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
