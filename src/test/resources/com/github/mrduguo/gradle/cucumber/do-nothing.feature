Feature: A sample to demo cucumber scenario outline sample value
  will cause test report fail in gradle

  Scenario Outline: execute test from examples
    Given Do Nothing with <address> and <source>
    Examples:
      | address                   | source  |
      | localhost                 | examples |
      | examples                 | local.xip.io |

  Scenario: execute test from scenario | 127.0.0.1 | scenario |
    Given Do Nothing with 127.0.0.1 and scenario
