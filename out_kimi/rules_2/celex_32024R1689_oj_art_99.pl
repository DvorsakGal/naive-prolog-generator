% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 3b357aa7e2ccd7c86b3b5bc13b016f9d624d051ed34c5eb6c351583ef15848a9
% cached     : False
% title      : Penalties
:- pred may_impose_fine/2, gloss('Commission or Member State may impose administrative fine'), source('celex:32024R1689/oj#art_99').
:- pred fine_amount/3, gloss('fine amount for infringement with caps'), source('celex:32024R1689/oj#art_99').
:- pred fine_cap/2, gloss('maximum fine applicable to infringement category'), source('celex:32024R1689/oj#art_99').
:- pred undertaking/1, gloss('entity with worldwide annual turnover'), source('celex:32024R1689/oj#art_99').
:- pred total_worldwide_annual_turnover/2, gloss('total worldwide annual turnover for preceding financial year'), source('celex:32024R1689/oj#art_99').
:- pred infringement_category/2, gloss('category of infringement for penalty purposes'), source('celex:32024R1689/oj#art_99').
:- pred supply_of_incorrect_information/1, gloss('supply of incorrect incomplete or misleading information to authorities'), source('celex:32024R1689/oj#art_99').
:- pred fine_consideration_factor/2, gloss('factor to consider when deciding fine amount'), source('celex:32024R1689/oj#art_99').
:- pred fine_imposed_on_public_authority/1, gloss('administrative fines may be imposed on public authorities'), source('celex:32024R1689/oj#art_99').
:- pred fine_imposed_by_court_or_body/1, gloss('fines imposed by competent national courts or other bodies'), source('celex:32024R1689/oj#art_99').
:- pred procedural_safeguards_apply/1, gloss('procedural safeguards apply to exercise of fine powers'), source('celex:32024R1689/oj#art_99').
:- pred must_report_fines_annual/2, gloss('Member State must report annually on administrative fines issued'), source('celex:32024R1689/oj#art_99').

% Infringement categories for penalty purposes
infringement_category(O, art_5_prohibition) :-
    operator(O),
    non_compliance_art_5(O).

infringement_category(O, operator_obligations) :-
    operator(O),
    \+ non_compliance_art_5(O),
    (obligation_provider(O, _);
     obligation_authorised_representative(O, _);
     obligation_importer(O, _);
     obligation_distributor(O, _);
     obligation_deployer(O, _);
     obligation_notified_body(O, _);
     non_compliance_art_50(O)).

infringement_category(O, incorrect_information) :-
    operator(O),
    supply_of_incorrect_information(O).

% Fine caps for each infringement category
fine_cap(art_5_prohibition, eur(35000000)).
fine_cap(art_5_prohibition, percent(7)).
fine_cap(operator_obligations, eur(15000000)).
fine_cap(operator_obligations, percent(3)).
fine_cap(incorrect_information, eur(7500000)).
fine_cap(incorrect_information, percent(1)).

% Fine amount calculation - whichever is higher: fixed amount or turnover percentage
fine_amount(O, Category, eur(Amount)) :-
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    fine_cap(Category, percent(Percent)),
    undertaking(O),
    total_worldwide_annual_turnover(O, Turnover),
    PercentAmount is Turnover * Percent / 100,
    Amount is max(EurAmount, PercentAmount).

fine_amount(O, Category, eur(EurAmount)) :-
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    fine_cap(Category, percent(_Percent)),
    \+ undertaking(O).

fine_amount(O, Category, eur(Amount)) :-
    infringement_category(O, Category),
    fine_cap(Category, percent(Percent)),
    undertaking(O),
    total_worldwide_annual_turnover(O, Turnover),
    Amount is Turnover * Percent / 100,
    fine_cap(Category, eur(EurAmount)),
    Amount >= EurAmount.

% SME cap - whichever is lower of the standard caps
fine_amount(O, Category, eur(Amount)) :-
    sme_or_start_up(O),
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    fine_cap(Category, percent(Percent)),
    undertaking(O),
    total_worldwide_annual_turnover(O, Turnover),
    PercentAmount is Turnover * Percent / 100,
    Amount is min(EurAmount, PercentAmount).

fine_amount(O, Category, eur(EurAmount)) :-
    sme_or_start_up(O),
    infringement_category(O, Category),
    fine_cap(Category, eur(EurAmount)),
    \+ undertaking(O).

% Supply of incorrect information predicate
supply_of_incorrect_information(O) :-
    operator(O),
    (provided_incorrect_information(O, notified_body(_));
     provided_incorrect_information(O, national_competent_authority(_));
     provided_incomplete_information(O, notified_body(_));
     provided_incomplete_information(O, national_competent_authority(_));
     provided_misleading_information(O, notified_body(_));
     provided_misleading_information(O, national_competent_authority(_))).

% Fine consideration factors (Article 99(7))
fine_consideration_factor(O, nature_gravity_duration(Infringement)) :-
    operator(O),
    infringement_category(O, _).

fine_consideration_factor(O, previous_fines_same_infringement) :-
    operator(O).

fine_consideration_factor(O, previous_fines_other_law) :-
    operator(O).

fine_consideration_factor(O, size_turnover_market_share) :-
    operator(O),
    undertaking(O).

fine_consideration_factor(O, financial_benefits_losses_avoided) :-
    operator(O).

fine_consideration_factor(O, cooperation_with_authorities) :-
    operator(O).

fine_consideration_factor(O, technical_organisational_measures) :-
    operator(O).

fine_consideration_factor(O, manner_infringement_known) :-
    operator(O).

fine_consideration_factor(O, intentional_or_negligent_character) :-
    operator(O).

fine_consideration_factor(O, action_to_mitigate_harm) :-
    operator(O).

% Member State obligations regarding penalties
must_establish_penalty_rules(State) :-
    member_state(State).

must_notify_penalty_rules(State, Commission) :-
    member_state(State),
    commission(Commission).

must_notify_penalty_rule_amendments(State, Commission) :-
    member_state(State),
    commission(Commission).

% Fine powers subject to procedural safeguards
procedural_safeguards_apply(exercise_of_fine_powers).

fine_imposed_by_court_or_body(Body) :-
    competent_national_court(Body);
    other_competent_body(Body).

fine_imposed_on_public_authority(Authority) :-
    national_public_authority_or_body(Authority),
    established_under_national_law(Authority).

% Annual reporting of fines
must_report_fines_annual(State, Commission) :-
    member_state(State),
    commission(Commission).

must_report_fines_annual(State, Commission) :-
    member_state(State),
    commission(Commission),
    litigation_or_judicial_proceedings_related_to_fines(State).

% Provenance
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_99').
provenance(fine_amount/3, 'celex:32024R1689/oj#art_99').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(infringement_category/2, 'celex:32024R1689/oj#art_99').
provenance(supply_of_incorrect_information/1, 'celex:32024R1689/oj#art_99').
provenance(fine_consideration_factor/2, 'celex:32024R1689/oj#art_99').
provenance(fine_imposed_on_public_authority/1, 'celex:32024R1689/oj#art_99').
provenance(fine_imposed_by_court_or_body/1, 'celex:32024R1689/oj#art_99').
provenance(procedural_safeguards_apply/1, 'celex:32024R1689/oj#art_99').
provenance(must_report_fines_annual/2, 'celex:32024R1689/oj#art_99').
provenance(must_establish_penalty_rules/1, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_penalty_rule_amendments/2, 'celex:32024R1689/oj#art_99').

% References
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_24').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_26').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_5').
