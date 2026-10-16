% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 761d64b9b27471567e95d8b524f206da2ba2ff8d0348986a5d16ed87cdc3c9b9
% cached     : False
% title      : Obligations of importers
:- pred must_verify_conformity/2, gloss('importer must verify conformity of high-risk AI system before placing on market'), source('celex:32024R1689/oj#art_23').
:- pred must_not_place_on_market/2, gloss('importer must not place non-conforming high-risk AI system on market'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate_identity/2, gloss('importer must indicate name and address on high-risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_storage_conditions/2, gloss('importer must ensure storage and transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred must_keep_documentation/2, gloss('importer must keep documentation for 10 years after placing on market or putting into service'), source('celex:32024R1689/oj#art_23').
:- pred must_provide_information/2, gloss('importer must provide information and documentation to competent authorities upon reasoned request'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate_with_authorities/2, gloss('importer must cooperate with competent authorities on actions relating to high-risk AI system'), source('celex:32024R1689/oj#art_23').

% Article 23(1)
must_verify_conformity(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placing_on_market(S),
    conformity_assessment_carried_out(S),
    technical_documentation_drawn_up(S),
    bears_ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    authorised_representative_appointed(S).

conformity_assessment_carried_out(S) :-
    high_risk_ai_system(S),
    conformity_assessment(assessment(S)).

technical_documentation_drawn_up(S) :-
    high_risk_ai_system(S),
    provider(P),
    technical_documentation(drawn_up(P, S)).

bears_ce_marking(S) :-
    high_risk_ai_system(S),
    ce_marking(S).

accompanied_by_eu_declaration_of_conformity(S) :-
    high_risk_ai_system(S),
    contains_eu_declaration_of_conformity(S).

accompanied_by_instructions_for_use(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).

authorised_representative_appointed(S) :-
    high_risk_ai_system(S),
    provider(P),
    authorised_representative(R),
    appointed(P, R, S).

% Article 23(2)
must_not_place_on_market(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_nonconformity(I, S),
    \+ brought_into_conformity(S).

must_immediately_inform(I, nonconformity(S)) :-
    importer(I),
    high_risk_ai_system(S),
    risk_presenting_system(S),
    provider(P),
    authorised_representative(R),
    market_surveillance_authority(A).

% Article 23(3)
must_indicate_identity(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    indicates_name_and_address(I, S).

% Article 23(4)
must_ensure_storage_conditions(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    under_responsibility(I, S),
    storage_or_transport_conditions_do_not_jeopardise_compliance(S).

% Article 23(5)
must_keep_documentation(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    keeps_for(I, period(years(10), after(placing_on_market_or_putting_into_service(S))), documentation(S)).

% Article 23(6)
must_provide_information(I, request(Authority, S)) :-
    importer(I),
    high_risk_ai_system(S),
    national_competent_authority(Authority),
    reasoned_request(Authority, S),
    provides_information_and_documentation(I, Authority, S).

must_provide_information(I, technical_documentation(Authority, S)) :-
    importer(I),
    high_risk_ai_system(S),
    national_competent_authority(Authority),
    ensures_technical_documentation_available(I, Authority, S).

% Article 23(7)
must_cooperate_with_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    national_competent_authority(Authority),
    action_by_authority(Authority, S),
    cooperates(I, Authority, S).

% Provenance
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_23').

% References
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').
