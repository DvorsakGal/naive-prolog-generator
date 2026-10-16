% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 15b230b5a902321fc1203c4ac90af725f4a5c6b9b93397ad2ef646785d882e5c
% cached     : False
% title      : Common specifications
:- pred permitted_adopt_common_specifications/2, gloss('Commission is permitted to adopt implementing act establishing common specifications for requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred standardisation_request_failed/1, gloss('Standardisation request conditions of Article 41(1)(a) are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred request_not_accepted/1, gloss('Request not accepted by any European standardisation organisation'), source('celex:32024R1689/oj#art_41').
:- pred standards_not_delivered_on_time/1, gloss('Harmonised standards not delivered within the deadline'), source('celex:32024R1689/oj#art_41').
:- pred standards_insufficient_fundamental_rights/1, gloss('Harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred standards_not_complying_with_request/1, gloss('Harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_harmonised_standard_reference_published/1, gloss('No reference to harmonised standard published in OJEU and none expected within reasonable period'), source('celex:32024R1689/oj#art_41').
:- pred consulted_advisory_forum/1, gloss('Commission consulted the advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred procedure_applies/2, gloss('An adoption procedure applies to an act'), source('celex:32024R1689/oj#art_41').
:- pred must_inform/2, gloss('Actor must inform recipient or committee about a circumstance'), source('celex:32024R1689/oj#art_41').
:- pred conditions_fulfilled_article_41_1/1, gloss('Conditions laid down in Article 41(1) are fulfilled for a subject matter'), source('celex:32024R1689/oj#art_41').
:- pred in_conformity_with_common_specification/2, gloss('AI system or model complies with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity/2, gloss('Entity is presumed to conform to requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred common_specification_covers/2, gloss('Common specification covers requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred high_risk_ai_system/1, gloss('System is a high-risk AI system'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal/2, gloss('Commission must repeal implementing act or parts thereof covering requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred published_in_official_journal/1, gloss('Harmonised standard reference has been published in OJEU'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_covers/2, gloss('Harmonised standard covers specific requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred must_justify/2, gloss('Actor must duly justify compliance via equivalent technical solutions'), source('celex:32024R1689/oj#art_41').
:- pred provider_of/2, gloss('Entity is provider of a system or model'), source('celex:32024R1689/oj#art_41').
:- pred member_state/1, gloss('Entity is a Member State'), source('celex:32024R1689/oj#art_41').
:- pred considers_specification_insufficient/2, gloss('Member State considers common specification does not meet requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred must_assess/2, gloss('Commission must assess information provided by Member State'), source('celex:32024R1689/oj#art_41').

% Paragraph 1: Conditions for Commission implementing acts establishing common specifications
permitted_adopt_common_specifications(Commission, Target) :-
    commission(Commission),
    standardisation_request_failed(Target),
    no_harmonised_standard_reference_published(Target),
    consulted_advisory_forum(Target).

standardisation_request_failed(Target) :-
    request_not_accepted(Target).
standardisation_request_failed(Target) :-
    standards_not_delivered_on_time(Target).
standardisation_request_failed(Target) :-
    standards_insufficient_fundamental_rights(Target).
standardisation_request_failed(Target) :-
    standards_not_complying_with_request(Target).

procedure_applies(examination_procedure, implementing_act(common_specification)).

% Paragraph 2: Informing the committee before draft implementing act
must_inform(Commission, committee(standards, conditions_fulfilled(Target))) :-
    commission(Commission),
    conditions_fulfilled_article_41_1(Target).

% Paragraph 3: Presumption of conformity
presumed_conformity(System, chapter_3_section_2) :-
    high_risk_ai_system(System),
    common_specification(Spec),
    in_conformity_with_common_specification(System, Spec),
    common_specification_covers(Spec, chapter_3_section_2).

presumed_conformity(Model, chapter_5_obligations) :-
    general_purpose_ai_model(Model),
    common_specification(Spec),
    in_conformity_with_common_specification(Model, Spec),
    common_specification_covers(Spec, chapter_5_obligations).

% Paragraph 4: Repeal of implementing acts when harmonised standard reference is published
must_repeal(Commission, implementing_act(common_specification, Target)) :-
    commission(Commission),
    harmonised_standard(HS),
    published_in_official_journal(HS),
    harmonised_standard_covers(HS, Target).

% Paragraph 5: Requirement to justify equivalent technical solutions if not complying with common specifications
must_justify(Provider, equivalent_technical_solutions(System, chapter_3_section_2)) :-
    high_risk_ai_system(System),
    provider_of(Provider, System),
    common_specification(Spec),
    common_specification_covers(Spec, chapter_3_section_2),
    \+ in_conformity_with_common_specification(System, Spec).

must_justify(Provider, equivalent_technical_solutions(Model, chapter_5_obligations)) :-
    general_purpose_ai_model(Model),
    provider_of_general_purpose_ai_model(Provider),
    provider_of(Provider, Model),
    common_specification(Spec),
    common_specification_covers(Spec, chapter_5_obligations),
    \+ in_conformity_with_common_specification(Model, Spec).

% Paragraph 6: Member State informs Commission; Commission assesses
must_inform(MS, commission(detailed_explanation(Spec, Target))) :-
    member_state(MS),
    common_specification(Spec),
    considers_specification_insufficient(MS, Spec, Target).

must_assess(Commission, member_state_explanation(Spec)) :-
    commission(Commission),
    common_specification(Spec).

% Provenance
provenance(permitted_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(standardisation_request_failed/1, 'celex:32024R1689/oj#art_41').
provenance(procedure_applies/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess/2, 'celex:32024R1689/oj#art_41').

% References
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
