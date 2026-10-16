% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 546d6fc51df13071e43f8fa9e0ad75df66b0aad061f2bf45e72ed3169f69bb1b
% cached     : False
% title      : Obligations of importers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_23').
:- pred conformity_assessment_procedure/1, gloss('conformity assessment procedure carried out by provider'), source('celex:32024R1689/oj#art_23').
:- pred technical_documentation_drawn_up/1, gloss('provider has drawn up technical documentation'), source('celex:32024R1689/oj#art_23').
:- pred ce_marking_borne/1, gloss('system bears required CE marking'), source('celex:32024R1689/oj#art_23').
:- pred eu_declaration_of_conformity_accompanies/1, gloss('system accompanied by EU declaration of conformity'), source('celex:32024R1689/oj#art_23').
:- pred instructions_for_use_accompany/1, gloss('system accompanied by instructions for use'), source('celex:32024R1689/oj#art_23').
:- pred authorised_representative_appointed/1, gloss('provider has appointed authorised representative'), source('celex:32024R1689/oj#art_23').
:- pred sufficient_reason_to_consider_nonconformity/1, gloss('importer has sufficient reason to consider system nonconformant'), source('celex:32024R1689/oj#art_23').
:- pred falsified_ai_system/1, gloss('high-risk AI system is falsified'), source('celex:32024R1689/oj#art_23').
:- pred falsified_documentation/1, gloss('documentation accompanying system is falsified'), source('celex:32024R1689/oj#art_23').
:- pred presents_risk/1, gloss('high-risk AI system presents a risk'), source('celex:32024R1689/oj#art_23').
:- pred brought_into_conformity/1, gloss('system has been brought into conformity'), source('celex:32024R1689/oj#art_23').
:- pred importer_indicates_contact_details/1, gloss('importer indicates name, trade name or mark, and address'), source('celex:32024R1689/oj#art_23').
:- pred storage_or_transport_conditions_jeopardise_compliance/1, gloss('storage or transport conditions jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred certificate_issued_by_notified_body/1, gloss('certificate issued by notified body'), source('celex:32024R1689/oj#art_23').
:- pred reasoned_request/1, gloss('reasoned request from competent authority'), source('celex:32024R1689/oj#art_23').
:- pred necessary_information_and_documentation/1, gloss('information and documentation necessary to demonstrate conformity'), source('celex:32024R1689/oj#art_23').
:- pred language_easily_understood/1, gloss('language easily understood by authorities'), source('celex:32024R1689/oj#art_23').
:- pred technical_documentation_available/1, gloss('technical documentation can be made available to authorities'), source('celex:32024R1689/oj#art_23').
:- pred cooperate_with_competent_authorities/1, gloss('importer cooperates with competent authorities'), source('celex:32024R1689/oj#art_23').
:- pred action_by_competent_authorities/1, gloss('action taken by competent authorities'), source('celex:32024R1689/oj#art_23').
:- pred reduce_and_mitigate_risks/1, gloss('action to reduce and mitigate risks'), source('celex:32024R1689/oj#art_23').

% Article 23(1): Before placing on market, importer must ensure conformity by verifying four conditions
must_ensure_conformity_before_placing(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    before_placing_on_market(S),
    must_verify_conformity_assessment_carried_out(Importer, S),
    must_verify_technical_documentation_drawn_up(Importer, S),
    must_verify_ce_marking_and_declaration(Importer, S),
    must_verify_authorised_representative_appointed(Importer, S).

must_verify_conformity_assessment_carried_out(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S),
    conformity_assessment_procedure(C),
    carried_out_by(C, P).

must_verify_technical_documentation_drawn_up(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S),
    technical_documentation_drawn_up(S).

must_verify_ce_marking_and_declaration(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    ce_marking_borne(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use_accompany(S).

must_verify_authorised_representative_appointed(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S),
    authorised_representative_appointed(S).

% Article 23(2): Non-conformity, falsification, or falsified documentation -> must not place on market until brought into conformity
must_not_place_until_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    nonconformity_condition(S),
    \+ brought_into_conformity(S).

nonconformity_condition(S) :-
    high_risk_ai_system(S),
    sufficient_reason_to_consider_nonconformity(S).
nonconformity_condition(S) :-
    high_risk_ai_system(S),
    falsified_ai_system(S).
nonconformity_condition(S) :-
    high_risk_ai_system(S),
    falsified_documentation(S).

must_inform_risk(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S),
    must_inform(Importer, risk(S)).

must_inform(Importer, risk(S)) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S),
    provider(P),
    provides(P, S),
    informs(Importer, P, risk(S)),
    authorised_representative_appointed(S),
    informs(Importer, authorised_representative, risk(S)),
    market_surveillance_authority(A),
    informs(Importer, A, risk(S)).

% Article 23(3): Importer must indicate name, trade name/mark, and address
must_indicate_contact_details(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    importer_indicates_contact_details(S).

% Article 23(4): Importer must ensure storage/transport conditions do not jeopardise compliance
must_ensure_storage_transport_conditions(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    under_responsibility_of(Importer, S),
    \+ storage_or_transport_conditions_jeopardise_compliance(S).

% Article 23(5): Importer must keep copy of certificate, instructions, and EU declaration for 10 years
must_keep_records(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_for(Importer, years(10), records(S)).

records(S) :-
    certificate_issued_by_notified_body(S).
records(S) :-
    instructions_for_use(S).
records(S) :-
    eu_declaration_of_conformity(S).

% Article 23(6): Importer must provide information and documentation upon reasoned request
must_provide_information_upon_request(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    reasoned_request(R),
    from_competent_authority(R, A),
    must_provide(Importer, A, necessary_information_and_documentation(S)),
    language_easily_understood(S),
    technical_documentation_available(S).

% Article 23(7): Importer must cooperate with competent authorities
must_cooperate_with_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_by(Importer, S),
    action_by_competent_authorities(A, S),
    cooperate_with_competent_authorities(Importer, A),
    reduce_and_mitigate_risks(S).

% Helper predicates
before_placing_on_market(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).

placed_on_market_or_put_into_service(S) :-
    high_risk_ai_system(S),
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    high_risk_ai_system(S),
    putting_into_service(S).

placed_on_market_by(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    places_on_market(Importer, S).

under_responsibility_of(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S).

provides(P, S) :-
    provider(P),
    high_risk_ai_system(S).

carried_out_by(C, P) :-
    conformity_assessment_procedure(C),
    provider(P).

from_competent_authority(R, A) :-
    reasoned_request(R),
    national_competent_authority(A).

informs(Importer, Party, Information) :-
    importer(Importer),
    informs_about(Importer, Party, Information).

cooperate_with_competent_authorities(Importer, A) :-
    importer(Importer),
    national_competent_authority(A).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_drawn_up/1, 'celex:32024R1689/oj#art_23').
provenance(ce_marking_borne/1, 'celex:32024R1689/oj#art_23').
provenance(eu_declaration_of_conformity_accompanies/1, 'celex:32024R1689/oj#art_23').
provenance(instructions_for_use_accompany/1, 'celex:32024R1689/oj#art_23').
provenance(authorised_representative_appointed/1, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason_to_consider_nonconformity/1, 'celex:32024R1689/oj#art_23').
provenance(falsified_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(falsified_documentation/1, 'celex:32024R1689/oj#art_23').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_23').
provenance(brought_into_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(importer_indicates_contact_details/1, 'celex:32024R1689/oj#art_23').
provenance(storage_or_transport_conditions_jeopardise_compliance/1, 'celex:32024R1689/oj#art_23').
provenance(certificate_issued_by_notified_body/1, 'celex:32024R1689/oj#art_23').
provenance(reasoned_request/1, 'celex:32024R1689/oj#art_23').
provenance(necessary_information_and_documentation/1, 'celex:32024R1689/oj#art_23').
provenance(language_easily_understood/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_available/1, 'celex:32024R1689/oj#art_23').
provenance(cooperate_with_competent_authorities/1, 'celex:32024R1689/oj#art_23').
provenance(action_by_competent_authorities/1, 'celex:32024R1689/oj#art_23').
provenance(reduce_and_mitigate_risks/1, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_conformity_assessment_carried_out/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_technical_documentation_drawn_up/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(must_verify_authorised_representative_appointed/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_until_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(nonconformity_condition/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform_risk/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_contact_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_records/2, 'celex:32024R1689/oj#art_23').
provenance(records/1, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_upon_request/2, 'celex:32024R1689/oj#art_23').
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
