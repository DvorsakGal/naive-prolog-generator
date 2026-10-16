% unit       : celex:32024R1689/oj#art_15
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : a0c9daf543fe1c63ca24c6c65655baeff108d03aa9602fa530c48258bf167d61
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cd490d6a228dc8932db75c8f4e66a371b6dafc47a686babc2a6a0e646c681d2c
% cached     : False
% title      : Accuracy, robustness and cybersecurity
:- pred must_achieve_accuracy_robustness_cybersecurity/2, gloss('high-risk AI system must achieve appropriate accuracy, robustness and cybersecurity'), source('celex:32024R1689/oj#art_15/par_1').
:- pred must_declare_accuracy_levels/2, gloss('provider must declare accuracy levels in instructions for use'), source('celex:32024R1689/oj#art_15/par_3').
:- pred must_be_resilient/2, gloss('high-risk AI system must be resilient to errors, faults and inconsistencies'), source('celex:32024R1689/oj#art_15/par_4').
:- pred must_address_feedback_loops/2, gloss('provider must address feedback loops in continuously learning systems'), source('celex:32024R1689/oj#art_15/par_4').
:- pred must_be_cybersecure/2, gloss('high-risk AI system must be resilient to unauthorised exploitation'), source('celex:32024R1689/oj#art_15/par_5').
:- pred must_include_ai_specific_security_measures/2, gloss('provider must include measures against AI-specific vulnerabilities'), source('celex:32024R1689/oj#art_15/par_5').

must_achieve_accuracy_robustness_cybersecurity(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_achieve_accuracy_robustness_cybersecurity(_, S).

must_declare_accuracy_levels(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_declare_accuracy_levels(_, S).

must_be_resilient(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_be_resilient(_, S).

must_address_feedback_loops(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_address_feedback_loops(_, S).

must_be_cybersecure(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_be_cybersecure(_, S).

must_include_ai_specific_security_measures(Provider, S) :-
    provider(Provider),
    ai_system(S),
    placing_on_market(S),
    \+ must_include_ai_specific_security_measures(_, S).

provenance(must_achieve_accuracy_robustness_cybersecurity/2, 'celex:32024R1689/oj#art_15/par_1').
provenance(must_declare_accuracy_levels/2, 'celex:32024R1689/oj#art_15/par_3').
provenance(must_be_resilient/2, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_address_feedback_loops/2, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_be_cybersecure/2, 'celex:32024R1689/oj#art_15/par_5').
provenance(must_include_ai_specific_security_measures/2, 'celex:32024R1689/oj#art_15/par_5').

references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').
