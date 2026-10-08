% unit       : celex:32024R1689/oj#art_56
% title      : Codes of practice
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : gpt-oss:120b-cloud
% prompt sha : f446303cc67cb4c06f63d594ccc8537f479dc149ef04ac24dadb950f8baaa177
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
% ---------- Declarations ----------
:- pred required_encourage_and_facilitate/2, gloss('AI Office shall encourage and facilitate drawing up of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred required_ensure_codes_cover_obligation/2, gloss('AI Office and Board shall ensure codes of practice cover specific obligations'), source('celex:32024R1689/oj#art_56').
:- pred permitted_invite/2, gloss('AI Office may invite entities to participate in the drawing‑up of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred permitted_adhere_to_codes/1, gloss('AI Office may invite providers of general‑purpose AI models to adhere to the codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred presents_systemic_risk/1, gloss('Provider of a general‑purpose AI model presents systemic risks'), source('celex:32024R1689/oj#art_56').
:- pred must_ensure_regular_reporting/2, gloss('AI Office shall ensure participants report regularly on implementation'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate/3, gloss('AI Office and Board shall regularly monitor and evaluate achievement of objectives'), source('celex:32024R1689/oj#art_56').
:- pred must_publish_assessment/3, gloss('AI Office and Board shall publish assessment of adequacy of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_ensure_codes_ready_by/2, gloss('Codes of practice shall be ready by a specified date'), source('celex:32024R1689/oj#art_56').
:- pred codes_not_finalised_by/1, gloss('A code of practice has not been finalised by the given date'), source('celex:32024R1689/oj#art_56').
:- pred codes_deemed_inadequate/0, gloss('A code of practice is deemed inadequate after assessment'), source('celex:32024R1689/oj#art_56').
:- pred permitted_provide_common_rules/1, gloss('Commission may provide common rules if codes are not finalised or inadequate'), source('celex:32024R1689/oj#art_56').
:- pred permitted_approve_code_of_practice/1, gloss('Commission may approve a code of practice by implementing act'), source('celex:32024R1689/oj#art_56').
:- pred must_adopt_implementing_act_in_accordance_with/2, gloss('Implementing act shall be adopted in accordance with the examination procedure'), source('celex:32024R1689/oj#art_56').

% ---------- Facts ----------
required_encourage_and_facilitate(ai_office, drawing_up_codes_of_practice).

required_ensure_codes_cover_obligation(ai_office, art_53).
required_ensure_codes_cover_obligation(ai_office, art_55).
required_ensure_codes_cover_obligation(board, art_53).
required_ensure_codes_cover_obligation(board, art_55).

permitted_invite(ai_office, providers_of_general_purpose_ai_models).
permitted_invite(ai_office, relevant_national_competent_authorities).

permitted_adhere_to_codes(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    \+ presents_systemic_risk(Provider).

must_ensure_regular_reporting(ai_office, participants_of_codes_of_practice).

must_monitor_and_evaluate(ai_office, board, codes_of_practice).

must_publish_assessment(ai_office, board, codes_of_practice).

must_ensure_codes_ready_by(ai_office, date(2025,5,2)).

codes_not_finalised_by(date(2025,8,2)).
codes_deemed_inadequate.

permitted_provide_common_rules(commission) :-
    codes_not_finalised_by(date(2025,8,2));
    codes_deemed_inadequate.

permitted_approve_code_of_practice(commission).

must_adopt_implementing_act_in_accordance_with(commission, examination_procedure).

% ---------- Provenance ----------
provenance(required_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(required_ensure_codes_cover_obligation/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_adhere_to_codes/1, 'celex:32024R1689/oj#art_56').
provenance(presents_systemic_risk/1, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_regular_reporting/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/3, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/3, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_codes_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(codes_not_finalised_by/1, 'celex:32024R1689/oj#art_56').
provenance(codes_deemed_inadequate/0, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(must_adopt_implementing_act_in_accordance_with/2, 'celex:32024R1689/oj#art_56').

% ---------- References ----------
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').
