% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9aba87af0060c176eaa07b5e921f9b3d02dab6005ba689f78ff00928d17c3198
% cached     : False
% title      : Evaluation and review
:- pred must_assess/2, gloss('Commission must assess the need for amendment of specified lists'), source('celex:32024R1689/oj#art_112').
:- pred must_submit/2, gloss('Commission must submit findings or reports'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_and_report/2, gloss('Commission must evaluate and report on specified topics'), source('celex:32024R1689/oj#art_112').
:- pred required_report_content/1, gloss('Reports must contain specific attention items'), source('celex:32024R1689/oj#art_112').
:- pred must_provide/2, gloss('Board, Member States and national competent authorities must provide information to the Commission'), source('celex:32024R1689/oj#art_112').
:- pred must_take_into_account/2, gloss('Commission must take into account positions and findings of various bodies'), source('celex:32024R1689/oj#art_112').
:- pred must_develop/2, gloss('AI Office must develop methodology for risk level evaluation'), source('celex:32024R1689/oj#art_112').
:- pred required_amendment_consideration/1, gloss('Amendments must consider sectoral specificities and existing mechanisms'), source('celex:32024R1689/oj#art_112').

must_assess(commission,
    amendment_need(annex_3, art_5,
        annual,
        after(entry_into_force),
        until(end_of_delegation_period))).

must_submit(commission,
    findings_of_assessment(to([european_parliament, council]))).

must_evaluate_and_report(commission,
    evaluation(date(2028,8,2), periodic(years(4)),
        topics([area_headings_annex_3,
                transparency_measures_art_50,
                supervision_governance_effectiveness]),
        to([european_parliament, council]))).

must_submit(commission,
    evaluation_review_report(date(2029,8,2), periodic(years(4)),
        includes([enforcement_structure_assessment,
                  union_agency_need_assessment]),
        to([european_parliament, council]),
        public)).

required_report_content(report_par_2,
    attention_to([financial_resources_national_competent_authorities,
                 penalties_state(administrative_fines),
                 adopted_harmonised_standards,
                 number_of_undertakings_and_smes])).

must_evaluate_and_report(commission,
    ai_office_functioning(date(2028,8,2),
        topics([sufficient_powers,
                relevance,
                resource_upgrades]),
        to([european_parliament, council]))).

must_submit(commission,
    ai_office_evaluation_report(to([european_parliament, council]))).

must_submit(commission,
    standardisation_progress_report(date(2028,8,2), periodic(years(4)),
        includes([energy_efficient_general_purpose_ai_models]),
        assess_need([further_measures, binding_measures]),
        to([european_parliament, council]),
        public)).

must_evaluate_and_report(commission,
    voluntary_codes_impact(date(2028,8,2), periodic(years(3)),
        topics([environmental_sustainability]),
        to([european_parliament, council]))).

must_provide(board, information(commission, request, without_undue_delay)).
must_provide(member_state, information(commission, request, without_undue_delay)).
must_provide(national_competent_authority, information(commission, request, without_undue_delay)).

must_take_into_account(commission,
    positions([board, european_parliament, council, other_relevant_bodies],
        for_evaluations(paragraphs([1,2,3,4,5,6,7])))).

must_submit(commission,
    amendment_proposal(if_necessary,
        considerations([technology_developments,
                        health_and_safety_effects,
                        fundamental_rights,
                        information_society_progress]))).

must_develop(ai_office,
    methodology(objective_participative,
        evaluation(risk_levels),
        criteria(articles),
        inclusion_in_lists([annex_3, art_5, art_50]))).

required_amendment_consideration(amendment(regulation),
    sectoral_harmonisation_legislation,
    regulatory_specificities,
    existing_governance_conformity_assessment_enforcement).

must_assess(commission,
    enforcement_assessment(date(2031,8,2),
        includes([first_years_application]),
        to([european_parliament, council, european_economic_and_social_committee]),
        proposal_amendment_if_appropriate)).

provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/2, 'celex:32024R1689/oj#art_112').
provenance(required_report_content/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').
provenance(required_amendment_consideration/1, 'celex:32024R1689/oj#art_112').

references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
