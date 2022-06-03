Overview
========

In this handbook we will cover the different strategies we use on our team to ensure code quality for all our projects.


Handbook
========

Code Style
----------

In order to increase maintainability by maintaining a singular voice and following established best practices

*   We adhere to language specific code style guides which are enforced through automated tooling.

| Language | Style Guide                         | Tool                    |
|----------|-------------------------------------|-------------------------|
| TBD      | TBD                                 | TBD                     |


Automated Testing
-----------------

In order to prove functionality works and prevent inadvertent changes in behavior;

*   We write automated tests at the appropriate level and enforce coverage levels with tooling where possible.
*   We ensure all tests are passing before code is released.

| Level | Description                                                                                                                                                              | Desired Coverage                     |
|-------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| L0    | A unit test that verifies the behavior of a unit of code isolated from its environment. All dependencies on other units are mocked.                                      | 85% Line Coverage                    |
| L1    | A unit test that can include external data source(s) (i.e. SQL, File System). Other dependencies are mocked.                                                             |                                      |
| L2    | Functional test that exercises user facing functionality. Uses controlled/stubbed versions of external dependencies (i.e. SQL, Docker, In-Memory Server) when necessary. | All user stories + failure scenarios |
| L3    | Functional test that exercises user facing functionality. Uses uncontrolled/real versions of external dependencies.                                                      | All user stories                     |


Documentation
-------------

In order to increase ease of use;
*   We document all public APIs and interfaces.
*   We work with product management and developer experience to ensure that other appropriate documentation exists and is maintained.


Versioning
----------

In order to increase ease of use and user confidence in upgrades;

*   We follow [semantic versioning](https://semver.org/).


Commit Messages
---------------

In order to increase maintainability and ease of review;

*   We follow a commit message standard and enforce with tooling where possible.
*   We avoid low effort commit messages (i.e. Did a thing)

#### Standard
1. [Separate subject from body with a blank line](https://chris.beams.io/posts/git-commit/#separate)
1. [Limit the subject line to 50 characters](https://chris.beams.io/posts/git-commit/#limit-50)
1. [Capitalize the subject line](https://chris.beams.io/posts/git-commit/#capitalize)
1. [Do not end the subject line with a period](https://chris.beams.io/posts/git-commit/#end)
1. [Use the imperative mood in the subject line](https://chris.beams.io/posts/git-commit/#imperative)
1. [Wrap the body at 72 characters](https://chris.beams.io/posts/git-commit/#wrap-72)
1. [Use the body to explain what and why vs. how](https://chris.beams.io/posts/git-commit/#why-not-how)

#### Example
```
Summarize changes in around 50 characters or less

Explain the problem that this commit is solving. Focus on why you
are making this change as opposed to how (the code explains that).
Are there side effects or other unintuitive consequences of this
change? Here's the place to explain them.

Further paragraphs come after blank lines.

 - Bullet points are okay, too

 - Typically a hyphen or asterisk is used for the bullet, preceded
   by a single space, with blank lines in between, but conventions
   vary here

If you use an issue tracker, put references to them at the bottom,
like this:

Reference: JIRA-123
Type: Fixed
```


Pull Requests & Code Reviews
----------------------------

In order to avoid unintended changes and reduce defects;

*   We make changes to code via pull requests.
*   We don't merge pull requests without review and a passing build.
*   We follow standards on [how to make pull requests](https://google.github.io/eng-practices/review/developer/) and [perform code reviews](https://google.github.io/eng-practices/review/reviewer/).



Static Code Analysis
--------------------

In order to reduce anti-patterns, vulnerabilities, and follow industry best practices;

*   We use language specific static analysis tools which are run against changes before they are released.
*   We follow tooling recommendations whenever possible, and don't allow adherence to drop below a specified level.

| Language | Tool      | Minimum Adherence |
|----------|-----------|-------------------|
| TBD      | TBD       | TBD               |




Changelogs
----------

In order to increase maintainability and change visibility;

*   We maintain a changelog either manually or automatically in the [Keep A Changelog](https://keepachangelog.com/en/1.0.0/) format
