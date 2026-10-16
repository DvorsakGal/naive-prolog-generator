% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b8e3bdbcff80e0a3ace97c65190e060777ce4493597a7d4acc866a2a908ede46
% cached     : False
% title      : Monitoring actions
:- pred must_monitor_compliance/2, gloss('AI Office shall monitor compliance by providers of general-purpose AI models'), source('celex:32024R1689/oj#art_89').
:- pred must_lodge_complaint/2, gloss('downstream provider shall lodge a complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred complaint_alleging_infringement/1, gloss('duly reasoned complaint alleging infringement of the regulation'), source('celex:32024R1689/oj#art_89').
:- pred point_of_contact/2, gloss('point of contact of the provider of the general-purpose AI model'), source('celex:32024R1689/oj#art_89').
:- pred description_of_infringement/3, gloss('description of facts, provisions concerned, and reason for infringement allegation'), source('celex:32024R1689/oj#art_89').
:- pred other_relevant_information/2, gloss('other information the downstream provider considers relevant'), source('celex:32024R1689/oj#art_89').

must_monitor_compliance(AiOffice, Provider) :-
    ai_office(AiOffice),
    provider(Provider),
    general_purpose_ai_model_provider(Provider).

must_lodge_complaint(DownstreamProvider, complaint(Provider, Facts, Provisions, Reason, OtherInfo)) :-
    downstream_provider(DownstreamProvider),
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    point_of_contact(Provider, _Contact),
    description_of_infringement(Facts, Provisions, Reason),
    other_relevant_information(DownstreamProvider, OtherInfo).

general_purpose_ai_model_provider(P) :-
    provider(P),
    general_purpose_ai_model(_Model),
    % The provider develops or places the general-purpose AI model
    true.

provenance(must_monitor_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(must_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_alleging_infringement/1, 'celex:32024R1689/oj#art_89').
provenance(point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(description_of_infringement/3, 'celex:32024R1689/oj#art_89').
provenance(other_relevant_information/2, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
