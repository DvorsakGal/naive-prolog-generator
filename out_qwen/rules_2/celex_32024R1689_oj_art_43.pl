% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 0156cebd5274ec19191b3a43d906c71c542ff9f56eb849cdba0f11843624140d
% cached     : False
% title      : Conformity assessment
:- pred high_risk_ai_system_annex_3_point_2_to_8/1, gloss('high-risk AI system referred to in Annex III points 2 to 8'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standard_or_common_specification/1, gloss('provider has applied harmonised standards or common specifications'), source('celex:32024R1689/oj#art_43').
:- pred must_follow_conformity_assessment_procedure/2, gloss('provider must follow a specific conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred market_surveillance_authority_acts_as_notified_body/2, gloss('market surveillance authority acts as notified body for specific deployers'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_law_enforcement_or_union_body/1, gloss('system intended for law enforcement, immigration, asylum or Union bodies'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_change_excluded_from_substantial_modification/1, gloss('change pre-determined at initial assessment is not substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred continues_to_learn_after_placing_on_market/1, gloss('AI system continues to learn after being placed on market or put into service'), source('celex:32024R1689/oj#art_43').

provenance(high_risk_ai_system_annex_3_point_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standard_or_common_specification/1, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_acts_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_or_union_body/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_change_excluded_from_substantial_modification/1, 'celex:32024R1689/oj#art_43').
provenance(continues_to_learn_after_placing_on_market/1, 'celex:32024R1689/oj#art_43').

references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_3').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_10').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_11').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').

high_risk_ai_system_annex_3_point_2_to_8(S) :-
    high_risk_ai_system_annex_iii(S).

applied_harmonised_standard_or_common_specification(S) :-
    provider(_P),
    high_risk_ai_system(S).

must_follow_conformity_assessment_procedure(P, internal_control(anx_6)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_2_to_8(S),
    placing_on_market(P, S).

must_follow_conformity_assessment_procedure(P, Procedure) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    applied_harmonised_standard_or_common_specification(S),
    (Procedure = internal_control(anx_6) ; Procedure = quality_management_and_technical_doc_with_notified_body(anx_7)).

must_follow_conformity_assessment_procedure(P, quality_management_and_technical_doc_with_notified_body(anx_7)) :-
    provider(P),
    high_risk_ai_system_annex_3_point_1(S),
    \+ applied_harmonised_standard_or_common_specification(S).

market_surveillance_authority_acts_as_notified_body(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    intended_for_law_enforcement_or_union_body(S).

intended_for_law_enforcement_or_union_body(S) :-
    high_risk_ai_system(S),
    deployer(D),
    (law_enforcement_authority(D) ; union_body(D)).

pre_determined_change_excluded_from_substantial_modification(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placing_on_market(S),
    substantial_modification(S).

continues_to_learn_after_placing_on_market(S) :-
    high_risk_ai_system(S),
    placing_on_market(_P, S).
