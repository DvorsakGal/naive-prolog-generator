% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6a4f45c2aee03236421fefa25cbb0696a6e9ceb649b7e208be3d68ce0a2c6989
% cached     : False
% title      : Obligations of importers
:- pred must_ensure_conformity/2, gloss('importer must ensure high-risk AI system is in conformity before placing on market'), source('celex:32024R1689/oj#art_23').
:- pred must_not_place_on_market/2, gloss('importer must not place non-conforming high-risk AI system on market'), source('celex:32024R1689/oj#art_23').
:- pred must_inform/2, gloss('importer must inform provider, authorised representative and market surveillance authorities of risk'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate_identity/2, gloss('importer must indicate name, trade name or mark and contact address on system'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_storage_conditions/2, gloss('importer must ensure storage and transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred must_keep_documentation/2, gloss('importer must keep certificate, instructions and EU declaration of conformity for 10 years'), source('celex:32024R1689/oj#art_23').
:- pred must_provide_information/2, gloss('importer must provide information and documentation to competent authorities on reasoned request'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate/2, gloss('importer must cooperate with competent authorities on actions relating to high-risk AI system'), source('celex:32024R1689/oj#art_23').

% Paragraph 1
must_ensure_conformity(I, S) :-
    importer(I),
    ai_system(S),
    placing_on_market(S),
    conformity_assessment_carried_out(S),
    technical_documentation_drawn_up(S),
    ce_marking(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use_accompanies(S),
    authorised_representative_appointed(S).

conformity_assessment_carried_out(S) :-
    conformity_assessment(A),
    provider(P),
    carried_out_by(P, A, S).

technical_documentation_drawn_up(S) :-
    provider(P),
    drawn_up(P, technical_documentation(S)).

eu_declaration_of_conformity_accompanies(S) :-
    accompanied_by(S, eu_declaration_of_conformity).

instructions_for_use_accompanies(S) :-
    accompanied_by(S, instructions_for_use).

authorised_representative_appointed(S) :-
    provider(P),
    authorised_representative(R),
    appointed(P, R, S).

% Paragraph 2
must_not_place_on_market(I, S) :-
    importer(I),
    ai_system(S),
    sufficient_reason_to_consider_nonconformity(I, S),
    \+ brought_into_conformity(S).

must_inform(I, risk(S)) :-
    importer(I),
    ai_system(S),
    risk(S),
    provider(P),
    authorised_representative(R),
    market_surveillance_authority(M),
    inform(I, P, risk(S)),
    inform(I, R, risk(S)),
    inform(I, M, risk(S)).

% Paragraph 3
must_indicate_identity(I, S) :-
    importer(I),
    ai_system(S),
    indicate_on(I, S, identity(I)),
    indicate_on(I, packaging(S), identity(I)),
    indicate_on(I, accompanying_documentation(S), identity(I)).

% Paragraph 4
must_ensure_storage_conditions(I, S) :-
    importer(I),
    ai_system(S),
    under_responsibility(I, S),
    storage_or_transport_conditions_do_not_jeopardise_compliance(S).

% Paragraph 5
must_keep_documentation(I, S) :-
    importer(I),
    ai_system(S),
    keep_for(I, documentation(S), period(years(10), after(placing_on_market_or_putting_into_service(S)))).

% Paragraph 6
must_provide_information(I, S) :-
    importer(I),
    ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, information(S)),
    provide(I, A, information_and_documentation(S)),
    ensure_technical_documentation_available(I, A, S).

% Paragraph 7
must_cooperate(I, S) :-
    importer(I),
    ai_system(S),
    national_competent_authority(A),
    action_relating_to(A, S),
    cooperate(I, A, action_relating_to(A, S)).

% Provenance
provenance(must_ensure_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23').

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
