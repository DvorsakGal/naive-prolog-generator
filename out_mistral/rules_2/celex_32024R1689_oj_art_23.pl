% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 4ee095fb7e4f2e871059edacbefdceedff387a4cfb439499f5a51a345cd209dd
% cached     : False
% title      : Obligations of importers
:- pred must_verify_conformity_before_placing/2, gloss('importer must verify conformity of high-risk AI system before placing on market'), source('celex:32024R1689/oj#art_23').
:- pred conformity_assessment_carried_out_by_provider/1, gloss('relevant conformity assessment procedure carried out by provider of high-risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred technical_documentation_drawn_up_by_provider/1, gloss('provider has drawn up technical documentation in accordance with Article 11 and Annex IV'), source('celex:32024R1689/oj#art_23').
:- pred system_bears_ce_marking_and_accompanied/1, gloss('system bears required CE marking and is accompanied by EU declaration of conformity and instructions for use'), source('celex:32024R1689/oj#art_23').
:- pred provider_has_appointed_authorised_representative/1, gloss('provider has appointed authorised representative in accordance with Article 22(1)'), source('celex:32024R1689/oj#art_23').
:- pred sufficient_reason_to_consider_non_conformity/2, gloss('importer has sufficient reason to consider high-risk AI system not in conformity, falsified, or accompanied by falsified documentation'), source('celex:32024R1689/oj#art_23').
:- pred must_not_place_on_market_until_conformity/2, gloss('importer must not place system on market until brought into conformity'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate_name_trade_name_or_trade_mark_and_address/2, gloss('importer must indicate name, registered trade name or registered trade mark, and contact address on system, packaging or accompanying documentation'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_storage_transport_conditions_do_not_jeopardise_compliance/2, gloss('importer must ensure storage or transport conditions do not jeopardise compliance with requirements'), source('celex:32024R1689/oj#art_23').
:- pred must_keep_copy_of_certificate_instructions_declaration/2, gloss('importer must keep copy of certificate, instructions for use, and EU declaration of conformity for 10 years after placing on market or putting into service'), source('celex:32024R1689/oj#art_23').
:- pred must_provide_information_and_documentation_upon_reasoned_request/2, gloss('importer must provide competent authorities with necessary information and documentation upon reasoned request to demonstrate conformity'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_technical_documentation_available_to_authorities/2, gloss('importer must ensure technical documentation can be made available to competent authorities'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate_with_competent_authorities/2, gloss('importer must cooperate with competent authorities in any action relating to high-risk AI system placed on market'), source('celex:32024R1689/oj#art_23').

must_verify_conformity_before_placing(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    conformity_assessment_carried_out_by_provider(S),
    technical_documentation_drawn_up_by_provider(S),
    system_bears_ce_marking_and_accompanied(S),
    provider_has_appointed_authorised_representative(S).

conformity_assessment_carried_out_by_provider(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P, S),
    conformity_assessment_procedure(CA),
    carried_out_by(CA, P).

technical_documentation_drawn_up_by_provider(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P, S),
    up_to_date(TD),
    technical_documentation(TD, S).

system_bears_ce_marking_and_accompanied(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use(IU),
    accompanies(IU, S).

provider_has_appointed_authorised_representative(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P, S),
    authorised_representative(AR),
    appointed_by(AR, P).

must_not_place_on_market_until_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_conformity(Importer, S).

sufficient_reason_to_consider_non_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    \+ in_conformity_with_requirements(S).

sufficient_reason_to_consider_non_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    falsified(S).

sufficient_reason_to_consider_non_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    accompanied_by_falsified_documentation(S).

must_inform_provider_representative_and_market_surveillance_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S),
    provider(P),
    provider(P, S),
    authorised_representative(AR),
    appointed_by(AR, P),
    market_surveillance_authority(MSA),
    must_inform_risk(Importer, risk(S, P, AR, MSA)).

must_indicate_name_trade_name_or_trade_mark_and_address(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    name_trade_name_or_trade_mark(Importer, NTN),
    contact_address(Importer, CA),
    indicated_on(NTN, S),
    indicated_on(CA, S).

must_indicate_name_trade_name_or_trade_mark_and_address(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    name_trade_name_or_trade_mark(Importer, NTN),
    contact_address(Importer, CA),
    indicated_on(NTN, packaging(S)),
    indicated_on(CA, packaging(S)).

must_indicate_name_trade_name_or_trade_mark_and_address(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    name_trade_name_or_trade_mark(Importer, NTN),
    contact_address(Importer, CA),
    indicated_on(NTN, accompanying_documentation(S)),
    indicated_on(CA, accompanying_documentation(S)).

must_ensure_storage_transport_conditions_do_not_jeopardise_compliance(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    under_responsibility_of(S, Importer),
    storage_or_transport_conditions(C),
    \+ jeopardise_compliance(C, S).

must_keep_copy_of_certificate_instructions_declaration(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market(S),
    period(years(10), after(S)),
    certificate(C),
    issued_by_notified_body(C),
    instructions_for_use(IU),
    eu_declaration_of_conformity_accompanies(S),
    keep_at_disposal(Importer, copy(C, IU, declaration(S))).

must_keep_copy_of_certificate_instructions_declaration(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    putting_into_service(S),
    period(years(10), after(S)),
    certificate(C),
    issued_by_notified_body(C),
    instructions_for_use(IU),
    eu_declaration_of_conformity_accompanies(S),
    keep_at_disposal(Importer, copy(C, IU, declaration(S))).

must_provide_information_and_documentation_upon_reasoned_request(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    from_competent_authority(Request, Authority),
    reasoned_request(Request),
    must_provide(Importer, information_and_documentation(S), Authority),
    easily_understood_language(Language),
    language(Language, Authority).

must_ensure_technical_documentation_available_to_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    technical_documentation(TD, S),
    can_be_made_available(TD, Authority),
    relevant_competent_authority(Authority).

must_cooperate_with_competent_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_by(S, Importer),
    relevant_competent_authority(Authority),
    action_taken_by(Authority, S),
    must_cooperate_with_authorities(Importer, Authority, action(S)).

provenance(must_verify_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(conformity_assessment_carried_out_by_provider/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_drawn_up_by_provider/1, 'celex:32024R1689/oj#art_23').
provenance(system_bears_ce_marking_and_accompanied/1, 'celex:32024R1689/oj#art_23').
provenance(provider_has_appointed_authorised_representative/1, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason_to_consider_non_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market_until_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform_provider_representative_and_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_name_trade_name_or_trade_mark_and_address/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_conditions_do_not_jeopardise_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_copy_of_certificate_instructions_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_and_documentation_upon_reasoned_request/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_technical_documentation_available_to_authorities/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
