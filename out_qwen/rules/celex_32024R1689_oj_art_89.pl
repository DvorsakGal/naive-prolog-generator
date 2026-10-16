% unit       : celex:32024R1689/oj#art_89
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 17bc5e499ce34ed2fb29a4ac47f16fbc595fcf67f3eeb7d55421d67a2c47a5f7
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 16665fe13f825a4bfb9f58fddb3ff5a1f82324a01d21b8195431c55f85ee88ff
% cached     : False
% title      : Monitoring actions
:- pred may_monitor_compliance/1, gloss('AI Office may take actions to monitor compliance'), source('celex:32024R1689/oj#art_89').
:- pred has_right_to_lodge_complaint/1, gloss('downstream provider has right to lodge complaint alleging infringement'), source('celex:32024R1689/oj#art_89').
:- pred must_be_duly_reasoned/1, gloss('complaint must be duly reasoned and indicate required information'), source('celex:32024R1689/oj#art_89').

may_monitor_compliance(ai_office).

has_right_to_lodge_complaint(D) :-
    downstream_provider(D).

must_be_duly_reasoned(complaint(D, infringement(Model))) :-
    downstream_provider(D),
    general_purpose_ai_model(Model),
    indicates_point_of_contact(complaint(D, infringement(Model)), Model),
    describes_relevant_facts(complaint(D, infringement(Model))),
    identifies_provisions_concerned(complaint(D, infringement(Model))),
    states_reason_for_infringement(complaint(D, infringement(Model))).

provenance(may_monitor_compliance/1, 'celex:32024R1689/oj#art_89').
provenance(has_right_to_lodge_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(must_be_duly_reasoned/1, 'celex:32024R1689/oj#art_89').

references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').
