% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7726b5dd9761590776c11b39b505ceae193acf04586fbaaa99b83cdceab2631c
% cached     : False
% title      : Requirements relating to notified bodies
:- pred established_under_national_law/1, gloss('established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred legal_personality/1, gloss('has legal personality'), source('celex:32024R1689/oj#art_31').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_31').
:- pred independent_from/2, gloss('entity is independent from another entity or operator'), source('celex:32024R1689/oj#art_31').
:- pred competitor_of/2, gloss('first entity is a competitor of second entity'), source('celex:32024R1689/oj#art_31').
:- pred economic_interest_in/2, gloss('operator has economic interest in high-risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred performs_conformity_assessment/2, gloss('body performs conformity assessment on a system'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_involvement/2, gloss('entity or personnel is prohibited from involvement in activities regarding AI system'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_conflicting_activity/2, gloss('entity or personnel is prohibited from activity conflicting with independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred liability_assumed_by_member_state/1, gloss('liability is assumed by the Member State'), source('celex:32024R1689/oj#art_31').
:- pred member_state_directly_responsible/1, gloss('Member State is directly responsible for conformity assessment'), source('celex:32024R1689/oj#art_31').
:- pred exempt_liability_insurance/1, gloss('conformity assessment body is exempt from liability insurance requirement'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy_requirements/2, gloss('body must satisfy organizational, quality, resources, process, or cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_ensure_confidence/2, gloss('body must ensure confidence in performance and results'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard_impartiality/2, gloss('body must document and implement procedures safeguarding impartiality'), source('celex:32024R1689/oj#art_31').
:- pred must_maintain_confidentiality/2, gloss('body must maintain confidentiality and professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred must_adapt_procedures/2, gloss('body must have procedures adapted to provider scale and system complexity'), source('celex:32024R1689/oj#art_31').
:- pred must_hold_liability_insurance/2, gloss('body must take out appropriate liability insurance'), source('celex:32024R1689/oj#art_31').
:- pred must_have_competence/2, gloss('body must have professional integrity, competence, and personnel'), source('celex:32024R1689/oj#art_31').
:- pred must_participate_in_coordination/2, gloss('body must participate in coordination and standardisation activities'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use/2, gloss('conformity assessment body permitted to use AI system for operations or personal purposes'), source('celex:32024R1689/oj#art_31').

% Paragraph 1: Legal establishment and personality
required_establishment(B) :-
    notified_body(B),
    established_under_national_law(B),
    legal_personality(B).

% Paragraph 2: Organizational, quality, resource, process, cybersecurity requirements
must_satisfy_requirements(B, operational_and_cybersecurity) :-
    notified_body(B).

% Paragraph 3: Organizational structure ensuring confidence
must_ensure_confidence(B, assessment_activities) :-
    notified_body(B).

% Paragraph 4: Independence from provider, operators with economic interest, and competitors
independent_from(B, P) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    performs_conformity_assessment(B, S).

independent_from(B, O) :-
    notified_body(B),
    operator(O),
    high_risk_ai_system(S),
    performs_conformity_assessment(B, S),
    economic_interest_in(O, S).

independent_from(B, C) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    performs_conformity_assessment(B, S),
    competitor_of(C, P).

permitted_use(B, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    necessary_for_operations(B, S).

permitted_use(B, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    personal_purpose_use(B, S).

% Paragraph 5: Prohibition on involvement and conflicting activities
prohibited_involvement(Actor, S) :-
    conformity_assessment_body(B),
    high_risk_ai_system(S),
    in_scope_actor(Actor, B).

prohibited_conflicting_activity(Actor, activity_conflicting_with_independence) :-
    conformity_assessment_body(B),
    in_scope_actor(Actor, B).

prohibited_conflicting_activity(Actor, consultancy_services) :-
    conformity_assessment_body(B),
    in_scope_actor(Actor, B).

in_scope_actor(B, B) :-
    conformity_assessment_body(B).
in_scope_actor(top_level_management(B), B) :-
    conformity_assessment_body(B).
in_scope_actor(assessment_personnel(B), B) :-
    conformity_assessment_body(B).

% Paragraph 6: Safeguard impartiality
must_safeguard_impartiality(B, impartiality_structure_and_procedures) :-
    notified_body(B).

% Paragraph 7: Confidentiality and professional secrecy
must_maintain_confidentiality(B, professional_secrecy) :-
    notified_body(B).

% Paragraph 8: Procedures taking account of provider size and system complexity
must_adapt_procedures(B, proportionate_assessment_procedures) :-
    notified_body(B).

% Paragraph 9: Liability insurance and exemptions
exempt_liability_insurance(B) :-
    liability_assumed_by_member_state(B).
exempt_liability_insurance(B) :-
    member_state_directly_responsible(B).

must_hold_liability_insurance(B, liability_insurance) :-
    notified_body(B),
    \+ exempt_liability_insurance(B).

% Paragraph 10 & 11: Competence and personnel
must_have_competence(B, professional_integrity_and_competence) :-
    notified_body(B).

must_have_competence(B, internal_competence_to_evaluate_external) :-
    notified_body(B).

must_have_competence(B, permanent_sufficient_personnel) :-
    notified_body(B).

% Paragraph 12: Coordination and standardisation
must_participate_in_coordination(B, coordination_activities) :-
    notified_body(B).

must_participate_in_coordination(B, standardisation_activities) :-
    notified_body(B).

% Provenance
provenance(required_establishment/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_requirements/2, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence/2, 'celex:32024R1689/oj#art_31').
provenance(independent_from/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_involvement/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(in_scope_actor/2, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_impartiality/2, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/2, 'celex:32024R1689/oj#art_31').
provenance(must_adapt_procedures/2, 'celex:32024R1689/oj#art_31').
provenance(exempt_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(must_hold_liability_insurance/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_competence/2, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination/2, 'celex:32024R1689/oj#art_31').

% References
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
