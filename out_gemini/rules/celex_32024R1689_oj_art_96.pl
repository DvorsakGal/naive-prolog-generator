% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b36b1bc122a85b28adaae08b5d98fc507ea4a9dde8290c6fd462e3cab794c188
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop(Actor, Object), gloss('Actor is obligated to develop Object'), source('celex:32024R1689/oj#art_96').
:- pred must_consider(Actor, Object), gloss('Actor is obligated to pay attention to or take account of Object when acting'), source('celex:32024R1689/oj#art_96').
:- pred must_update(Actor, Object), gloss('Actor is obligated to update Object'), source('celex:32024R1689/oj#art_96').
:- pred update_requested(Object), gloss('An update of Object has been requested by Member States or AI Office'), source('celex:32024R1689/oj#art_96').
:- pred commission_initiative(Object), gloss('The Commission acts on its own initiative regarding Object'), source('celex:32024R1689/oj#art_96').
:- pred deemed_necessary(Object), gloss('Action regarding Object is deemed necessary'), source('celex:32024R1689/oj#art_96').

% Paragraph 1: The Commission shall develop guidelines on practical implementation
must_develop(commission, guidelines(practical_implementation(regulation))).
must_develop(commission, guidelines(requirements_and_obligations(articles_8_to_15_and_25))).
must_develop(commission, guidelines(prohibited_practices(article_5))).
must_develop(commission, guidelines(substantial_modification)).
must_develop(commission, guidelines(transparency_obligations(article_50))).
must_develop(commission, guidelines(relationship_with_union_harmonisation_legislation_and_other_law)).
must_develop(commission, guidelines(application_of_ai_system_definition)).

% Paragraph 1 (subparagraphs): Considerations when issuing guidelines
must_consider(commission, guidelines_development(needs_of_smes_and_startups)).
must_consider(commission, guidelines_development(needs_of_local_public_authorities)).
must_consider(commission, guidelines_development(needs_of_affected_sectors)).
must_consider(commission, guidelines_development(state_of_art_on_ai)).
must_consider(commission, guidelines_development(harmonised_standards_and_common_specifications)).

% Paragraph 2: Update of guidelines previously adopted
must_update(commission, guidelines(previously_adopted)) :-
    deemed_necessary(guidelines(previously_adopted)),
    update_requested(guidelines(previously_adopted)).

must_update(commission, guidelines(previously_adopted)) :-
    deemed_necessary(guidelines(previously_adopted)),
    commission_initiative(guidelines(previously_adopted)).

% Provenance
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider/2, 'celex:32024R1689/oj#art_96').
provenance(must_update/2, 'celex:32024R1689/oj#art_96').

% References
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
