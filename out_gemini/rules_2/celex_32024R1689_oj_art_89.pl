% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b1a6cfb02b0c8643e3012a46ff81e6ea1d17964d75926dfbf00db59e9cd7b636
% cached     : False
% title      : Monitoring actions
:- pred permitted_monitoring_action/2, gloss('AI Office may take necessary actions to monitor implementation and compliance by a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_89').
:- pred permitted_lodge_complaint/2, gloss('Downstream provider is permitted to lodge a complaint alleging infringement against a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_89').
:- pred duly_reasoned_complaint/1, gloss('A complaint is duly reasoned and contains the required indications'), source('celex:32024R1689/oj#art_89').
:- pred indicates_contact_point/1, gloss('Complaint indicates the point of contact of the provider concerned'), source('celex:32024R1689/oj#art_89').
:- pred indicates_relevant_facts_and_infringement_reasons/1, gloss('Complaint indicates description of relevant facts, provisions concerned, and reasons for alleged infringement'), source('celex:32024R1689/oj#art_89').

% Article 89(1): AI Office may take necessary actions to monitor effective implementation and compliance
permitted_monitoring_action(Office, Provider) :-
    ai_office(Office),
    provider_of_general_purpose_ai_model(Provider).

% Article 89(2): Downstream providers have the right to lodge a complaint
permitted_lodge_complaint(DownstreamProvider, complaint(Provider, ComplaintDetails)) :-
    downstream_provider(DownstreamProvider),
    provider_of_general_purpose_ai_model(Provider),
    duly_reasoned_complaint(ComplaintDetails).

% Article 89(2)(a)-(b): Minimum required contents of a duly reasoned complaint
duly_reasoned_complaint(C) :-
    indicates_contact_point(C),
    indicates_relevant_facts_and_infringement_reasons(C).

% Provenance
provenance(permitted_monitoring_action/2, 'celex:32024R1689/oj#art_89').
provenance(permitted_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(duly_reasoned_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(indicates_contact_point/1, 'celex:32024R1689/oj#art_89').
provenance(indicates_relevant_facts_and_infringement_reasons/1, 'celex:32024R1689/oj#art_89').

% References
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
