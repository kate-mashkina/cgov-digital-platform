Feature: all

    Scenario: Create site section
        When user logs in with a role "admin"
        Given user navigates to "/"
        When user clicks on "Structure" tab
        And user clicks on "Taxonomy" sub tab
        And user selects "List terms" option from Operations for "Site Sections"
        And user clicks on "Add term" action button
        Then page title is "Add term"
        And user fills out the following fields
            | fieldLabel | value | field_name     |
            | Name       | Test  | name[0][value] |
        And user checks "Set Main Nav Root" checkbox to set section
        And user checks "Set Breadcrumb Root" checkbox to set section
        Then user saves the content page

    Scenario: Create cgov_article
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Article" content type
        Then page title is "Create Article"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                      | field_name             |
            | Pretty URL       | article                    | field_pretty_url       |
            | Page Title       | Article                    | title[0][value]        |
            | Browser Title    | Article                    | field_browser_title    |
            | Meta Description | Article - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page


    Scenario: Create cgov_biography
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Biography" content type
        Then page title is "Create Biography"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                        | field_name             |
            | Pretty URL       | biography                    | field_pretty_url       |
            | Full Name        | Full Name                    | title[0][value]        |
            | Browser Title    | Biography                    | field_browser_title    |
            | Meta Description | Biography - Meta Description | field_page_description |
            | First Name       | FirstName                    | field_first_name       |
            | Last Name        | LastName                     | field_last_name        |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

    Scenario: Create cgov_blog_series
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Blog Series" content type
        Then page title is "Create Blog Series"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                                   | field_name             |
            | Page Title       | Blog Series                             | title                  |
            | Pretty URL       | blog-series                             | field_pretty_url       |
            | Browser Title    | Blog Series                             | field_browser_title    |
            | Card Title       | Automated Test Blog Series - Card Title | field_card_title       |
            | Meta Description | Blog Series- Meta Description           | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

    Scenario: Create cgov_blog_post
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Blog Post" content type
        Then page title is "Create Blog Post"
        And user selects "Blog Series" from Blog Series dropdown
        And user fills out the following fields
            | fieldLabel       | value                                   | field_name             |
            | Page Title       | Blog Post                               | title                  |
            | Pretty URL       | blog-post                               | field_pretty_url       |
            | Browser Title    | Blog Post                               | field_browser_title    |
            | Card Title       | Automated Test Blog Series - Card Title | field_card_title       |
            | Meta Description | Blog Post - Meta Description            | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

    Scenario: Create cgov_cancer_center
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Cancer Center" content type
        Then page title is "Create Cancer Center"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                             | field_name             |
            | Pretty URL       | cancer-center                     | field_pretty_url       |
            | Institution Name | Cancer Center                     | title                  |
            | Browser Title    | Cancer Center                     | field_browser_title    |
            | Meta Description | Cancer Center  - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

    Scenario: Create cgov_cancer_research
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Cancer Research List Page" content type
        Then page title is "Create Cancer Research List Page"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                                        | field_name             |
            | Pretty URL       | cancer-research-list-page                    | field_pretty_url       |
            | Page Title       | Cancer Research List Page                    | title                  |
            | Browser Title    | Cancer Research List Page                    | field_browser_title    |
            | Meta Description | Cancer Research List Page - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

    Scenario: Create cgov_event
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Event" content type
        Then page title is "Create Event"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                    | field_name             |
            | Pretty URL       | event                    | field_pretty_url       |
            | Event Title      | Event                    | title                  |
            | Browser Title    | Event                    | field_browser_title    |
            | Meta Description | Event - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

    Scenario: Create cgov_home_landing
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Home and Landing" content type
        Then page title is "Create Home and Landing"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                               | field_name             |
            | Pretty URL       | home-landing                        | field_pretty_url       |
            | Page Title       | Home and Landing                    | title                  |
            | Browser Title    | Home and Landing                    | field_browser_title    |
            | Meta Description | Home and Landing - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page


    Scenario: Create cgov_mini_landing
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Mini Landing Page" content type
        Then page title is "Create Mini Landing Page"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                           | field_name             |
            | Pretty URL       | mini-landing                    | field_pretty_url       |
            | Page Title       | Mini Landing                    | title                  |
            | Browser Title    | Mini Landing                    | field_browser_title    |
            | Meta Description | Mini Landing - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page


    Scenario: Create cgov_press_release
        When user logs in with a role "admin"
        Given user navigates to "/"
        Then user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Press Release" content type
        Then page title is "Create Press Release"
        When user selects test site section
        And user fills out the following fields
            | fieldLabel       | value                             | field_name             |
            | Pretty URL       | press-release                     | field_pretty_url       |
            | Page Title       | Press Release                     | title                  |
            | Browser Title    | Press Release                     | field_browser_title    |
            | Meta Description | Press Release  - Meta Description | field_page_description |
        And user selects "Published" from "Save as" dropdown
        Then user saves the content page

