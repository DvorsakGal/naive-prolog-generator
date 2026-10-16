% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 5522b1a83b820744d9c9ee787e8f2d10d3883f688da6a14e994601cea3ed8162
% cached     : False
% title      : Monitoring actions
:- pred must_monitor_compliance/2, gloss('AI Office must monitor compliance of general-purpose AI model providers'), source('celex:32024R1689/oj#art_89').
:- pred may_take_necessary_actions/2, gloss('AI Office may take necessary actions to monitor compliance'), source('celex:32024R1689/oj#art_89').
:- pred must_lodge_complaint/2, gloss('downstream provider must lodge a complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_duly_reasoned/1, gloss('complaint is duly reasoned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_contains_contact_point/1, gloss('complaint indicates point of contact of the provider'), source('celex:32024R1689/oj#art_89').
:- pred complaint_contains_facts/1, gloss('complaint describes relevant facts and provisions'), source('celex:32024R1689/oj#art_89').
:- pred complaint_contains_reason/1, gloss('complaint indicates reason for alleged infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_may_contain_other_information/1, gloss('complaint may contain other relevant information'), source('celex:32024R1689/oj#art_89').

must_monitor_compliance(ai_office, general_purpose_ai_model) :-
    ai_office(ai_office),
    general_purpose_ai_model(general_purpose_ai_model).

may_take_necessary_actions(ai_office, monitor(compliance(general_purpose_ai_model))) :-
    ai_office(ai_office),
    general_purpose_ai_model(general_purpose_ai_model).

must_lodge_complaint(DownstreamProvider, complaint(infringement(regulation))) :-
    downstream_provider(DownstreamProvider),
    complaint_duly_reasoned(complaint(infringement(regulation))).

complaint_duly_reasoned(Complaint) :-
    complaint_contains_contact_point(Complaint),
    complaint_contains_facts(Complaint),
    complaint_contains_reason(Complaint).

complaint_contains_contact_point(Complaint) :-
    Complaint = complaint(_),
    % The complaint indicates the point of contact of the provider of the general-purpose AI model concerned.
    true.

complaint_contains_facts(Complaint) :-
    Complaint = complaint(_),
    % The complaint describes the relevant facts, the provisions concerned, and the reason for alleged infringement.
    true.

complaint_contains_reason(Complaint) :-
    Complaint = complaint(_),
    % The complaint indicates why the downstream provider considers the provider infringed the regulation.
    true.

complaint_may_contain_other_information(Complaint) :-
    Complaint = complaint(_),
    % The complaint may include any other information the downstream provider considers relevant.
    true.

provenance(must_monitor_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(may_take_necessary_actions/2, 'celex:32024R1689/oj#art_89').
provenance(must_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_contains_contact_point/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_contains_facts/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_contains_reason/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_may_contain_other_information/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
