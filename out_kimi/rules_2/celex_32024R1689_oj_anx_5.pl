% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 6966304995dacbbfb1e8642b107353a839b257bb05208d1ac0a92c74503dcd9b
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity_content/2, gloss('content required in EU declaration of conformity'), source('celex:32024R1689/oj#anx_5').

eu_declaration_of_conformity_content(D, ai_system_name_and_reference(Name, Type, Ref)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    name(S, Name),
    type(S, Type),
    additional_reference(S, Ref).

eu_declaration_of_conformity_content(D, provider_name_and_address(P)) :-
    eu_declaration_of_conformity(D),
    provider(P).
eu_declaration_of_conformity_content(D, authorised_representative_name_and_address(R)) :-
    eu_declaration_of_conformity(D),
    authorised_representative(R).

eu_declaration_of_conformity_content(D, sole_responsibility_statement(P)) :-
    eu_declaration_of_conformity(D),
    provider(P).

eu_declaration_of_conformity_content(D, conformity_statement(S, Reg)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    Reg = 'celex:32024R1689/oj'.
eu_declaration_of_conformity_content(D, conformity_statement(S, OtherLaw)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    other_relevant_union_law(OtherLaw).

eu_declaration_of_conformity_content(D, personal_data_compliance_statement(S)) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    personal_data_processing_involved(S).

eu_declaration_of_conformity_content(D, harmonised_standards_reference(Std)) :-
    eu_declaration_of_conformity(D),
    harmonised_standard(Std).
eu_declaration_of_conformity_content(D, common_specification_reference(Spec)) :-
    eu_declaration_of_conformity(D),
    common_specification(Spec).

eu_declaration_of_conformity_content(D, notified_body_details(B, Procedure, Certificate)) :-
    eu_declaration_of_conformity(D),
    notified_body(B),
    conformity_assessment_procedure(Procedure),
    issued_certificate(Certificate, B).

eu_declaration_of_conformity_content(D, issue_details(Place, Date, Signer, Function, OnBehalfOf)) :-
    eu_declaration_of_conformity(D),
    place_of_issue(D, Place),
    date_of_issue(D, Date),
    signer(D, Signer),
    signer_function(D, Function),
    signer_on_behalf_of(D, OnBehalfOf).

provenance(eu_declaration_of_conformity_content/2, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
