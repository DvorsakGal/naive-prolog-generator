% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 29d34fa45c2c3678b9675fb9297ae85ed7d1ee4f96d33df718a38e23e341259c
% cached     : False
% title      : Monitoring actions
:- pred must_monitor/2, gloss('entity must monitor effective implementation and compliance'), source('celex:32024R1689/oj#art_89').
:- pred may_lodge_complaint/2, gloss('downstream provider may lodge a complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_reasoned/1, gloss('complaint is duly reasoned'), source('celex:32024R1689/oj#art_89').
:- pred complaint_indicates_contact/2, gloss('complaint indicates point of contact of provider'), source('celex:32024R1689/oj#art_89').
:- pred complaint_indicates_facts/2, gloss('complaint indicates relevant facts and provisions'), source('celex:32024R1689/oj#art_89').
:- pred complaint_indicates_reason/2, gloss('complaint indicates reason for alleged infringement'), source('celex:32024R1689/oj#art_89').

must_monitor(AI_Office, effective_implementation_and_compliance(providers_of_general_purpose_ai_models)) :-
    ai_office(AI_Office).

may_lodge_complaint(DownstreamProvider, complaint(ProviderOfGeneralPurposeAIModel)) :-
    downstream_provider(DownstreamProvider),
    general_purpose_ai_model(ProviderOfGeneralPurposeAIModel).

complaint_reasoned(Complaint) :-
    complaint_indicates_contact(Complaint, _),
    complaint_indicates_facts(Complaint, _),
    complaint_indicates_reason(Complaint, _).

provenance(must_monitor/2, 'celex:32024R1689/oj#art_89').
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_contact/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_facts/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_reason/2, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
