% unit       : celex:32024R1689/oj#art_17
% title      : Quality management system
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 4c3c5f0801ffb9d4125aa64670a2973aca5856cde661b1eb06980a365ebd73cf
% model      : gpt-oss:120b-cloud
% prompt sha : 0ed91c9957c874d7e9bdf7dbcb35e28bcb2b1edeef0966c7c39eec1f091fa066
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('art_17').
:- pred quality_management_system/1, gloss('system ensuring compliance with the Regulation'), source('art_17').
:- pred aspect/1, gloss('aspect of a quality‑management system'), source('art_17').
:- pred proportionate_to_size/1, gloss('implementation proportionate to the size of the provider'), source('art_17').
:- pred respects_rigour_and_protection/2, gloss('provider respects the degree of rigour and level of protection required'), source('art_17').
:- pred ensures_compliance/2, gloss('system ensures compliance with the referenced legal act'), source('art_17').
:- pred financial_institution/1, gloss('provider that is a financial institution subject to Union financial services law'), source('art_17').

% -----------------------------------------------------------------
% Requirement: providers of high‑risk AI systems must put a quality‑management system in place
required_quality_management_system(Provider, System) :-
    provider(Provider),
    provider(Provider),                     % Provider appears at least twice
    high_risk_ai_system(System),
    quality_management_system(System),
    ensures_compliance(System, 'celex:32024R1689/oj'),
    proportionate_to_size(Provider),
    respects_rigour_and_protection(Provider, System).

provenance(required_quality_management_system/2, 'celex:32024R1689/oj#art_17').

% -----------------------------------------------------------------
% Requirement: the quality‑management system must include the listed aspects
aspect(regulatory_compliance_strategy).          % (a)
aspect(design_control_and_verification).        % (b)
aspect(development_quality_control).           % (c)
aspect(examination_test_validation).            % (d)
aspect(technical_specifications).               % (e)
aspect(data_management_systems).                 % (f)
aspect(risk_management_system).                 % (g)
aspect(post_market_monitoring).                  % (h)
aspect(serious_incident_reporting).            % (i)
aspect(communication_handling).                  % (j)
aspect(record_keeping).                         % (k)
aspect(resource_management).                    % (l)
aspect(accountability_framework).               % (m)

required_aspect_in_quality_management_system(System, Aspect) :-
    quality_management_system(System),
    aspect(Aspect).

provenance(required_aspect_in_quality_management_system/2, 'celex:32024R1689/oj#art_17').

% -----------------------------------------------------------------
% Exception for financial institutions: exemption from aspects (g), (h), (i)
exempt_quality_management_system_aspect(Provider, Aspect) :-
    financial_institution(Provider),
    (   Aspect = risk_management_system
    ;   Aspect = post_market_monitoring
    ;   Aspect = serious_incident_reporting
    ).

provenance(exempt_quality_management_system_aspect/2, 'celex:32024R1689/oj#art_17').

% -----------------------------------------------------------------
% References
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_17', 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i').
