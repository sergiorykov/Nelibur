﻿@SoapService
Feature: Get soap actions
	In order to find an object instance accordingly with CRUD and message based paradigm
	As a developer
	I want to use Get action

Scenario: Get data with response
	Given the Soap service was started
	And I sent data thru Post action
	| Id | Quantity | ProductId                            |
	| 107  | 105        | 5B1706AC-F33C-43B5-8ACF-BAEB2E73BB95 |
	When I request data by Id '107' thru Get action
	Then I get data
	| Id | Quantity | ProductId                            |
	| 107  | 105        | 5B1706AC-F33C-43B5-8ACF-BAEB2E73BB95 |
	And the Soap service was stopped

Scenario: GetAsync data with response
	Given the Soap service was started
	And I sent data thru Post action
	| Id | Quantity | ProductId                            |
	| 2  | 7        | 5695F19D-2DFF-401A-8F34-EBC161A6EBB5 |
	When I request data by Id '2' thru GetAsync action
	Then I get data
	| Id | Quantity | ProductId                            |
	| 2  | 7        | 5695F19D-2DFF-401A-8F34-EBC161A6EBB5 |
	And the Soap service was stopped
