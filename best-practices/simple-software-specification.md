Overview
========

This page will provide a specification for "Simple Software", which can be used to measure progress and provide goals for software developers who wish to have simple and mature software.

Simplicity is subjective, but in the world of software it tends to include automation, repeatability, and ease of use. This specification won't provide specific actions to take, as those depend on the type of software and technology used, so it will stick to high level goals which should be universal across types of software.

An example usage of the specification to craft specific goals will be listed after the specification.



Specification
=============

Developer
---------

As a developer, I can simply;

- [ ] Discover issues before they are reported by users.  
- [ ] Investigate issues.
- [ ] Release changes to production without downtime.
- [ ] Determine what changed between two versions of my application.
- [ ] Catch bugs before they are released.
- [ ] Rotate secrets automatically  

User
----

As a user, I can simply;

- [ ] Use the software.  
- [ ] Understand what functionality the software provides.
- [ ] Request changes and improvements.
- [ ] Report issues.





Example Usage
=============

In this case, we will be following this specification to develop some specific goals for a web service.

Developer:

*   Discover issues before they are reported by users.  
    - [ ] Instrument requests and report performance + success/failure metrics, along with environmental metadata.
    - [ ] Log unexpected errors.
    - [ ] Set up alerting.


*   Investigate issues.
    - [ ] Maintain historical logging and metrics.
    - [ ] Utilize distributed trace.


*   Release changes to production without downtime.  
    - [ ] Utilize non-downtime deployment strategy (i.e. blue/green or rolling).
    - [ ] Automatically roll back deployment to previous if issues arise.


*   Determine what changed between two versions of my application.
    - [ ] Maintain a changelog.


*   Catch bugs before they are released.
    - [ ] Have comprehensive automated testing (L0-L3) performed before every release.
    - [ ] Use a canary during deployment to allow rollbacks in case of issues.
    - [ ] Don't release changes without peer review.
    - [ ] Follow best practices for code quality/maintainability.


*   Rotate secrets automatically .
    - [ ] Have an automated process which rotates secrets on a scheduled basis.
    - [ ] Redeploy software on a scheduled basis.


User:

*   Use the software.  
    - [ ] Interfaces are simple and intuitive.  
    - [ ] Use cases are well defined.


*   Understand what functionality the software provides.
    - [ ] Quickstart guide exists detailing main use case.
    - [ ] Documentation exists detailing all use cases.
    - [ ] All external facing interfaces are documented.


*   Request changes and improvements.
    - [ ] Request communication channel exists where users can send feature requests.
    - [ ] Requests are responded to within a week.


*   Report issues.
    - [ ] Issue reporting communication channel exists.
    - [ ] Issues are responded to within two days.
