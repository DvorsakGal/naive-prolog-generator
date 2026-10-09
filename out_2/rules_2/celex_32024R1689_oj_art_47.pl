% unit       : celex:32024R1689/oj#art_47
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6d756c7fec26777c364c601eca0694e1effd43b111b68301aecf4d7a7ef309c6
% cached     : False
% title      : EU declaration of conformity
:- pred must_draw_up_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for a high‑risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_of_conformity/2, gloss('provider must keep the EU declaration of conformity for 10 years after placement or service'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_copy_declaration_of_conformity/2, gloss('provider must submit a copy of the EU declaration of conformity to the national competent authority upon request'), source('celex:32024R1689/oj#art_47').
:- pred required_meets_requirements_art_31/1, gloss('EU declaration of conformity must state that the high‑risk AI system meets the requirements of article 31'), source('celex:32024R1689/oj#art_47').
:- pred required_information_annex_5/1, gloss('EU declaration of conformity must contain the information set out in annex 5'), source('celex:32024R1689/oj#art_47').
:- pred required_translation/1, gloss('EU declaration of conformity must be translated into a language easily understood by the national competent authorities'), source('celex:32024R1689/oj#art_47').
:- pred must_draw_up_single_declaration_of_conformity/2, gloss('provider must draw up a single EU declaration of conformity covering all applicable Union harmonisation legislation'), source('celex:32024R1689/oj#art_47').
:- pred must_assume_responsibility_declaration_of_conformity/2, gloss('provider assumes responsibility for compliance by drawing up the EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_up_to_date_declaration_of_conformity/2, gloss('provider must keep the EU declaration of conformity up‑to‑date'), source('celex:32024R1689/oj#art_47').
:- pred after_placement_or_service/1, gloss('event occurs after the AI system has been placed on the market or put into service'), source('celex:32024R1689/oj#art_47').
:- pred years/1, gloss('duration in years'), source('celex:32024R1689/oj#art_47').

must_draw_up_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_keep_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    years(10),
    after_placement_or_service(S).

must_submit_copy_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    national_competent_authority(_).

required_meets_requirements_art_31(declaration_of_conformity(S)) :-
    high_risk_ai_system(S).

required_information_annex_5(declaration_of_conformity(S)) :-
    high_risk_ai_system(S).

required_translation(declaration_of_conformity(S)) :-
    high_risk_ai_system(S),
    member_state(MS),
    member_state(MS).

must_draw_up_single_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).

must_assume_responsibility_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_keep_up_to_date_declaration_of_conformity(Provider, declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

after_placement_or_service(S) :-
    placing_on_market(S).
after_placement_or_service(S) :-
    putting_into_service(S).

years(10).

provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(required_meets_requirements_art_31/1, 'celex:32024R1689/oj#art_47').
provenance(required_information_annex_5/1, 'celex:32024R1689/oj#art_47').
provenance(required_translation/1, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_single_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_up_to_date_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(after_placement_or_service/1, 'celex:32024R1689/oj#art_47').
provenance(years/1, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
