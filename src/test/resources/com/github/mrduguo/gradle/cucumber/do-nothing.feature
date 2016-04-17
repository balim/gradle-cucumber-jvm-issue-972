Feature: A sample to demo cucumber scenario outline sample value
  will cause test report fail in gradle

  Scenario Outline:
    Given Do Nothing with <address> and <result>
    Examples:
      | address                   | result  |
      | localhost                 | success |
      | 127.0.0.1                 | success |
