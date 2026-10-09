% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7504247b0ba9e5a10608e9b0a94468cc45e45e0a2a533d378bf99084243cbe43
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_95').
:- pred organisation/1, gloss('Organisation representing providers or deployers of AI systems'), source('celex:32024R1689/oj#art_95').

must_encourage(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    ai_office(Actor).
must_encourage(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    member_state(Actor).

must_facilitate(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    ai_office(Actor).
must_facilitate(Actor, drawing_up_codes_of_conduct(voluntary_application_to_ai_systems_except(high_risk_ai_system), requirements(chp_3_sec_2))) :-
    member_state(Actor).

must_facilitate(Actor, drawing_up_codes_of_conduct(voluntary_application_by_deployers, specific_requirements, all_ai_systems, objectives_and_kpis(elements([ethical_guidelines, environmental_sustainability, ai_literacy, inclusive_design, vulnerable_persons]))))) :-
    ai_office(Actor).
must_facilitate(Actor, drawing_up_codes_of_conduct(voluntary_application_by_deployers, specific_requirements, all_ai_systems, objectives_and_kpis(elements([ethical_guidelines, environmental_sustainability, ai_literacy, inclusive_design, vulnerable_persons]))))) :-
    member_state(Actor).

permitted_drawing_up_codes_of_conduct(Actor) :-
    provider(Actor).
permitted_drawing_up_codes_of_conduct(Actor) :-
    deployer(Actor).
permitted_drawing_up_codes_of_conduct(Actor) :-
    organisation(Actor).

must_take_into_account(Actor, interests_and_needs_of_smes) :-
    ai_office(Actor).
must_take_into_account(Actor, interests_and_needs_of_smes) :-
    member_state(Actor).

provenance(must_encourage/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
