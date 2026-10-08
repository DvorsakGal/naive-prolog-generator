% unit       : celex:32024R1689/oj#art_43
% title      : Conformity assessment
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : gpt-oss:120b-cloud
% prompt sha : b26eaf8d3129f963cf38941e022ff5cb4c1adc1ea9be9a83181a2fb91550514c
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex_3_point_1/1, gloss('listed in annex 3 point 1'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex_3_points_2_to_8/1, gloss('listed in annex 3 points 2‑8'), source('celex:32024R1689/oj#art_43').
:- pred listed_in_annex_1_sec_1/1, gloss('listed in annex 1 section 1'), source('celex:32024R1689/oj#art_43').
:- pred applied_harmonised_standards/2, gloss('provider has applied harmonised standards to system'), source('celex:32024R1689/oj#art_43').
:- pred applied_common_specifications/2, gloss('provider has applied common specifications to system'), source('celex:32024R1689/oj#art_43').
:- pred internal_control/1, gloss('internal‑control conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred notified_body_assessment/1, gloss('assessment with involvement of a notified body'), source('celex:32024R1689/oj#art_43').
:- pred demonstrating_compliance/2, gloss('provider demonstrates compliance of system'), source('celex:32024R1689/oj#art_43').
:- pred condition_a_to_d/1, gloss('conditions a‑d for using notified‑body procedure'), source('celex:32024R1689/oj#art_43').
:- pred relevant_legal_act_procedure/2, gloss('procedure required under relevant Union harmonisation legislation'), source('celex:32024R1689/oj#art_43').
:- pred previously_assessed/1, gloss('system has already undergone a conformity assessment'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_change/1, gloss('change pre‑determined and documented in technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred complies_with_art_31/1, gloss('notified body complies with requirements of article 31'), source('celex:32024R1689/oj#art_43').

:- pred required_conformity_assessment_procedure/2, gloss('provider must follow a conformity assessment procedure for system'), source('celex:32024R1689/oj#art_43').
:- pred required_new_conformity_assessment/2, gloss('provider must conduct a new conformity assessment after substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred permitted_notified_body_control/2, gloss('notified body may control conformity assessment for system'), source('celex:32024R1689/oj#art_43').

% --- Paragraph 1 (a) internal‑control option ---------------------------------
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    (applied_harmonised_standards(P, S) ; applied_common_specifications(P, S)),
    internal_control(S).

% --- Paragraph 1 (b) notified‑body option ------------------------------------
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_point_1(S),
    (applied_harmonised_standards(P, S) ; applied_common_specifications(P, S)),
    notified_body_assessment(S).

% --- Paragraph 1 (conditions a‑d) forcing notified‑body assessment ---------
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    demonstrating_compliance(P, S),
    condition_a_to_d(S),
    notified_body_assessment(S).

% --- Paragraph 2 (internal‑control for annex 3 points 2‑8) -----------------
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_3_points_2_to_8(S),
    internal_control(S).

% --- Paragraph 3 (procedure required by other Union legislation) ------------
required_conformity_assessment_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    listed_in_annex_1_sec_1(S),
    relevant_legal_act_procedure(P, S).

% --- Paragraph 3 (notified bodies may act) ----------------------------------
permitted_notified_body_control(NB, S) :-
    notified_body(NB),
    complies_with_art_31(NB),
    high_risk_ai_system(S),
    listed_in_annex_1_sec_1(S).

% --- Paragraph 4 (new assessment after substantial modification) ------------
required_new_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    previously_assessed(S),
    substantial_modification(S),
    \+ pre_determined_change(S).

% Provenance -----------------------------------------------------------------
provenance(required_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(required_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body_control/2, 'celex:32024R1689/oj#art_43').

% References -----------------------------------------------------------------
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
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
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').
