Feature: User melakukan Login

Scenario: Login menggunakan data valid
    Given user membuka login page TM Digital
    When user menginput username "superadmin@gmail.com"
    And user menginput password "superadmin"
    And user mengklik tombol Login
    Then user diarahkan ke halaman dashboard

Scenario Outline: Login menggunakan data invalid
    Given user membuka login page TM Digital
    When user menginput username <username>
    And user menginput password <password>
    And user mengklik tombol Login
    Then user akan melihat <pesan_error>

    Examples:
        | username | password  | pesan_error |
        | superadmin@gmail.com | admin123  | INVALID CREDENTIAL |
        | ADMIN    | superadmin  | Authentication failed: User doesn't exist or is not active! |
        | adminbysa@mailinator.com  | adminbysa | Authentication failed: User doesn't exist or is not active! |