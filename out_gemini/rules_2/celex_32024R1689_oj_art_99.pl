% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : eb85a1b2eaa826aa20aadc76e7d721999015c65c27dff4c36a117d0441259cdf
% cached     : False
% title      : Penalties
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_99').
:- pred sme_including_startup/1, gloss('entity is an SME, including a start-up'), source('celex:32024R1689/oj#art_99').
:- pred undertaking/1, gloss('entity is an undertaking'), source('celex:32024R1689/oj#art_99').
:- pred infringement/2, gloss('actor commits a specific legal infringement'), source('celex:32024R1689/oj#art_99').
:- pred administrative_fine_limit/3, gloss('maximum administrative fine for an actor and infringement (amount EUR, turnover percentage, comparison rule)'), source('celex:32024R1689/oj#art_99').
:- pred must_lay_down_rules/2, gloss('Member State must lay down rules on a matter'), source('celex:32024R1689/oj#art_99').
:- pred must_notify/2, gloss('actor must notify another actor of a matter'), source('celex:32024R1689/oj#art_99').

% Paragraph 1: Member States lay down rules on penalties and enforcement measures
must_lay_down_rules(MS, penalties_and_enforcement_measures) :-
    member_state(MS).

% Paragraph 2: Member States notify the Commission
must_notify(MS, commission(rules_on_penalties)) :-
    member_state(MS).
must_notify(MS, commission(amendment(rules_on_penalties))) :-
    member_state(MS).

% Paragraph 3: Prohibited AI practices (Article 5)
administrative_fine_limit(Actor, prohibited_ai_practices, limit(eur(35000000), percent(7), higher)) :-
    infringement(Actor, prohibited_ai_practices),
    undertaking(Actor),
    \+ sme_including_startup(Actor).

administrative_fine_limit(Actor, prohibited_ai_practices, limit(eur(35000000), percent(0), fixed)) :-
    infringement(Actor, prohibited_ai_practices),
    \+ undertaking(Actor),
    \+ sme_including_startup(Actor).

% Paragraph 4: Operators / notified bodies non-compliance
administrative_fine_limit(Actor, infringement_article_99_4, limit(eur(15000000), percent(3), higher)) :-
    infringement(Actor, infringement_article_99_4),
    undertaking(Actor),
    \+ sme_including_startup(Actor).

administrative_fine_limit(Actor, infringement_article_99_4, limit(eur(15000000), percent(0), fixed)) :-
    infringement(Actor, infringement_article_99_4),
    \+ undertaking(Actor),
    \+ sme_including_startup(Actor).

% Paragraph 5: Supply of incorrect, incomplete or misleading information
administrative_fine_limit(Actor, misleading_information, limit(eur(7500000), percent(1), higher)) :-
    infringement(Actor, misleading_information),
    undertaking(Actor),
    \+ sme_including_startup(Actor).

administrative_fine_limit(Actor, misleading_information, limit(eur(7500000), percent(0), fixed)) :-
    infringement(Actor, misleading_information),
    \+ undertaking(Actor),
    \+ sme_including_startup(Actor).

% Paragraph 6: SMEs, including start-ups, take the lower threshold
administrative_fine_limit(Actor, prohibited_ai_practices, limit(eur(35000000), percent(7), lower)) :-
    infringement(Actor, prohibited_ai_practices),
    sme_including_startup(Actor).

administrative_fine_limit(Actor, infringement_article_99_4, limit(eur(15000000), percent(3), lower)) :-
    infringement(Actor, infringement_article_99_4),
    sme_including_startup(Actor).

administrative_fine_limit(Actor, misleading_information, limit(eur(7500000), percent(1), lower)) :-
    infringement(Actor, misleading_information),
    sme_including_startup(Actor).

% Paragraph 8: Rules on public authorities
must_lay_down_rules(MS, fines_on_public_authorities) :-
    member_state(MS).

% Paragraph 11: Annual reporting by Member States to Commission
must_submit_annual_report(MS, commission(administrative_fines_and_litigation)) :-
    member_state(MS).

% Provenance
provenance(must_lay_down_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify/2, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine_limit/3, 'celex:32024R1689/oj#art_99').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_99').

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
