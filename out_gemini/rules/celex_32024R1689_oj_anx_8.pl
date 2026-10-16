% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 152113c57a28a63ef864c33c3eda993a451caa14fd411b46c5f8e51ee92243d1
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#anx_8').
:- pred certified_by_notified_body/1, gloss('system has been certified by a notified body'), source('celex:32024R1689/oj#anx_8').
:- pred area_of_law_enforcement/1, gloss('AI system in the area of law enforcement under Annex III point 1 or 6'), source('celex:32024R1689/oj#anx_8').
:- pred area_of_migration_asylum_border_control/1, gloss('AI system in migration, asylum and border control management under Annex III point 7'), source('celex:32024R1689/oj#anx_8').
:- pred exempt_from_electronic_instructions/1, gloss('exempt from submitting electronic instructions for use in registration'), source('celex:32024R1689/oj#anx_8').
:- pred requires_fundamental_rights_impact_assessment/1, gloss('deployer required to conduct fundamental rights impact assessment'), source('celex:32024R1689/oj#anx_8').
:- pred requires_data_protection_impact_assessment/1, gloss('deployer required to carry out data protection impact assessment'), source('celex:32024R1689/oj#anx_8').
:- pred must_submit(Actor, Object), gloss('Actor is obliged to submit specified information for registration'), source('celex:32024R1689/oj#anx_8').
:- pred must_update(Actor, Object), gloss('Actor is obliged to keep submitted registration information up to date'), source('celex:32024R1689/oj#anx_8').

% Section A: Exemptions from electronic instructions for use
exempt_from_electronic_instructions(S) :-
    area_of_law_enforcement(S).
exempt_from_electronic_instructions(S) :-
    area_of_migration_asylum_border_control(S).

% Section A: Obligations on providers under Article 49(1)
must_submit(P, registration_info(section_a, S, provider_details)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, submitter_details)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, authorised_representative_details)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, identification_and_traceability)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, intended_purpose_and_functions)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, system_information_and_operating_logic)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, system_status)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, notified_body_certificate_details)) :-
    provider(P),
    high_risk_ai_system(S),
    certified_by_notified_body(S).

must_submit(P, registration_info(section_a, S, notified_body_certificate_copy)) :-
    provider(P),
    high_risk_ai_system(S),
    certified_by_notified_body(S).

must_submit(P, registration_info(section_a, S, member_states_placed_or_serviced)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, declaration_of_conformity)) :-
    provider(P),
    high_risk_ai_system(S).

must_submit(P, registration_info(section_a, S, electronic_instructions_for_use)) :-
    provider(P),
    high_risk_ai_system(S),
    \+ exempt_from_electronic_instructions(S).

must_update(P, registration_info(section_a, S)) :-
    provider(P),
    high_risk_ai_system(S).

% Section B: Obligations on providers under Article 49(2) (derogation under Art. 6(3))
must_submit(P, registration_info(section_b, S, provider_details)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, submitter_details)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, authorised_representative_details)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, identification_and_traceability)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, intended_purpose)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, article_6_3_conditions)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, article_6_3_grounds_summary)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, system_status)) :-
    provider(P),
    ai_system(S).

must_submit(P, registration_info(section_b, S, member_states_placed_or_serviced)) :-
    provider(P),
    ai_system(S).

must_update(P, registration_info(section_b, S)) :-
    provider(P),
    ai_system(S).

% Section C: Obligations on deployers under Article 49(3)
must_submit(D, registration_info(section_c, S, deployer_details)) :-
    deployer(D),
    high_risk_ai_system(S).

must_submit(D, registration_info(section_c, S, submitter_details)) :-
    deployer(D),
    high_risk_ai_system(S).

must_submit(D, registration_info(section_c, S, database_entry_url)) :-
    deployer(D),
    high_risk_ai_system(S).

must_submit(D, registration_info(section_c, S, fundamental_rights_impact_assessment_summary)) :-
    deployer(D),
    high_risk_ai_system(S),
    requires_fundamental_rights_impact_assessment(D).

must_submit(D, registration_info(section_c, S, data_protection_impact_assessment_summary)) :-
    deployer(D),
    high_risk_ai_system(S),
    requires_data_protection_impact_assessment(D).

must_update(D, registration_info(section_c, S)) :-
    deployer(D),
    high_risk_ai_system(S).

% Provenance
provenance(exempt_from_electronic_instructions/1, 'celex:32024R1689/oj#anx_8').
provenance(must_submit/2, 'celex:32024R1689/oj#anx_8').
provenance(must_update/2, 'celex:32024R1689/oj#anx_8').

% References
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
