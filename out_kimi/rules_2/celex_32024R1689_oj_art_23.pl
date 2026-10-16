% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 68629439cc5b4ed67e05001e71db126cfbfea610b54399f35222ed742bbb4de3
% cached     : False
% title      : Obligations of importers
:- pred must_ensure_conformity_before_placing/2, gloss('importer must ensure high-risk AI system is in conformity before placing on market'), source('celex:32024R1689/oj#art_23/par_1').
:- pred conformity_assessment_carried_out_by_provider/1, gloss('conformity assessment procedure carried out by provider'), source('celex:32024R1689/oj#art_23/par_1_a').
:- pred technical_documentation_drawn_up/1, gloss('technical documentation drawn up by provider'), source('celex:32024R1689/oj#art_23/par_1_b').
:- pred required_ce_marking_present/1, gloss('system bears required CE marking'), source('celex:32024R1689/oj#art_23/par_1_c').
:- pred eu_declaration_of_conformity_accompanies/1, gloss('EU declaration of conformity accompanies system'), source('celex:32024R1689/oj#art_23/par_1_c').
:- pred instructions_for_use_accompany/1, gloss('instructions for use accompany system'), source('celex:32024R1689/oj#art_23/par_1_c').
:- pred authorised_representative_appointed/1, gloss('provider has appointed authorised representative'), source('celex:32024R1689/oj#art_23/par_1_d').
:- pred must_not_place_non_conforming/2, gloss('importer must not place non-conforming or falsified system on market'), source('celex:32024R1689/oj#art_23/par_2').
:- pred non_conforming_or_falsified/1, gloss('system is non-conforming, falsified, or accompanied by falsified documentation'), source('celex:32024R1689/oj#art_23/par_2').
:- pred must_inform_of_risk/2, gloss('importer must inform parties when system presents risk'), source('celex:32024R1689/oj#art_23/par_2').
:- pred must_indicate_contact_details/2, gloss('importer must indicate contact details on system and packaging'), source('celex:32024R1689/oj#art_23/par_3').
:- pred must_ensure_storage_transport_compliance/2, gloss('importer must ensure storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_23/par_4').
:- pred must_keep_documentation/2, gloss('importer must keep documentation for 10 years'), source('celex:32024R1689/oj#art_23/par_5').
:- pred must_provide_information_to_authorities/2, gloss('importer must provide information to competent authorities upon request'), source('celex:32024R1689/oj#art_23/par_6').
:- pred must_ensure_technical_documentation_available/2, gloss('importer must ensure technical documentation available to authorities'), source('celex:32024R1689/oj#art_23/par_6').
:- pred must_cooperate_with_authorities/2, gloss('importer must cooperate with competent authorities'), source('celex:32024R1689/oj#art_23/par_7').

must_ensure_conformity_before_placing(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    before_placing_on_market(S),
    conformity_assessment_carried_out_by_provider(S),
    technical_documentation_drawn_up(S),
    required_ce_marking_present(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use_accompany(S),
    authorised_representative_appointed(S).

conformity_assessment_carried_out_by_provider(S) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure(S),
    provider(P),
    carried_out_by(P, S).

technical_documentation_drawn_up(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    provider(P),
    drawn_up(P, S).

required_ce_marking_present(S) :-
    high_risk_ai_system(S),
    ce_marking(S).

eu_declaration_of_conformity_accompanies(S) :-
    high_risk_ai_system(S),
    eu_declaration_of_conformity(S).

instructions_for_use_accompany(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).

authorised_representative_appointed(S) :-
    high_risk_ai_system(S),
    authorised_representative(R),
    appointed_for(R, S).

must_not_place_non_conforming(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    non_conforming_or_falsified(S),
    \+ must_ensure_conformity_before_placing(I, S).

non_conforming_or_falsified(S) :-
    high_risk_ai_system(S),
    (\+ meets_requirements(S, 'celex:32024R1689/oj#chp_3/sec_2');
     falsified(S);
     falsified_documentation(S)).

must_not_place_non_conforming(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    \+ brought_into_conformity(S).

must_inform_of_risk(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    risk_within_art_79_1(S),
    provider_of(S, P),
    authorised_representative_for(S, R),
    market_surveillance_authority(A),
    must_inform(I, risk_present(S, P, R, A)).

provider_of(S, P) :-
    high_risk_ai_system(S),
    provider(P),
    placed_or_put_into_service_by(S, P).

authorised_representative_for(S, R) :-
    high_risk_ai_system(S),
    authorised_representative(R),
    appointed_for(R, S).

must_indicate_contact_details(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    (on_system(S, contact_details(I));
     on_packaging(S, contact_details(I));
     on_accompanying_documentation(S, contact_details(I))).

must_ensure_storage_transport_compliance(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    under_responsibility(I, S),
    storage_or_transport_conditions_apply(S),
    \+ jeopardises_compliance(S, 'celex:32024R1689/oj#chp_3/sec_2').

must_keep_documentation(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    retention_period(years(10), after_placed_or_put_into_service(S)),
    (certificate_issued_by(notified_body(B), S);
     instructions_for_use(S);
     eu_declaration_of_conformity(S)).

must_provide_information_to_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    reasoned_request(A, S),
    competent_authority(A),
    must_provide_information(I, documentation_for_conformity(S, 'celex:32024R1689/oj#chp_3/sec_2', A)).

must_ensure_technical_documentation_available(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    competent_authority(A),
    must_ensure(I, technical_documentation_available_to(A, S)).

must_cooperate_with_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placed_on_market_by(I, S),
    competent_authority(A),
    action_taken(A, S),
    must_cooperate_with_authorities(I, A).

provenance(must_ensure_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(conformity_assessment_carried_out_by_provider/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_drawn_up/1, 'celex:32024R1689/oj#art_23').
provenance(required_ce_marking_present/1, 'celex:32024R1689/oj#art_23').
provenance(eu_declaration_of_conformity_accompanies/1, 'celex:32024R1689/oj#art_23').
provenance(instructions_for_use_accompany/1, 'celex:32024R1689/oj#art_23').
provenance(authorised_representative_appointed/1, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_non_conforming/2, 'celex:32024R1689/oj#art_23').
provenance(non_conforming_or_falsified/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_to_authorities/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_technical_documentation_available/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').
