% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4872e1b328409db67a304a6be15599f3f0159eb75d18b3ffafd8e26c1fc2c210
% cached     : False
% title      : Obligations of importers
:- pred must_ensure_conformity/2, gloss('importer must ensure high-risk AI system is in conformity before placing on market'), source('celex:32024R1689/oj#art_23/par_1').
:- pred conformity_verification/2, gloss('specific verification checks importer must carry out'), source('celex:32024R1689/oj#art_23/par_1').
:- pred must_not_place_on_market/2, gloss('importer must not place non-conforming or falsified system on market'), source('celex:32024R1689/oj#art_23/par_2').
:- pred must_inform/2, gloss('importer must inform relevant parties about risk'), source('celex:32024R1689/oj#art_23/par_2').
:- pred must_indicate_contact_details/2, gloss('importer must indicate contact details on system or packaging'), source('celex:32024R1689/oj#art_23/par_3').
:- pred must_ensure_storage_transport_conditions/2, gloss('importer must ensure storage or transport do not jeopardise compliance'), source('celex:32024R1689/oj#art_23/par_4').
:- pred must_keep_documentation/2, gloss('importer must keep documentation for specified period'), source('celex:32024R1689/oj#art_23/par_5').
:- pred must_provide_information/2, gloss('importer must provide information to competent authorities upon request'), source('celex:32024R1689/oj#art_23/par_6').
:- pred must_cooperate/2, gloss('importer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_23/par_7').

% Article 23(1) - Before placing on market, importer must ensure conformity by verifying specific items
must_ensure_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    before(placing_on_market(Importer, S)),
    conformity_verification(Importer, S).

% Verification checks under Article 23(1)
conformity_verification(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    conformity_assessment_procedure_carried_out(S),
    technical_documentation_drawn_up(S),
    required_ce_marking_and_documentation(S),
    authorised_representative_appointed(S).

conformity_assessment_procedure_carried_out(S) :-
    high_risk_ai_system(S),
    conformity_assessment(CA),
    carried_out_by(CA, Provider),
    provider(Provider).

technical_documentation_drawn_up(S) :-
    high_risk_ai_system(S),
    provider(Provider),
    drawn_up_by(technical_documentation(S), Provider).

required_ce_marking_and_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    eu_declaration_of_conformity(S),
    instructions_for_use(S).

authorised_representative_appointed(S) :-
    high_risk_ai_system(S),
    provider(Provider),
    appointed(authorised_representative(R), Provider).

% Article 23(2) - Do not place on market if non-conforming, falsified, or falsified documentation
must_not_place_on_market(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    (not_in_conformity(S); falsified(S); falsified_documentation(S)),
    \+ brought_into_conformity(S).

% Article 23(2) - Inform relevant parties when risk present
must_inform(Importer, risk(S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S, meaning_of_art_79_par_1),
    inform_parties(Importer, [provider_of(S), authorised_representative_of(S), market_surveillance_authorities]).

% Article 23(3) - Indicate contact details
must_indicate_contact_details(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    indicate(Importer, name(Importer), S),
    indicate(Importer, registered_trade_name_or_mark(Importer), S),
    indicate(Importer, contact_address(Importer), S),
    on_system_or_packaging_or_documentation(S).

% Article 23(4) - Ensure storage/transport conditions don't jeopardise compliance
must_ensure_storage_transport_conditions(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    under_responsibility(Importer, S),
    applicable(storage_or_transport_conditions),
    \+ jeopardise_compliance(storage_or_transport_conditions, requirements_of_chapter_3_section_2).

% Article 23(5) - Keep documentation for 10 years
must_keep_documentation(Importer, documentation_for(S, years(10))) :-
    importer(Importer),
    high_risk_ai_system(S),
    after(placing_on_market(S); putting_into_service(S)),
    keep(Importer, certificate(S)),
    keep(Importer, instructions_for_use(S)),
    keep(Importer, eu_declaration_of_conformity(S)),
    where_applicable(certificate(S), notified_body_issued).

% Article 23(6) - Provide information to competent authorities upon request
must_provide_information(Importer, information_to(Authority, S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    competent_authority(Authority),
    reasoned_request(Authority),
    provide(Importer, necessary_information_and_documentation, Authority),
    in_easily_understood_language(Authority),
    ensure_technical_documentation_available(Importer, Authority).

% Article 23(7) - Cooperate with competent authorities
must_cooperate(Importer, action_of(Authority, S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_by(Importer, S),
    competent_authority(Authority),
    action_taken(Authority, S),
    cooperate(Importer, Authority),
    in_particular(reduce_and_mitigate_risks(S)).

% Provenance
provenance(must_ensure_conformity/2, 'celex:32024R1689/oj#art_23/par_1').
provenance(conformity_verification/2, 'celex:32024R1689/oj#art_23/par_1').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23/par_2').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23/par_2').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_23/par_3').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_23/par_4').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23/par_5').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_23/par_6').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23/par_7').

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
