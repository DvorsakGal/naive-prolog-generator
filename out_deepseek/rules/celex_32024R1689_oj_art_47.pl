% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3478ae447013123656df7084b7775a2d93261679d12879cf137ac822959ca8f0
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_eu_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for high-risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_eu_declaration_of_conformity/2, gloss('provider must keep EU declaration of conformity at disposal of authorities'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_copy_of_eu_declaration_of_conformity/2, gloss('provider must submit copy of EU declaration of conformity upon request'), source('celex:32024R1689/oj#art_47').
:- pred must_state_compliance_in_eu_declaration_of_conformity/2, gloss('EU declaration of conformity must state compliance with Section 2 requirements'), source('celex:32024R1689/oj#art_47').
:- pred must_contain_information_in_eu_declaration_of_conformity/2, gloss('EU declaration of conformity must contain Annex V information'), source('celex:32024R1689/oj#art_47').
:- pred must_translate_eu_declaration_of_conformity/2, gloss('EU declaration of conformity must be translated for relevant authorities'), source('celex:32024R1689/oj#art_47').
:- pred must_draw_up_single_eu_declaration_of_conformity/2, gloss('single EU declaration of conformity for multiple Union legislation'), source('celex:32024R1689/oj#art_47').
:- pred must_assume_responsibility_for_compliance/2, gloss('provider assumes responsibility for compliance by drawing up declaration'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_eu_declaration_of_conformity_up_to_date/2, gloss('provider must keep EU declaration of conformity up-to-date'), source('celex:32024R1689/oj#art_47').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_47').

must_draw_up_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_keep_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_submit_copy_of_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System),
    national_competent_authority(Authority),
    request(Authority, copy_of_eu_declaration_of_conformity(System)).

must_state_compliance_in_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_contain_information_in_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_translate_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System),
    national_competent_authority(Authority),
    placed_on_market_or_made_available_in(System, MemberState),
    authority_of(Authority, MemberState).

must_draw_up_single_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System).

must_assume_responsibility_for_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

must_keep_eu_declaration_of_conformity_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).

provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_of_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_state_compliance_in_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_contain_information_in_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_translate_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_single_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_eu_declaration_of_conformity_up_to_date/2, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
