% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 36753dfa79532ff8ca49fb08d7d3ab82697ef0c4a0e1914f2d7cd003a7010a02
% cached     : False
% title      : Requirements relating to notified bodies
:- pred must_be_established_under_national_law/2, gloss('notified body must be established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred must_have_legal_personality/1, gloss('notified body must have legal personality'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_organisational_requirements/1, gloss('notified body must satisfy organisational requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_quality_management_requirements/1, gloss('notified body must satisfy quality management requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_resources_requirements/1, gloss('notified body must satisfy resources requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_process_requirements/1, gloss('notified body must satisfy process requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_cybersecurity_requirements/1, gloss('notified body must satisfy suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_ensure_confidence_in_performance/1, gloss('notified body must ensure confidence in its performance'), source('celex:32024R1689/oj#art_31').
:- pred must_ensure_confidence_in_results/1, gloss('notified body must ensure confidence in the results of its conformity assessment activities'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent_of_provider/2, gloss('notified body must be independent of the provider of a high-risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent_of_operator/2, gloss('notified body must be independent of any other operator with an economic interest'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent_of_competitor/2, gloss('notified body must be independent of any competitor of the provider'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use_of_assessed_system/2, gloss('use of assessed high-risk AI systems necessary for operations or personal purposes is not precluded'), source('celex:32024R1689/oj#art_31').
:- pred must_not_be_directly_involved/2, gloss('conformity assessment body and its personnel must not be directly involved in design, development, marketing or use'), source('celex:32024R1689/oj#art_31').
:- pred must_not_represent_parties/2, gloss('conformity assessment body and its personnel must not represent parties engaged in those activities'), source('celex:32024R1689/oj#art_31').
:- pred must_not_engage_in_conflicting_activity/2, gloss('conformity assessment body and its personnel must not engage in activity conflicting with independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard_independence/1, gloss('notified body must safeguard independence of its activities'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard_objectivity/1, gloss('notified body must safeguard objectivity of its activities'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard_impartiality/1, gloss('notified body must safeguard impartiality of its activities'), source('celex:32024R1689/oj#art_31').
:- pred must_document_impartiality_structure/1, gloss('notified body must document a structure to safeguard impartiality'), source('celex:32024R1689/oj#art_31').
:- pred must_implement_impartiality_structure/1, gloss('notified body must implement a structure to safeguard impartiality'), source('celex:32024R1689/oj#art_31').
:- pred must_have_confidentiality_procedures/1, gloss('notified body must have documented procedures ensuring confidentiality'), source('celex:32024R1689/oj#art_31').
:- pred must_observe_professional_secrecy/1, gloss('staff of notified bodies must observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred must_have_proportionate_procedures/1, gloss('notified body must have procedures taking due account of provider size, sector, structure and AI system complexity'), source('celex:32024R1689/oj#art_31').
:- pred must_take_out_liability_insurance/1, gloss('notified body must take out appropriate liability insurance'), source('celex:32024R1689/oj#art_31').
:- pred exempt_liability_insurance/1, gloss('notified body exempt from liability insurance if Member State assumes liability or is directly responsible'), source('celex:32024R1689/oj#art_31').
:- pred must_have_professional_integrity/1, gloss('notified body must carry out tasks with highest degree of professional integrity'), source('celex:32024R1689/oj#art_31').
:- pred must_have_requisite_competence/1, gloss('notified body must have requisite competence in the specific field'), source('celex:32024R1689/oj#art_31').
:- pred must_have_sufficient_internal_competences/1, gloss('notified body must have sufficient internal competences to evaluate tasks conducted by external parties'), source('celex:32024R1689/oj#art_31').
:- pred must_have_permanent_availability_of_personnel/1, gloss('notified body must have permanent availability of sufficient administrative, technical, legal and scientific personnel'), source('celex:32024R1689/oj#art_31').
:- pred must_participate_in_coordination_activities/1, gloss('notified body must participate in coordination activities'), source('celex:32024R1689/oj#art_31').
:- pred must_participate_in_standardisation/1, gloss('notified body must take part in or be represented in European standardisation organisations or ensure awareness of relevant standards'), source('celex:32024R1689/oj#art_31').

must_be_established_under_national_law(B, MemberState) :-
    notified_body(B),
    member_state(MemberState).

must_have_legal_personality(B) :-
    notified_body(B).

must_satisfy_organisational_requirements(B) :-
    notified_body(B).

must_satisfy_quality_management_requirements(B) :-
    notified_body(B).

must_satisfy_resources_requirements(B) :-
    notified_body(B).

must_satisfy_process_requirements(B) :-
    notified_body(B).

must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B).

must_ensure_confidence_in_performance(B) :-
    notified_body(B).

must_ensure_confidence_in_results(B) :-
    notified_body(B).

must_be_independent_of_provider(B, Provider) :-
    notified_body(B),
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S).

must_be_independent_of_operator(B, Operator) :-
    notified_body(B),
    operator(Operator),
    economic_interest_in_high_risk_ai_systems(Operator),
    \+ provider(Operator).

must_be_independent_of_competitor(B, Competitor) :-
    notified_body(B),
    competitor_of_provider(Competitor, Provider),
    provider(Provider).

permitted_use_of_assessed_system(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    ( necessary_for_operations(B, S)
    ; personal_purpose(B, S)
    ).

must_not_be_directly_involved(B, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    ( design(B, S)
    ; development(B, S)
    ; marketing(B, S)
    ; use(B, S)
    ).

must_not_represent_parties(B, Party) :-
    conformity_assessment_body(B),
    party_engaged_in_design_development_marketing_or_use(Party, S),
    high_risk_ai_system(S).

must_not_engage_in_conflicting_activity(B, Activity) :-
    conformity_assessment_body(B),
    activity_conflicting_with_independence_or_integrity(Activity, B).

must_safeguard_independence(B) :-
    notified_body(B).

must_safeguard_objectivity(B) :-
    notified_body(B).

must_safeguard_impartiality(B) :-
    notified_body(B).

must_document_impartiality_structure(B) :-
    notified_body(B).

must_implement_impartiality_structure(B) :-
    notified_body(B).

must_have_confidentiality_procedures(B) :-
    notified_body(B).

must_observe_professional_secrecy(Staff) :-
    staff_of_notified_body(Staff, B),
    notified_body(B).

must_have_proportionate_procedures(B) :-
    notified_body(B).

must_take_out_liability_insurance(B) :-
    notified_body(B),
    \+ exempt_liability_insurance(B).

exempt_liability_insurance(B) :-
    notified_body(B),
    member_state_assumes_liability(B, MemberState).

exempt_liability_insurance(B) :-
    notified_body(B),
    member_state_directly_responsible(B, MemberState).

must_have_professional_integrity(B) :-
    notified_body(B).

must_have_requisite_competence(B) :-
    notified_body(B).

must_have_sufficient_internal_competences(B) :-
    notified_body(B).

must_have_permanent_availability_of_personnel(B) :-
    notified_body(B).

must_participate_in_coordination_activities(B) :-
    notified_body(B).

must_participate_in_standardisation(B) :-
    notified_body(B).

provenance(must_be_established_under_national_law/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_resources_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_results/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_operator/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitor/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_system/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_objectivity/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_implement_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_proportionate_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_out_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_requisite_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').

references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
