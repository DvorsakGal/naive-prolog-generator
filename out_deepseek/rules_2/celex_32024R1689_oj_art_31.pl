% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 5fdb5194dda9165634a832062a4f75acf4708f989bcfea117cc7afbcdbf26aee
% cached     : False
% title      : Requirements relating to notified bodies
:- pred must_be_established_under_national_law/1, gloss('notified body must be established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred must_have_legal_personality/1, gloss('notified body must have legal personality'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_organisational_requirements/1, gloss('notified body must satisfy organisational, quality management, resources and process requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_cybersecurity_requirements/1, gloss('notified body must satisfy suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_ensure_confidence_in_performance/1, gloss('organisational structure, allocation of responsibilities, reporting lines and operation must ensure confidence in performance and results'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent_of_provider/2, gloss('notified body must be independent of provider of assessed high-risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent_of_other_operators/1, gloss('notified body must be independent of other operators with economic interest and competitors'), source('celex:32024R1689/oj#art_31').
:- pred must_not_be_directly_involved_in_ai_lifecycle/1, gloss('conformity assessment body, top-level management and personnel must not be directly involved in design, development, marketing or use of high-risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred must_not_engage_in_conflicting_activities/1, gloss('must not engage in any activity that might conflict with independence of judgement or integrity'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard_independence_objectivity_impartiality/1, gloss('notified body must be organised and operated to safeguard independence, objectivity and impartiality'), source('celex:32024R1689/oj#art_31').
:- pred must_have_confidentiality_procedures/1, gloss('notified body must have documented procedures ensuring confidentiality of information'), source('celex:32024R1689/oj#art_31').
:- pred must_observe_professional_secrecy/1, gloss('staff of notified body must observe professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred must_have_procedures_accounting_for_provider_characteristics/1, gloss('notified body must have procedures taking due account of provider size, sector, structure and system complexity'), source('celex:32024R1689/oj#art_31').
:- pred must_take_out_liability_insurance/1, gloss('notified body must take out appropriate liability insurance'), source('celex:32024R1689/oj#art_31').
:- pred must_have_professional_integrity_and_competence/1, gloss('notified body must carry out tasks with highest degree of professional integrity and requisite competence'), source('celex:32024R1689/oj#art_31').
:- pred must_have_sufficient_internal_competences/1, gloss('notified body must have sufficient internal competences to evaluate tasks conducted by external parties'), source('celex:32024R1689/oj#art_31').
:- pred must_have_permanent_availability_of_personnel/1, gloss('notified body must have permanent availability of sufficient administrative, technical, legal and scientific personnel'), source('celex:32024R1689/oj#art_31').
:- pred must_participate_in_coordination_activities/1, gloss('notified body must participate in coordination activities under Article 38'), source('celex:32024R1689/oj#art_31').
:- pred must_participate_in_standardisation/1, gloss('notified body must take part in or be represented in European standardisation organisations or ensure awareness of relevant standards'), source('celex:32024R1689/oj#art_31').

must_be_established_under_national_law(B) :-
    notified_body(B).

must_have_legal_personality(B) :-
    notified_body(B).

must_satisfy_organisational_requirements(B) :-
    notified_body(B).

must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B).

must_ensure_confidence_in_performance(B) :-
    notified_body(B).

must_be_independent_of_provider(B, P) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    performs_conformity_assessment_on(B, S),
    provided_by(S, P).

must_be_independent_of_other_operators(B) :-
    notified_body(B).

must_not_be_directly_involved_in_ai_lifecycle(B) :-
    conformity_assessment_body(B).

must_not_engage_in_conflicting_activities(B) :-
    conformity_assessment_body(B).

must_safeguard_independence_objectivity_impartiality(B) :-
    notified_body(B).

must_document_impartiality_structure(B) :-
    notified_body(B).

must_have_confidentiality_procedures(B) :-
    notified_body(B).

must_observe_professional_secrecy(B) :-
    notified_body(B).

must_have_procedures_accounting_for_provider_characteristics(B) :-
    notified_body(B).

must_take_out_liability_insurance(B) :-
    notified_body(B),
    \+ liability_assumed_by_member_state(B).

must_have_professional_integrity_and_competence(B) :-
    notified_body(B).

must_have_sufficient_internal_competences(B) :-
    notified_body(B).

must_have_permanent_availability_of_personnel(B) :-
    notified_body(B).

must_participate_in_coordination_activities(B) :-
    notified_body(B).

must_participate_in_standardisation(B) :-
    notified_body(B).

% Supporting predicates
:- pred performs_conformity_assessment_on/2, gloss('notified body performs conformity assessment on an AI system'), source('celex:32024R1689/oj#art_31').
:- pred provided_by/2, gloss('AI system is provided by a provider'), source('celex:32024R1689/oj#art_31').
:- pred liability_assumed_by_member_state/1, gloss('liability is assumed by the Member State in which the notified body is established'), source('celex:32024R1689/oj#art_31').

% Provenance
provenance(must_be_established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_other_operators/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_ai_lifecycle/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_procedures_accounting_for_provider_characteristics/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_out_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_professional_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').

% References
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
