% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7853df6644b4dc63dd0e7a7e2b078fa08ddb71358cd6d7f8bf0dcbdf6dca54a2
% cached     : False
% title      : Monitoring actions
:- pred must_take_monitoring_actions(ai_office, general_purpose_ai_model), gloss('AI Office takes necessary actions to monitor effective implementation and compliance by providers of general-purpose AI models'), source('celex:32024R1689/oj#art_89').
:- pred may_lodge_complaint(downstream_provider, infringement), gloss('downstream provider has right to lodge complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_duly_reasoned(complaint), gloss('complaint is duly reasoned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_indicates_point_of_contact(complaint, provider), gloss('complaint indicates point of contact of provider of general-purpose AI model concerned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_describes_relevant_facts(complaint), gloss('complaint describes relevant facts'), source('celex:32024R1689/oj#art_89').
:- pred complaint_identifies_provisions_concerned(complaint), gloss('complaint identifies provisions of regulation concerned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_states_reason_for_infringement(complaint), gloss('complaint states reason why downstream provider considers provider infringed regulation'), source('celex:32024R1689/oj#art_89').
:- pred complaint_includes_other_relevant_information(complaint), gloss('complaint includes any other information considered relevant by downstream provider'), source('celex:32024R1689/oj#art_89').

must_take_monitoring_actions(ai_office, general_purpose_ai_model) :-
    ai_office(ai_office),
    general_purpose_ai_model(G),
    provider_of_general_purpose_ai_model(P, G),
    purpose(monitoring_effective_implementation_and_compliance(P, G)).

may_lodge_complaint(DP, infringement(G)) :-
    downstream_provider(DP),
    general_purpose_ai_model(G),
    provider_of_general_purpose_ai_model(P, G),
    alleged_infringement_by_provider(P, G).

complaint_duly_reasoned(C) :-
    complaint_indicates_point_of_contact(C, _P),
    complaint_describes_relevant_facts(C),
    complaint_identifies_provisions_concerned(C),
    complaint_states_reason_for_infringement(C).

complaint_includes_other_relevant_information(C) :-
    complaint_sent_by_downstream_provider(C, _DP).

provider_of_general_purpose_ai_model(P, G) :-
    provider(P),
    general_purpose_ai_model(G).

purpose(monitoring_effective_implementation_and_compliance(P, G)) :-
    provider(P),
    general_purpose_ai_model(G).

alleged_infringement_by_provider(P, G) :-
    provider(P),
    general_purpose_ai_model(G).

complaint_sent_by_downstream_provider(C, DP) :-
    downstream_provider(DP).

provenance(must_take_monitoring_actions/2, 'celex:32024R1689/oj#art_89').
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_describes_relevant_facts/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_identifies_provisions_concerned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_states_reason_for_infringement/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_includes_other_relevant_information/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
