% unit       : celex:32024R1689/oj#art_112
% title      : Evaluation and review
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : gpt-oss:120b-cloud
% prompt sha : 431d8c829cc1d52de6165c751e0d0cf8d22af908c631f9ab85e5929a66285a71
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_112').
:- pred board/1, gloss('Board of the AI regulatory framework'), source('celex:32024R1689/oj#art_112').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_112').
:- pred ai_office/1, gloss('AI Office'), source('celex:32024R1689/oj#art_112').

:- pred list_type/1, gloss('type of list referred to in the Regulation'), source('celex:32024R1689/oj#art_112').
:- pred topic_type/1, gloss('topic of evaluation or report'), source('celex:32024R1689/oj#art_112').
:- pred aspect_type/1, gloss('aspect to be included in a report'), source('celex:32024R1689/oj#art_112').
:- pred source_type/1, gloss('source whose positions must be taken into account'), source('celex:32024R1689/oj#art_112').
:- pred body_type/1, gloss('institution to which the Commission must submit a report'), source('celex:32024R1689/oj#art_112').
:- pred target_type/1, gloss('object of a proposal'), source('celex:32024R1689/oj#art_112').
:- pred report/1, gloss('report produced by the Commission'), source('celex:32024R1689/oj#art_112').

% -----------------------------------------------------------------
% Obligations of the Commission (Article 112)

must_assess_need_for_amendment(Commission, List) :-
    commission(Commission),
    list_type(List).

must_submit_findings(Commission, european_parliament) :-
    commission(Commission).

must_submit_findings(Commission, council) :-
    commission(Commission).

required_evaluation(Commission, area_headings_amendment) :-
    commission(Commission),
    topic_type(area_headings_amendment).

required_evaluation(Commission, transparency_measures_amendment) :-
    commission(Commission),
    topic_type(transparency_measures_amendment).

required_evaluation(Commission, supervision_governance_amendment) :-
    commission(Commission),
    topic_type(supervision_governance_amendment).

required_report(Commission, evaluation_review) :-
    commission(Commission),
    topic_type(evaluation_review).

must_include_assessment(Commission, enforcement_structure) :-
    commission(Commission),
    aspect_type(enforcement_structure).

must_include_assessment(Commission, union_agency_need) :-
    commission(Commission),
    aspect_type(union_agency_need).

must_include_proposal_if_appropriate(Commission, amendment_of_regulation) :-
    commission(Commission),
    target_type(amendment_of_regulation).

must_make_public(Report) :-
    report(Report).

required_report_attention(Commission, national_competent_authorities_resources) :-
    commission(Commission),
    topic_type(national_competent_authorities_resources).

required_report_attention(Commission, state_of_penalties) :-
    commission(Commission),
    topic_type(state_of_penalties).

required_report_attention(Commission, adopted_harmonised_standards) :-
    commission(Commission),
    topic_type(adopted_harmonised_standards).

required_report_attention(Commission, number_of_undertakings) :-
    commission(Commission),
    topic_type(number_of_undertakings).

required_evaluation_of_ai_office(Commission) :-
    commission(Commission).

must_submit_findings(Commission, ai_office_evaluation_report) :-
    commission(Commission).

required_report(Commission, energy_efficient_gp_ai_models_standardisation) :-
    commission(Commission),
    topic_type(energy_efficient_gp_ai_models_standardisation).

must_assess_need_for_measures(Commission) :-
    commission(Commission).

required_evaluation_of_voluntary_codes(Commission) :-
    commission(Commission).

must_provide_information(Provider, Commission) :-
    board(Provider),
    commission(Commission).

must_provide_information(Provider, Commission) :-
    member_state(Provider),
    commission(Commission).

must_provide_information(Provider, Commission) :-
    national_competent_authority(Provider),
    commission(Commission).

must_take_into_account(Commission, board) :-
    commission(Commission),
    source_type(board).

must_take_into_account(Commission, european_parliament) :-
    commission(Commission),
    source_type(european_parliament).

must_take_into_account(Commission, council) :-
    commission(Commission),
    source_type(council).

must_take_into_account(Commission, other_relevant_body) :-
    commission(Commission),
    source_type(other_relevant_body).

must_submit_proposal(Commission, amendment_of_regulation) :-
    commission(Commission),
    target_type(amendment_of_regulation).

must_develop_methodology(AIOffice) :-
    ai_office(AIOffice).

must_include_in_list(AIOffice, List) :-
    ai_office(AIOffice),
    list_type(List).

required_assessment_of_enforcement(Commission) :-
    commission(Commission).

must_report_to(Commission, european_parliament) :-
    commission(Commission),
    body_type(european_parliament).

must_report_to(Commission, council) :-
    commission(Commission),
    body_type(council).

must_report_to(Commission, european_economic_and_social_committee) :-
    commission(Commission),
    body_type(european_economic_and_social_committee).

% -----------------------------------------------------------------
% Supporting facts

list_type(annex_3).
list_type(prohibited_practices).

topic_type(area_headings_amendment).
topic_type(transparency_measures_amendment).
topic_type(supervision_governance_amendment).
topic_type(evaluation_review).
topic_type(energy_efficient_gp_ai_models_standardisation).

aspect_type(enforcement_structure).
aspect_type(union_agency_need).

source_type(board).
source_type(european_parliament).
source_type(council).
source_type(other_relevant_body).

body_type(european_parliament).
body_type(council).
body_type(european_economic_and_social_committee).

target_type(amendment_of_regulation).

report(evaluation_review_report).
report(ai_office_evaluation_report).
report(energy_efficient_standardisation_report).
report(enforcement_assessment_report).

% -----------------------------------------------------------------
% Provenance

provenance(must_assess_need_for_amendment/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(required_evaluation/2, 'celex:32024R1689/oj#art_112').
provenance(required_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_include_assessment/2, 'celex:32024R1689/oj#art_112').
provenance(must_include_proposal_if_appropriate/2, 'celex:32024R1689/oj#art_112').
provenance(must_make_public/1, 'celex:32024R1689/oj#art_112').
provenance(required_report_attention/2, 'celex:32024R1689/oj#art_112').
provenance(required_evaluation_of_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(required_report/2, 'celex:32024R1689/oj#art_112').  % for ai_office_evaluation_report
provenance(required_report/2, 'celex:32024R1689/oj#art_112').  % for energy_efficient...
provenance(must_assess_need_for_measures/1, 'celex:32024R1689/oj#art_112').
provenance(required_evaluation_of_voluntary_codes/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_proposal/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(must_include_in_list/2, 'celex:32024R1689/oj#art_112').
provenance(required_assessment_of_enforcement/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_to/2, 'celex:32024R1689/oj#art_112').

% -----------------------------------------------------------------
% References

references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
