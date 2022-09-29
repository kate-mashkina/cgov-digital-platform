Feature: As a cms user I want to be able to create cancer center content type to promote cancer centers

Scenario: User is adding new cancer center content
        Given user is navigating to "/user/login"
        When user enters credentials
        And user clicks "Log in" button
        Then user is logged in and the user name "admin" is displayed in the toolbar
        And the tool bar appears at the top
        When user clicks on "Content" tab
        And user clicks on "Add content" action button
        And user clicks on "Cancer Center" content type
        Then page title is "Create Cancer Center"
        When user selects test site section
        # And user fills out the following fields
        #     | field                              | value                               |
        #     | Pretty URL                         | cancer-center                       |
        #     | Browser Title                      | Automated Test Cancer Center        |
        #     | Institution Name                   | Automated Test Cancer Center        |
        #     | Browser Title                      | Automated Test Cancer Center        |
        #     | Meta Description                   | Test Cancer Center Meta Description |
        #     | Parent University/Institution Name | NIH                                 |
        #     | Organization Head Name             | Organization Head Name              |
        #     | Organization Head Title            | Organization Head Title             |
        #     | Street address                     | 123 Magnolia St                     |
        #     | City                               | Arlington                           |
        #     | Zip code                           | 22182                               |
        #     | Phone 1 Label                      | Main Phone                          |
        #     | Phone 1 Number                     | 888-888-8888                        |
        #     | Website Title                      | Website Title                       |
        #     | Website URL                        | https://www.google.com              |
        # And user selects "Cancer Center" from "Institution Type" dropdown
        # And user selects "Virginia" from "State" dropdown
        # And user fills out "Body" text area with "This is a description of cancer institute"
        # And user selects 1 Cancer Center Image from the list of images
        # And user remembers the source of selected image for further verification
        # And user selects "Published" from "Save as" dropdown
        # When user saves the content page
        # Then user is redirected to the site section plus "cancer-center" url

    # Scenario: Verify newly created content
    #     Given user is navigating to the front end site with path site section plus "cancer-center"
    #     Then page title is "Automated Test Cancer Center"
    #     And institution title reads "NIH"
    #     And it's type is "Cancer Center"
    #     And head name and title reads "Organization Head Name, Organization Head Title"
    #     And the address reads "123 Magnolia Str"
    #     And city, state and zipcode reads "Arlington, Virginia 22182"
    #     And phone label is "Main Phone"
    #     And phone number is "888-888-8888"
    #     And website title "Website Title" is a link with href "https://www.google.com"
    #     And description reads "This is a description of cancer institute"
    #     And the cancer center image matching the earlier selected image


    # Scenario: Edit and republish cancer center
    #     Given user is navigating to "/user/login"
    #     When user enters credentials
    #     And user clicks "Log in" button
    #     Then user is logged in and the user name "admin" is displayed in the toolbar
    #     And the tool bar appears at the top
    #     When user clicks on "Content" tab
    #     And user clicks on title "Automated Test Cancer Center" from the list of content
    #     And user clicks on the tool bar status green button "Published"
    #     And user clicks "View in edit form" button from other actions
    #     And user clears out "Pretty URL" field
    #     And user fills out "Pretty URL" field with "cancer-center-edited"
    #     And user clears out "Organization Head Name" field
    #     And user fills out "Organization Head Name" field with "Organization Head Name Edited"
    #     And user removes Cancer Center Image
    #     And user selects 2 Cancer Center Image from the list of images
    #     And user remembers the source of selected image for further verification
    #     And user selects "Published" from "Save as" dropdown
    #     When user saves the content page


    # Scenario: Verify edited content
    #     Given user is navigating to the front end site with path site section plus "cancer-center-edited"
    #     Then page title is "Automated Test Cancer Center"
    #     And institution title reads "NIH"
    #     And it's type is "Cancer Center"
    #     And head name and title reads "Organization Head Name Edited, Organization Head Title"
    #     And the address reads "123 Magnolia Str"
    #     And city, state and zipcode reads "Arlington, Virginia 22182"
    #     And phone label is "Main Phone"
    #     And phone number is "888-888-8888"
    #     And website title "Website Title" is a link with href "https://www.google.com"
    #     And description reads "This is a description of cancer institute"
    #     And the cancer center image matching the earlier selected image

    # Scenario: Clean up
    #     Given user is navigating to "/user/login"
    #     When user enters credentials
    #     And user clicks "Log in" button
    #     Then user is logged in and the user name "admin" is displayed in the toolbar
    #     And the tool bar appears at the top
    #     When user clicks on "Content" tab
    #     And user selects a checkbox next to title "Automated Test Cancer Center" from the list of content
    #     And user clicks on "Apply to selected items" action button
    #     Then the page title is "Are you sure you want to delete this content item?"
    #     When user clicks on "Delete" button
    #     Then the text "Deleted 1 content item." appears on a screen
    #     And the "Automated Test Cancer Center" titled item does not exist in the list of content
