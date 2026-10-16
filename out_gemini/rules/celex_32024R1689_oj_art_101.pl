% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 35249008b09b5a9951db32e89c28a34560cc873262567bc8a0bb376d76678a90
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred permitted_impose_fine/2, gloss('Commission may impose fine on provider of GPAI model'), source('celex:32024R1689/oj#art_101').
:- pred provider_of_general_purpose_ai_model/1, gloss('entity is a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred intentional_or_negligent_infringement/2, gloss('provider intentionally or negligently committed an infringement'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate(Actor, Object), gloss('duty to communicate preliminary findings or information'), source('celex:32024R1689/oj#art_101').
:- pred must_give_opportunity_to_be_heard/2, gloss('duty to give provider an opportunity to be heard'), source('celex:32024R1689/oj#art_101').
:- pred maximum_fine_gpai_model/2, gloss('maximum fine threshold for a provider of general-purpose AI models'), source('celex:32024R1689/oj#art_101').
:- pred annual_turnover/2, gloss('annual total worldwide turnover in preceding financial year of an entity'), source('celex:32024R1689/oj#art_101').
:- pred jurisdiction_to_review_fines/2, gloss('court has unlimited jurisdiction to review Commission fine decisions'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt(Actor, Object), gloss('duty of an actor to adopt certain acts or decisions'), source('celex:32024R1689/oj#art_101').

% Provider of general-purpose AI model
provider_of_general_purpose_ai_model(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    intended_purpose(Model).

% Paragraph 1: Commission may impose fines on providers of general-purpose AI models
permitted_impose_fine(commission, fine(Provider, Infringement)) :-
    provider_of_general_purpose_ai_model(Provider),
    intentional_or_negligent_infringement(Provider, Infringement).

% Paragraph 1 fine ceiling: 3% of worldwide turnover or EUR 15 000 000, whichever is higher
maximum_fine_gpai_model(Provider, max(percent(3, turnover(Provider)), eur(15000000))) :-
    provider_of_general_purpose_ai_model(Provider),
    annual_turnover(Provider, _Turnover).

% Paragraph 2: Procedural duties before adopting fine decision
must_communicate(commission, preliminary_findings(Provider)) :-
    permitted_impose_fine(commission, fine(Provider, _Infringement)).

must_give_opportunity_to_be_heard(commission, Provider) :-
    permitted_impose_fine(commission, fine(Provider, _Infringement)).

% Paragraph 4: Information on fines communicated to the Board
must_communicate(commission, information(fines_imposed(art_101), european_artificial_intelligence_board)).

% Paragraph 5: Court of Justice review jurisdiction
jurisdiction_to_review_fines(court_of_justice_of_the_european_union, commission_decisions(art_101)).

% Paragraph 6: Implementing acts for procedural safeguards
must_adopt(commission, implementing_acts(procedural_safeguards(art_101))).

% Provenance
provenance(permitted_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_101').
provenance(maximum_fine_gpai_model/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(jurisdiction_to_review_fines/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_101').

% References
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').
