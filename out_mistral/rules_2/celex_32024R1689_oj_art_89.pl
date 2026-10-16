% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : ca9eb56ad5128b2ffa7a9c566347360aa44a4105bb50f058ce46c24be838c3a7
% cached     : False
% title      : Monitoring actions
:- pred may_take_monitoring_actions/1, gloss('AI Office may take necessary actions to monitor effective implementation and compliance by providers of general-purpose AI models'), source('celex:32024R1689/oj#art_89').
:- pred right_to_lodge_complaint/1, gloss('downstream provider has the right to lodge a complaint alleging an infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_duly_reasoned/1, gloss('complaint is duly reasoned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_indicates_point_of_contact/2, gloss('complaint indicates the point of contact of the provider of the general-purpose AI model concerned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_describes_relevant_facts/1, gloss('complaint describes the relevant facts'), source('celex:32024R1689/oj#art_89').
:- pred complaint_indicates_provisions_concerned/1, gloss('complaint indicates the provisions of the regulation concerned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_states_reason_for_infringement/1, gloss('complaint states the reason why the downstream provider considers the provider infringed the regulation'), source('celex:32024R1689/oj#art_89').
:- pred complaint_includes_other_relevant_information/1, gloss('complaint includes any other information the downstream provider considers relevant'), source('celex:32024R1689/oj#art_89').
:- pred complaint_includes_own_initiative_information/1, gloss('complaint includes, where appropriate, information gathered on the downstream provider''s own initiative'), source('celex:32024R1689/oj#art_89').

may_take_monitoring_actions(ai_office) :-
    ai_office(ai_office),
    general_purpose_ai_model_provider(P),
    monitors_effective_implementation_and_compliance(P).

monitors_effective_implementation_and_compliance(P) :-
    general_purpose_ai_model_provider(P),
    monitors_compliance_with_regulation(P),
    monitors_adherence_to_approved_codes_of_practice(P).

monitors_compliance_with_regulation(P) :-
    general_purpose_ai_model_provider(P).

monitors_adherence_to_approved_codes_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    approved_code_of_practice(C),
    adheres_to_code_of_practice(P, C).

right_to_lodge_complaint(DP) :-
    downstream_provider(DP).

complaint_duly_reasoned(C) :-
    right_to_lodge_complaint(DP),
    lodges_complaint(DP, C),
    complaint_indicates_point_of_contact(C, P),
    complaint_describes_relevant_facts(C),
    complaint_indicates_provisions_concerned(C),
    complaint_states_reason_for_infringement(C).

complaint_indicates_point_of_contact(C, P) :-
    lodges_complaint(DP, C),
    general_purpose_ai_model_provider(P),
    indicates_point_of_contact(C, P).

complaint_describes_relevant_facts(C) :-
    lodges_complaint(_DP, C),
    describes_relevant_facts(C).

complaint_indicates_provisions_concerned(C) :-
    lodges_complaint(_DP, C),
    indicates_provisions_concerned(C).

complaint_states_reason_for_infringement(C) :-
    lodges_complaint(DP, C),
    general_purpose_ai_model_provider(P),
    states_reason_why_considers_infringement(DP, P, C).

complaint_includes_other_relevant_information(C) :-
    lodges_complaint(DP, C),
    includes_other_relevant_information(DP, C).

complaint_includes_own_initiative_information(C) :-
    lodges_complaint(DP, C),
    includes_information_gathered_on_own_initiative(DP, C).

provenance(may_take_monitoring_actions/1, 'celex:32024R1689/oj#art_89').
provenance(right_to_lodge_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_describes_relevant_facts/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_provisions_concerned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_states_reason_for_infringement/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_includes_other_relevant_information/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_includes_own_initiative_information/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
