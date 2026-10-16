% unit       : celex:32024R1689/oj#art_27
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : c4f27f2d0eed32f67771348b530a6cc6f10143ace7c448d767e54a9c772bc1db
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 70fc3e41aa91f6689cc2556c203e6be7c3e43ac97b6a41857b2e0bf8f553c5c2
% cached     : False
% title      : Fundamental rights impact assessment for high-risk AI systems
:- pred must_perform_fundamental_rights_impact_assessment/2, gloss('deployer must perform fundamental rights impact assessment before deploying high-risk AI system'), source('celex:32024R1689/oj#art_27').
:- pred must_notify_market_surveillance_authority_of_fria/2, gloss('deployer must notify market surveillance authority of fundamental rights impact assessment results'), source('celex:32024R1689/oj#art_27').
:- pred must_update_fria/2, gloss('deployer must update fundamental rights impact assessment when elements change'), source('celex:32024R1689/oj#art_27').
:- pred fria_complements_dpia/2, gloss('fundamental rights impact assessment complements data protection impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred must_develop_fria_template/1, gloss('AI Office must develop template for fundamental rights impact assessment'), source('celex:32024R1689/oj#art_27').
:- pred deployer_subject_to_fria/1, gloss('deployer subject to fundamental rights impact assessment obligation'), source('celex:32024R1689/oj#art_27').
:- pred fria_exemption_applies/1, gloss('deployer exempt from notifying market surveillance authority of FRIA results'), source('celex:32024R1689/oj#art_27').

% Paragraph 1: Obligation to perform FRIA
deployer_subject_to_fria(D) :-
    deployer(D),
    high_risk_ai_system(S),
    deploying(D, S),
    \+ intended_for_area_annex_3_point_2(S),
    (   body_governed_by_public_law(D)
    ;   private_entity_providing_public_services(D)
    ;   deploying_annex_3_point_5_b_or_c_system(D, S)
    ).

must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer_subject_to_fria(D),
    deploying(D, S),
    first_use(D, S).

% Paragraph 2: Reliance on prior assessments
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer_subject_to_fria(D),
    deploying(D, S),
    similar_case(D, S),
    \+ previously_conducted_fria_exists(D, S),
    \+ existing_provider_impact_assessment_exists(D, S).

must_update_fria(D, S) :-
    deployer_subject_to_fria(D),
    deploying(D, S),
    element_of_fria_changed(D, S).

% Paragraph 3: Notification obligation
must_notify_market_surveillance_authority_of_fria(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    \+ fria_exemption_applies(D).

fria_exemption_applies(D) :-
    deployer(D),
    % Article 46(1) exemption context
    deployer_exempt_under_art_46_par_1(D).

% Paragraph 4: FRIA complements DPIA
fria_complements_dpia(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    data_protection_impact_assessment_conducted(D, S).

% Paragraph 5: AI Office obligation
must_develop_fria_template(ai_office).

% Provenance
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority_of_fria/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fria/2, 'celex:32024R1689/oj#art_27').
provenance(fria_complements_dpia/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop_fria_template/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_subject_to_fria/1, 'celex:32024R1689/oj#art_27').
provenance(fria_exemption_applies/1, 'celex:32024R1689/oj#art_27').

% References
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27/par_5').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_27', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_27', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_27', 'celex:32016L0680/oj#art_27').
