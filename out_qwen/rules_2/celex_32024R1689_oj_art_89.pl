% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 694a30b4e0c0662bcc4f1f766f32c8963a21daf0374709f904ba0a8b31a67b66
% cached     : False
% title      : Monitoring actions
:- pred may_monitor_implementation(AI_Office, Object), gloss('AI Office may take actions to monitor implementation and compliance'), source('celex:32024R1689/oj#art_89').
:- pred has_right_to_lodge_complaint(Downstream_Provider, Infringement), gloss('downstream provider has right to lodge complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred must_be_duly_reasoned(Complaint), gloss('complaint must be duly reasoned'), source('celex:32024R1689/oj#art_89').
:- pred must_indicate_point_of_contact(Complaint, Provider), gloss('complaint must indicate point of contact of the provider concerned'), source('celex:32024R1689/oj#art_89').
:- pred must_describe_relevant_facts(Complaint, Facts), gloss('complaint must describe relevant facts and provisions concerned'), source('celex:32024R1689/oj#art_89').
:- pred must_include_other_relevant_information(Complaint, Information), gloss('complaint must include other information considered relevant by downstream provider'), source('celex:32024R1689/oj#art_89').

may_monitor_implementation(ai_office, compliance(general_purpose_ai_model_provider)) :-
    general_purpose_ai_model_provider(_P).

has_right_to_lodge_complaint(D, infringement(regulation)) :-
    downstream_provider(D).

must_be_duly_reasoned(complaint(D, infringement(regulation))) :-
    downstream_provider(D).

must_indicate_point_of_contact(complaint(D, infringement(regulation)), P) :-
    downstream_provider(D),
    general_purpose_ai_model_provider(P),
    point_of_contact(P, _Contact).

must_describe_relevant_facts(complaint(D, infringement(regulation)), description(Facts, Provisions, Reason)) :-
    downstream_provider(D),
    general_purpose_ai_model_provider(_P),
    nonvar(Facts),
    nonvar(Provisions),
    nonvar(Reason).

must_include_other_relevant_information(complaint(D, infringement(regulation)), Info) :-
    downstream_provider(D),
    nonvar(Info).

provenance(may_monitor_implementation/2, 'celex:32024R1689/oj#art_89').
provenance(has_right_to_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(must_be_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(must_indicate_point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(must_describe_relevant_facts/2, 'celex:32024R1689/oj#art_89').
provenance(must_include_other_relevant_information/2, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
