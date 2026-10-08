% unit       : celex:32024R1689/oj#art_56
% title      : Codes of practice
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : gpt-oss:120b-cloud
% prompt sha : 6d2e7ec3d7d0e05b807ea40d43c96dd524c5a3334ecc466cbeec1ac104a918e2
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_encourage_and_facilitate_drawing_up_codes_of_practice/2, gloss('AI Office must encourage and facilitate drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
must_encourage_and_facilitate_drawing_up_codes_of_practice(ai_office, C) :-
    code_of_practice(C).

:- pred must_ensure_codes_cover_obligations/2, gloss('AI Office and Board must ensure codes of practice cover obligations from Art 53 and Art 55'), source('celex:32024R1689/oj#art_56').
must_ensure_codes_cover_obligations(ai_office, C) :-
    code_of_practice(C),
    obligation_from_art(C, art_53),
    obligation_from_art(C, art_55).
must_ensure_codes_cover_obligations(board, C) :-
    code_of_practice(C),
    obligation_from_art(C, art_53),
    obligation_from_art(C, art_55).

:- pred obligation_from_art/2, gloss('Code of practice includes obligations from the referenced article'), source('celex:32024R1689/oj#art_56').
obligation_from_art(_C, _Art).  % placeholder – content ensured by the provision

:- pred required_issue_in_codes/1, gloss('Specific issues that must be covered by codes of practice'), source('celex:32024R1689/oj#art_56').
required_issue_in_codes(information_up_to_date).
required_issue_in_codes(summary_detail).
required_issue_in_codes(systemic_risk_identification).
required_issue_in_codes(risk_assessment_and_management).

:- pred must_include_required_issues/2, gloss('Codes of practice must include the required issues'), source('celex:32024R1689/oj#art_56').
must_include_required_issues(ai_office, C) :-
    code_of_practice(C),
    required_issue_in_codes(_Issue).
must_include_required_issues(board, C) :-
    code_of_practice(C),
    required_issue_in_codes(_Issue).

:- pred provider_of_general_purpose_ai_model/1, gloss('Provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_56').
provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(_).

:- pred permitted_invite_to_participate_in_codes/2, gloss('AI Office may invite providers or authorities to participate in drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
permitted_invite_to_participate_in_codes(ai_office, P) :-
    provider_of_general_purpose_ai_model(P).
permitted_invite_to_participate_in_codes(ai_office, A) :-
    national_competent_authority(A).

:- pred stakeholder/1, gloss('Relevant stakeholder that may support the code‑of‑practice process'), source('celex:32024R1689/oj#art_56').
stakeholder(S) :-
    civil_society_organisation(S).
stakeholder(S) :-
    industry(S).
stakeholder(S) :-
    academia(S).
stakeholder(S) :-
    downstream_provider(S).
stakeholder(S) :-
    independent_expert(S).

:- pred permitted_support_process/2, gloss('Stakeholders may support the code‑of‑practice drafting process'), source('celex:32024R1689/oj#art_56').
permitted_support_process(ai_office, S) :-
    stakeholder(S).

:- pred must_ensure_codes_set_objectives_and_measures/2, gloss('AI Office and Board must ensure codes set objectives and contain commitments/measures'), source('celex:32024R1689/oj#art_56').
must_ensure_codes_set_objectives_and_measures(ai_office, C) :-
    code_of_practice(C),
    objectives_set(C),
    measures_included(C).
must_ensure_codes_set_objectives_and_measures(board, C) :-
    code_of_practice(C),
    objectives_set(C),
    measures_included(C).

:- pred objectives_set/1, gloss('Objectives are clearly set out in the code of practice'), source('celex:32024R1689/oj#art_56').
objectives_set(_).

:- pred measures_included/1, gloss('Commitments or measures, including KPIs, are included in the code of practice'), source('celex:32024R1689/oj#art_56').
measures_included(_).

:- pred must_take_due_account_of_needs_and_interests/2, gloss('AI Office and Board must take due account of needs and interests of all interested parties'), source('celex:32024R1689/oj#art_56').
must_take_due_account_of_needs_and_interests(ai_office, C) :-
    code_of_practice(C),
    needs_and_interests_accounted(C).
must_take_due_account_of_needs_and_interests(board, C) :-
    code_of_practice(C),
    needs_and_interests_accounted(C).

:- pred needs_and_interests_accounted/1, gloss('Needs and interests of all interested parties are taken into account'), source('celex:32024R1689/oj#art_56').
needs_and_interests_accounted(_).

:- pred must_ensure_participants_report_regularly/2, gloss('AI Office must ensure participants report regularly on implementation'), source('celex:32024R1689/oj#art_56').
must_ensure_participants_report_regularly(ai_office, C) :-
    code_of_practice(C),
    participants_report_regularly(C).

:- pred participants_report_regularly/1, gloss('Participants report regularly on commitments and outcomes'), source('celex:32024R1689/oj#art_56').
participants_report_regularly(_).

:- pred must_monitor_and_evaluate_codes/2, gloss('AI Office and Board must regularly monitor and evaluate achievement of code objectives'), source('celex:32024R1689/oj#art_56').
must_monitor_and_evaluate_codes(ai_office, C) :-
    code_of_practice(C),
    monitor_and_evaluate(C).
must_monitor_and_evaluate_codes(board, C) :-
    code_of_practice(C),
    monitor_and_evaluate(C).

:- pred monitor_and_evaluate/1, gloss('Monitoring and evaluation of code objectives'), source('celex:32024R1689/oj#art_56').
monitor_and_evaluate(_).

:- pred must_publish_assessment_of_codes/2, gloss('AI Office and Board must publish assessment of adequacy of codes'), source('celex:32024R1689/oj#art_56').
must_publish_assessment_of_codes(ai_office, C) :-
    code_of_practice(C),
    assessment_published(C).
must_publish_assessment_of_codes(board, C) :-
    code_of_practice(C),
    assessment_published(C).

:- pred assessment_published/1, gloss('Assessment of adequacy of the code of practice is published'), source('celex:32024R1689/oj#art_56').
assessment_published(_).

:- pred permitted_approve_code_of_practice/2, gloss('Commission may approve a code of practice by implementing act'), source('celex:32024R1689/oj#art_56').
permitted_approve_code_of_practice(commission, C) :-
    code_of_practice(C).

:- pred required_adopt_implementing_act/2, gloss('Implementing act shall be adopted in accordance with the examination procedure'), source('celex:32024R1689/oj#art_56').
required_adopt_implementing_act(Act, Procedure) :-
    implementing_act(Act),
    examination_procedure(Procedure).

:- pred implementing_act/1, gloss('An implementing act'), source('celex:32024R1689/oj#art_56').
implementing_act(_).

:- pred examination_procedure/1, gloss('Examination procedure referred to in Art 98 paragraph 2'), source('celex:32024R1689/oj#art_56').
examination_procedure(_).

:- pred permitted_invite_to_adhere/2, gloss('AI Office may invite providers to adhere to the codes of practice'), source('celex:32024R1689/oj#art_56').
permitted_invite_to_adhere(ai_office, P) :-
    provider_of_general_purpose_ai_model(P).

:- pred permitted_adhere_limited/1, gloss('Provider may adhere limitedly to obligations from Art 53 when no systemic risk'), source('celex:32024R1689/oj#art_56').
permitted_adhere_limited(P) :-
    provider_of_general_purpose_ai_model(P),
    \+ systemic_risk_present(P).

:- pred permitted_adhere_full/1, gloss('Provider may adhere to the full code if it declares interest'), source('celex:32024R1689/oj#art_56').
permitted_adhere_full(P) :-
    provider_of_general_purpose_ai_model(P),
    declares_interest(P).

:- pred systemic_risk_present/1, gloss('Provider presents systemic risks'), source('celex:32024R1689/oj#art_56').
systemic_risk_present(_P) :-
    systemic_risk(_).

:- pred declares_interest/1, gloss('Provider explicitly declares interest to join the full code'), source('celex:32024R1689/oj#art_56').
declares_interest(_).

:- pred must_encourage_and_facilitate_review_of_codes/1, gloss('AI Office must encourage and facilitate review and adaptation of codes'), source('celex:32024R1689/oj#art_56').
must_encourage_and_facilitate_review_of_codes(ai_office).

:- pred must_assist_assessment_of_standards/1, gloss('AI Office must assist in the assessment of available standards'), source('celex:32024R1689/oj#art_56').
must_assist_assessment_of_standards(ai_office) :-
    harmonised_standard(_).

:- pred required_deadline_codes_of_practice/1, gloss('Codes of practice shall be ready by 2 May 2025'), source('celex:32024R1689/oj#art_56').
required_deadline_codes_of_practice('2025-05-02').

:- pred must_take_steps_to_finalize_codes/1, gloss('AI Office shall take necessary steps to finalise codes'), source('celex:32024R1689/oj#art_56').
must_take_steps_to_finalize_codes(ai_office) :-
    code_of_practice(_).

:- pred permitted_provide_common_rules/1, gloss('Commission may provide common rules if code not finalised or inadequate'), source('celex:32024R1689/oj#art_56').
permitted_provide_common_rules(commission) :-
    deadline_passed('2025-08-02'),
    ( \+ code_finalised ; \+ code_adequate ).

:- pred deadline_passed/1, gloss('Specified deadline has passed'), source('celex:32024R1689/oj#art_56').
deadline_passed(_).  % placeholder for temporal check

:- pred code_finalised/0, gloss('Code of practice has been finalised'), source('celex:32024R1689/oj#art_56').
code_finalised.

:- pred code_adequate/0, gloss('Code of practice has been assessed as adequate'), source('celex:32024R1689/oj#art_56').
code_adequate.

% Description of a code of practice
:- pred code_of_practice/1, gloss('A code of practice'), source('celex:32024R1689/oj#art_56').

% Provenance
provenance(must_encourage_and_facilitate_drawing_up_codes_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_codes_cover_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(obligation_from_art/2, 'celex:32024R1689/oj#art_56').
provenance(required_issue_in_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_include_required_issues/2, 'celex:32024R1689/oj#art_56').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_participate_in_codes/2, 'celex:32024R1689/oj#art_56').
provenance(stakeholder/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_support_process/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_codes_set_objectives_and_measures/2, 'celex:32024R1689/oj#art_56').
provenance(objectives_set/1, 'celex:32024R1689/oj#art_56').
provenance(measures_included/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_due_account_of_needs_and_interests/2, 'celex:32024R1689/oj#art_56').
provenance(needs_and_interests_accounted/1, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_participants_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(participants_report_regularly/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_codes/2, 'celex:32024R1689/oj#art_56').
provenance(monitor_and_evaluate/1, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment_of_codes/2, 'celex:32024R1689/oj#art_56').
provenance(assessment_published/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_approve_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(required_adopt_implementing_act/2, 'celex:32024R1689/oj#art_56').
provenance(implementing_act/1, 'celex:32024R1689/oj#art_56').
provenance(examination_procedure/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_adhere/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_adhere_limited/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_adhere_full/1, 'celex:32024R1689/oj#art_56').
provenance(systemic_risk_present/1, 'celex:32024R1689/oj#art_56').
provenance(declares_interest/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate_review_of_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_assist_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(required_deadline_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_steps_to_finalize_codes/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
provenance(deadline_passed/1, 'celex:32024R1689/oj#art_56').
provenance(code_finalised/0, 'celex:32024R1689/oj#art_56').
provenance(code_adequate/0, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').

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
