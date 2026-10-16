% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 12e2d2e0eddb34393db49f5c2cace0c3f01ab83656f0a0eac3edcfca935397ab
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred must_encourage_voluntary_codes_of_conduct/2, gloss('AI Office and Member States shall encourage drawing up of codes of conduct for voluntary application of requirements'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate_voluntary_codes_of_conduct/2, gloss('AI Office and Member States shall facilitate drawing up of codes of conduct for voluntary application of requirements'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_of_chapter_3_section_2_requirements_applies/1, gloss('voluntary application of requirements set out in Chapter III Section 2 to AI systems other than high-risk'), source('celex:32024R1689/oj#art_95').
:- pred specific_voluntary_requirement_objective/1, gloss('specific objective for voluntary code of conduct applicable to all AI systems'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct_drawn_up_by/2, gloss('entity or organisation that draws up a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_consider_sme_interests_in_codes_of_conduct/2, gloss('AI Office and Member States shall take into account interests and needs of SMEs when encouraging codes of conduct'), source('celex:32024R1689/oj#art_95').

must_encourage_voluntary_codes_of_conduct(ai_office, voluntary_application_of_chapter_3_section_2_requirements).
must_encourage_voluntary_codes_of_conduct(member_states, voluntary_application_of_chapter_3_section_2_requirements).

must_facilitate_voluntary_codes_of_conduct(ai_office, voluntary_application_of_chapter_3_section_2_requirements).
must_facilitate_voluntary_codes_of_conduct(member_states, voluntary_application_of_chapter_3_section_2_requirements).

voluntary_application_of_chapter_3_section_2_requirements_applies(S) :-
    ai_system(S),
    \+ high_risk_ai_system(S).

must_facilitate_voluntary_codes_of_conduct(ai_office, specific_voluntary_requirement(Objective)) :-
    specific_voluntary_requirement_objective(Objective).
must_facilitate_voluntary_codes_of_conduct(member_states, specific_voluntary_requirement(Objective)) :-
    specific_voluntary_requirement_objective(Objective).

specific_voluntary_requirement_objective(union_ethical_guidelines_for_trustworthy_ai).
specific_voluntary_requirement_objective(environmental_sustainability_impact_assessment_and_minimisation).
specific_voluntary_requirement_objective(ai_literacy_promotion).
specific_voluntary_requirement_objective(inclusive_and_diverse_ai_system_design).
specific_voluntary_requirement_objective(negative_impact_assessment_and_prevention_for_vulnerable_persons).

code_of_conduct_drawn_up_by(Code, provider(P)) :-
    provider(P).
code_of_conduct_drawn_up_by(Code, deployer(D)) :-
    deployer(D).
code_of_conduct_drawn_up_by(Code, representative_organisation(O)) :-
    representative_organisation(O).
code_of_conduct_drawn_up_by(Code, civil_society_organisation(O)) :-
    civil_society_organisation(O).
code_of_conduct_drawn_up_by(Code, academia(A)) :-
    academia(A).

must_consider_sme_interests_in_codes_of_conduct(ai_office, smes_including_startups).
must_consider_sme_interests_in_codes_of_conduct(member_states, smes_including_startups).

provenance(must_encourage_voluntary_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_voluntary_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_chapter_3_section_2_requirements_applies/1, 'celex:32024R1689/oj#art_95').
provenance(specific_voluntary_requirement_objective/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(must_consider_sme_interests_in_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
