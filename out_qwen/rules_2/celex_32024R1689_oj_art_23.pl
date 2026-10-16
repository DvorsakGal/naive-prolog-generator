% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : ae2e732a7551ebbc926fe364295cd88fc727b163f4d9e715ff44c1841d48fe1f
% cached     : False
% title      : Obligations of importers
:- pred importer_verification_completed/1, gloss('importer has verified conformity assessment, documentation, CE marking and authorised representative'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate_importer_details/2, gloss('importer must indicate name and contact address on system or packaging'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_storage_transport_compliance/2, gloss('importer must ensure storage and transport do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred must_keep_importer_documentation/2, gloss('importer must keep certificate, instructions and declaration of conformity for 10 years'), source('celex:32024R1689/oj#art_23').
:- pred must_provide_conformity_information/2, gloss('importer must provide information to demonstrate conformity upon reasoned request'), source('celex:32024R1689/oj#art_23').

provenance(importer_verification_completed/1, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_importer_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_importer_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_conformity_information/2, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').

importer_verification_completed(S) :-
    high_risk_ai_system(S),
    conformity_assessment_carried_out(S),
    required_technical_documentation_content(S),
    ce_marking(S),
    instructions_for_use(S).

must_indicate_importer_details(I, S) :-
    importer(I),
    high_risk_ai_system(S).

must_ensure_storage_transport_compliance(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).

must_keep_importer_documentation(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placing_on_market(S).

must_provide_conformity_information(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    reasoned_request(_, S),
    requirements_of_chapter_3_section_2(S).

must_inform_of_risk(I, nonconformity(S)) :-
    importer(I),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(I, S),
    presents_risk(S).

must_cooperate_with_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placing_on_market(S).
