% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 808b80c763a3515aed59964df9bd7c16660da4b6fff6e5933751b25946935609
% cached     : False
% title      : Codes of practice
:- pred code_of_practice/1, gloss('code of practice at Union level for general-purpose AI models'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_covers_obligation/2, gloss('code of practice covers a specific obligation'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_objective/2, gloss('code of practice sets out a specific objective'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_commitment/2, gloss('code of practice contains a commitment or measure'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_kpi/2, gloss('code of practice contains a key performance indicator'), source('celex:32024R1689/oj#art_56').
:- pred participant_in_code_of_practice/2, gloss('entity participating in drawing up or adhering to a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred supports_code_of_practice/2, gloss('entity supporting the drawing-up process of a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred reports_on_implementation/3, gloss('participant reports to AI Office on implementation of commitments'), source('celex:32024R1689/oj#art_56').
:- pred monitors_code_of_practice/2, gloss('entity regularly monitors and evaluates a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred assesses_code_of_practice_adequacy/2, gloss('entity assesses adequacy of a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred publishes_assessment/2, gloss('entity publishes assessment of code of practice adequacy'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_ready_by/2, gloss('code of practice is ready by a specific date'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_approved_by_commission/1, gloss('code of practice approved by Commission implementing act with general validity'), source('celex:32024R1689/oj#art_56').
:- pred invites_participants/2, gloss('AI Office invites entities to participate in code of practice'), source('celex:32024R1689/oj#art_56').
:- pred encourages_review_and_adaptation/2, gloss('AI Office encourages review and adaptation of code of practice'), source('celex:32024R1689/oj#art_56').
:- pred assists_standard_assessment/2, gloss('AI Office assists in assessment of available standards'), source('celex:32024R1689/oj#art_56').
:- pred commission_provides_common_rules/0, gloss('Commission provides common rules by implementing acts when code cannot be finalised or is inadequate'), source('celex:32024R1689/oj#art_56').
:- pred adherence_limited_to_obligations/2, gloss('adherence of non-systemic-risk provider limited to specific obligations'), source('celex:32024R1689/oj#art_56').

% Article 56, paragraph 1: AI Office shall encourage and facilitate drawing up of codes of practice
must_encourage_and_facilitate(ai_office, drawing_up(code_of_practice(C))) :-
    code_of_practice(C),
    at_union_level(C).

must_facilitate(ai_office, drawing_up(code_of_practice(C))) :-
    code_of_practice(C),
    at_union_level(C).

at_union_level(C) :-
    code_of_practice(C).

% Article 56, paragraph 2: codes shall cover at least obligations in art_53 and art_55
code_of_practice_covers_obligation(C, art_53) :-
    code_of_practice(C).

code_of_practice_covers_obligation(C, art_55) :-
    code_of_practice(C).

% Article 56, paragraph 2(a): means to ensure information is kept up to date
code_of_practice_commitment(C, keep_information_up_to_date) :-
    code_of_practice(C),
    covers_issue(C, information_art_53_1_a_b_up_to_date).

covers_issue(C, information_art_53_1_a_b_up_to_date) :-
    code_of_practice(C).

% Article 56, paragraph 2(b): adequate level of detail for summary about training content
code_of_practice_commitment(C, adequate_detail_training_summary) :-
    code_of_practice(C),
    covers_issue(C, training_content_summary_detail).

covers_issue(C, training_content_summary_detail) :-
    code_of_practice(C).

% Article 56, paragraph 2(c): identification of type and nature of systemic risks at Union level
code_of_practice_commitment(C, identify_systemic_risks_union_level) :-
    code_of_practice(C),
    covers_issue(C, systemic_risks_identification).

covers_issue(C, systemic_risks_identification) :-
    code_of_practice(C).

% Article 56, paragraph 2(d): measures, procedures and modalities for assessment and management of systemic risks
code_of_practice_commitment(C, systemic_risk_assessment_management_measures) :-
    code_of_practice(C),
    covers_issue(C, systemic_risk_measures_proportionate).

covers_issue(C, systemic_risk_measures_proportionate) :-
    code_of_practice(C).

% Article 56, paragraph 3: AI Office may invite providers and national competent authorities; others may support
invites_participants(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M).

invites_participants(ai_office, A) :-
    national_competent_authority(A).

participant_in_code_of_practice(P, C) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M),
    code_of_practice(C).

participant_in_code_of_practice(A, C) :-
    national_competent_authority(A),
    code_of_practice(C).

supports_code_of_practice(S, C) :-
    civil_society_organisation(S),
    code_of_practice(C).

supports_code_of_practice(S, C) :-
    industry_entity(S),
    code_of_practice(C).

supports_code_of_practice(S, C) :-
    academic_entity(S),
    code_of_practice(C).

supports_code_of_practice(S, C) :-
    downstream_provider(S),
    code_of_practice(C).

supports_code_of_practice(S, C) :-
    independent_expert(S),
    code_of_practice(C).

% Article 56, paragraph 4: codes shall set out specific objectives and contain commitments/measures including KPIs
code_of_practice_objective(C, O) :-
    code_of_practice(C),
    specific_objective(O).

code_of_practice_commitment(C, commitment_or_measure(M)) :-
    code_of_practice(C),
    commitment_or_measure(M).

code_of_practice_kpi(C, K) :-
    code_of_practice(C),
    key_performance_indicator(K).

takes_due_account_needs(C, affected_persons) :-
    code_of_practice(C),
    at_union_level(C).

% Article 56, paragraph 5: participants shall report regularly to AI Office
must_report_regularly(P, ai_office) :-
    participant_in_code_of_practice(P, C),
    reports_on_implementation(P, ai_office, C).

reports_on_implementation(P, ai_office, C) :-
    participant_in_code_of_practice(P, C),
    reports_on_commitments(P, C),
    reports_on_outcomes(P, C),
    measured_against_kpi(P, C).

reports_on_commitments(P, C) :-
    participant_in_code_of_practice(P, C).

reports_on_outcomes(P, C) :-
    participant_in_code_of_practice(P, C).

measured_against_kpi(P, C) :-
    participant_in_code_of_practice(P, C),
    code_of_practice_kpi(C, _K).

kpi_reflects_differences(P, C) :-
    participant_in_code_of_practice(P, C),
    reflects_size_capacity_differences(P).

reflects_size_capacity_differences(P) :-
    participant_in_code_of_practice(P, _C).

% Article 56, paragraph 6: AI Office and Board shall regularly monitor and evaluate
monitors_code_of_practice(ai_office, C) :-
    code_of_practice(C).

monitors_code_of_practice(board, C) :-
    code_of_practice(C).

assesses_code_of_practice_adequacy(ai_office, C) :-
    code_of_practice(C),
    monitors_code_of_practice(ai_office, C).

assesses_code_of_practice_adequacy(board, C) :-
    code_of_practice(C),
    monitors_code_of_practice(board, C).

publishes_assessment(ai_office, C) :-
    assesses_code_of_practice_adequacy(ai_office, C).

publishes_assessment(board, C) :-
    assesses_code_of_practice_adequacy(board, C).

% Article 56, paragraph 6: Commission may approve code of practice by implementing act
code_of_practice_approved_by_commission(C) :-
    code_of_practice(C),
    approved_by_implementing_act(C),
    general_validity_within_union(C).

% Article 56, paragraph 7: AI Office may invite providers to adhere; limited adherence for non-systemic-risk providers
invites_participants(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M),
    \+ presents_systemic_risk(M).

adherence_limited_to_obligations(P, art_53) :-
    provider(P),
    general_purpose_ai_model(M),
    provider_places_model(P, M),
    \+ presents_systemic_risk(M),
    participant_in_code_of_practice(P, C),
    code_of_practice(C).

% Article 56, paragraph 8: AI Office shall encourage and facilitate review and adaptation
encourages_review_and_adaptation(ai_office, C) :-
    code_of_practice(C).

must_facilitate(ai_office, review_and_adaptation(C)) :-
    code_of_practice(C).

assists_standard_assessment(ai_office, C) :-
    code_of_practice(C),
    emerging_standards_relevant(C).

emerging_standards_relevant(C) :-
    code_of_practice(C).

% Article 56, paragraph 9: codes shall be ready by 2 May 2025; fallback to Commission common rules by 2 August 2025
code_of_practice_ready_by(C, date(2025, may, 2)) :-
    code_of_practice(C).

must_take_necessary_steps(ai_office, invite_providers) :-
    code_of_practice(C),
    \+ code_of_practice_ready_by(C, date(2025, may, 2)).

commission_provides_common_rules :-
    \+ code_of_practice_finalised_by(date(2025, august, 2)).

commission_provides_common_rules :-
    code_of_practice(C),
    ai_office_deems_inadequate(C),
    date_passed(date(2025, august, 2)).

code_of_practice_finalised_by(D) :-
    code_of_practice(C),
    code_of_practice_ready_by(C, D).

ai_office_deems_inadequate(C) :-
    assesses_code_of_practice_adequacy(ai_office, C),
    \+ adequate(C).

adequate(C) :-
    code_of_practice(C),
    covers_obligations(C).

covers_obligations(C) :-
    code_of_practice_covers_obligation(C, art_53),
    code_of_practice_covers_obligation(C, art_55).

% Helper predicates
provider_places_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

presents_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

date_passed(D) :-
    date(_Y, _M, _Day),
    D = date(_Y2, _M2, _D2).

specific_objective(_O).

commitment_or_measure(_M).

key_performance_indicator(_K).

civil_society_organisation(_S).

industry_entity(_S).

academic_entity(_S).

independent_expert(_S).

approved_by_implementing_act(_C).

general_validity_within_union(_C).

% Provenance
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_covers_obligation/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_objective/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_commitment/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_kpi/2, 'celex:32024R1689/oj#art_56').
provenance(participant_in_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(supports_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(reports_on_implementation/3, 'celex:32024R1689/oj#art_56').
provenance(monitors_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(assesses_code_of_practice_adequacy/2, 'celex:32024R1689/oj#art_56').
provenance(publishes_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_approved_by_commission/1, 'celex:32024R1689/oj#art_56').
provenance(invites_participants/2, 'celex:32024R1689/oj#art_56').
provenance(encourages_review_and_adaptation/2, 'celex:32024R1689/oj#art_56').
provenance(assists_standard_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(commission_provides_common_rules/0, 'celex:32024R1689/oj#art_56').
provenance(adherence_limited_to_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_56').

% References
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').
