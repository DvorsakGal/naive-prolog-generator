% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 164b6343fef37cca19a5f8f12e83b646361b8c2d2bfd4236c8c945384a2806ce
% cached     : False
% title      : Monitoring actions
:- pred may_monitor_compliance/2, gloss('AI Office may take necessary actions to monitor compliance'), source('celex:32024R1689/oj#art_89').
:- pred may_lodge_complaint/2, gloss('downstream provider has right to lodge complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_duly_reasoned/1, gloss('complaint is duly reasoned and contains required information'), source('celex:32024R1689/oj#art_89').

may_monitor_compliance(Office, Provider) :-
    ai_office(Office),
    general_purpose_ai_model_provider(Provider),
    provider_of_general_purpose_ai_model(Provider).

may_lodge_complaint(DownstreamProvider, complaint(Provider, Facts, Provisions, Reason, OtherInfo)) :-
    downstream_provider(DownstreamProvider),
    general_purpose_ai_model_provider(Provider),
    complaint_duly_reasoned(complaint(Provider, Facts, Provisions, Reason, OtherInfo)).

complaint_duly_reasoned(complaint(Provider, Facts, Provisions, Reason, OtherInfo)) :-
    point_of_contact(Provider, _Contact),
    relevant_facts(Facts),
    provisions_concerned(Provisions),
    reason_for_infringement(Reason),
    other_relevant_information(OtherInfo).

provenance(may_monitor_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
