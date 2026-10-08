% unit       : celex:32024R1689/oj#art_60
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : gpt-oss:120b-cloud
% prompt sha : b01d411ffb010736da7e2c94bfc69a90db8b7566f7286052265bb35483b7a3d4
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_60').
:- pred prospective_provider/1, gloss('entity that intends to become a provider of AI systems'), source('celex:32024R1689/oj#art_60').
:- pred testing_plan_submitted/2, gloss('real‑world testing plan submitted to the market surveillance authority'), source('celex:32024R1689/oj#art_60').
:- pred authority_approved_testing/2, gloss('market surveillance authority approved the testing and its plan'), source('celex:32024R1689/oj#art_60').
:- pred testing_registered/2, gloss('testing registered with a Union‑wide unique identification number'), source('celex:32024R1689/oj#art_60').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_60').
:- pred data_transfer_safeguarded/1, gloss('data transferred to third countries only with appropriate safeguards'), source('celex:32024R1689/oj#art_60').
:- pred testing_duration_allowed/2, gloss('testing duration does not exceed six months, or an authorised extension'), source('celex:32024R1689/oj#art_60').
:- pred vulnerable_subjects_protected/1, gloss('subjects belonging to vulnerable groups are appropriately protected'), source('celex:32024R1689/oj#art_60').
:- pred deployer_informed_and_agreement/2, gloss('deployer informed of all aspects and agreement on roles concluded'), source('celex:32024R1689/oj#art_60').
:- pred cooperation_agreement_in_place/2, gloss('agreement between provider and deployer specifying responsibilities'), source('celex:32024R1689/oj#art_60').
:- pred informed_consent_obtained/1, gloss('informed consent obtained from testing subjects'), source('celex:32024R1689/oj#art_60').
:- pred oversight_by_qualified/1, gloss('testing overseen by suitably qualified persons'), source('celex:32024R1689/oj#art_60').
:- pred decisions_reversible/1, gloss('predictions, recommendations or decisions of the AI system can be effectively reversed'), source('celex:32024R1689/oj#art_60').

permitted_testing_in_real_world_conditions(Provider, System) :-
    ( provider(Provider) ; prospective_provider(Provider) ),
    high_risk_ai_system(System),
    testing_plan_submitted(Provider, System),
    authority_approved_testing(Provider, System),
    testing_registered(Provider, System),
    established_in_union(Provider),
    data_transfer_safeguarded(Provider),
    testing_duration_allowed(Provider, System),
    vulnerable_subjects_protected(Provider),
    deployer_informed_and_agreement(Provider, Deployer),
    cooperation_agreement_in_place(Provider, Deployer),
    informed_consent_obtained(Provider),
    oversight_by_qualified(Provider),
    decisions_reversible(System).

provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').

references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60/par_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').
