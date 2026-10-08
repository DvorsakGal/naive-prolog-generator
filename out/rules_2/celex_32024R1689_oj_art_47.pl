% unit       : celex:32024R1689/oj#art_47
% title      : EU declaration of conformity
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 7fadfd96f902a1f1f2fdf18fd208cf3c2f73d635986d46663fe9b6762c23cb91
% model      : gpt-oss:120b-cloud
% prompt sha : b32264287e25e12cc73fbfccfc09f331fbef7d0651366c8b7eea3661500aa0bb
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_draw_up_declaration_of_conformity/2, gloss('provider must draw up EU declaration of conformity for a high‑risk AI system'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_at_disposal/2, gloss('provider must keep the EU declaration of conformity at the disposal of national competent authorities for ten years after placement or putting into service'), source('celex:32024R1689/oj#art_47').
:- pred must_identify_system_in_declaration/2, gloss('provider must identify the high‑risk AI system in the EU declaration of conformity'), source('celex:32024R1689/oj#art_47').
:- pred must_submit_copy_on_request/2, gloss('provider must submit a copy of the EU declaration of conformity to the national competent authority upon request'), source('celex:32024R1689/oj#art_47').
:- pred must_state_meets_requirements/2, gloss('EU declaration of conformity must state that the high‑risk AI system meets the requirements set out in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_47').
:- pred must_contain_information/2, gloss('EU declaration of conformity must contain the information set out in Annex 5'), source('celex:32024R1689/oj#art_47').
:- pred must_translate_declaration/2, gloss('EU declaration of conformity must be translated into a language easily understood by the national competent authorities of the Member States where the system is placed on the market or made available'), source('celex:32024R1689/oj#art_47').
:- pred must_assume_responsibility/2, gloss('by drawing up the EU declaration of conformity, the provider assumes responsibility for compliance with the requirements'), source('celex:32024R1689/oj#art_47').
:- pred must_keep_declaration_up_to_date/2, gloss('provider must keep the EU declaration of conformity up‑to‑date as appropriate'), source('celex:32024R1689/oj#art_47').

must_draw_up_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_keep_declaration_at_disposal(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_identify_system_in_declaration(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_submit_copy_on_request(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_state_meets_requirements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_contain_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_translate_declaration(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_assume_responsibility(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_keep_declaration_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(must_identify_system_in_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_copy_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_state_meets_requirements/2, 'celex:32024R1689/oj#art_47').
provenance(must_contain_information/2, 'celex:32024R1689/oj#art_47').
provenance(must_translate_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').

references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').
