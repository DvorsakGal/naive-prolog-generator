% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8200b06f73f7914588d1a7f6223bf9e567c4b7db017486c763efdf2e2b8f9ce1
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_22').
:- pred established_in_third_country/1, gloss('entity established in a third country'), source('celex:32024R1689/oj#art_22').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred mandate_covers_required_tasks/1, gloss('written mandate covers all statutory tasks'), source('celex:32024R1689/oj#art_22').
:- pred mandate/3, gloss('written mandate between provider and authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred considers_provider_violating_regulation/2, gloss('representative considers provider to act contrary to obligations'), source('celex:32024R1689/oj#art_22').
:- pred valid_authorised_representative_mandate/3, gloss('valid appointment and mandate under Article 22'), source('celex:32024R1689/oj#art_22').
:- pred must_appoint(Actor, Object), gloss('duty to appoint an authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred must_enable(Actor, Object), gloss('duty to enable representative to perform tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_perform(Actor, Object), gloss('duty to perform tasks specified in the mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_provide(Actor, Object), gloss('duty to provide mandate copy or documentation'), source('celex:32024R1689/oj#art_22').
:- pred must_keep_at_disposal(Actor, Object), gloss('duty to keep compliance documents at disposal'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate(Actor, Object), gloss('duty to cooperate with competent authorities'), source('celex:32024R1689/oj#art_22').
:- pred must_register(Actor, Object), gloss('duty to comply with registration obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_ensure(Actor, Object), gloss('duty to ensure accuracy of registration information'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate(Actor, Object), gloss('duty to terminate the mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_inform(Actor, Object), gloss('duty to inform authorities of mandate termination'), source('celex:32024R1689/oj#art_22').

% Paragraph 1: Provider established in a third country must appoint an authorised representative established in the Union
must_appoint(Provider, authorised_representative(Rep, System)) :-
    provider(Provider),
    established_in_third_country(Provider),
    high_risk_ai_system(System),
    authorised_representative(Rep),
    established_in_union(Rep).

% Paragraph 2: Provider must enable authorised representative to perform tasks
must_enable(Provider, authorised_representative(Rep, Mandate)) :-
    provider(Provider),
    authorised_representative(Rep),
    mandate(Provider, Rep, Mandate).

% Paragraph 3: Authorised representative must perform mandate tasks
must_perform(Rep, tasks(Mandate)) :-
    authorised_representative(Rep),
    mandate(_Provider, Rep, Mandate).

must_provide(Rep, copy_of_mandate(Authority)) :-
    authorised_representative(Rep),
    market_surveillance_authority(Authority).

% Paragraph 3(b): Keep at disposal of authorities for 10 years
must_keep_at_disposal(Rep, documentation(System, period(years(10)))) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    mandate(_Provider, Rep, mandate_for(System)).

% Paragraph 3(c): Provide competent authority with documentation upon request
must_provide(Rep, compliance_documentation(System, Authority)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Paragraph 3(d): Cooperate with competent authorities
must_cooperate(Rep, competent_authority(Authority, System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Paragraph 3(e): Comply with registration or ensure accuracy
must_register(Rep, system(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).

must_ensure(Rep, registration_info_correct(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).

% Paragraph 4: Obligation to terminate mandate if provider violates regulation
must_terminate(Rep, mandate(Provider)) :-
    authorised_representative(Rep),
    provider(Provider),
    mandate(Provider, Rep, _Mandate),
    considers_provider_violating_regulation(Rep, Provider).

must_inform(Rep, termination(Provider, Authority)) :-
    authorised_representative(Rep),
    provider(Provider),
    considers_provider_violating_regulation(Rep, Provider),
    market_surveillance_authority(Authority).

must_inform(Rep, termination(Provider, Body)) :-
    authorised_representative(Rep),
    provider(Provider),
    considers_provider_violating_regulation(Rep, Provider),
    notified_body(Body).

% Valid mandate requirements
valid_authorised_representative_mandate(Provider, Rep, Mandate) :-
    mandate(Provider, Rep, Mandate),
    mandate_covers_required_tasks(Mandate).

% Provenance
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_register/2, 'celex:32024R1689/oj#art_22').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').
provenance(valid_authorised_representative_mandate/3, 'celex:32024R1689/oj#art_22').

% References
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
