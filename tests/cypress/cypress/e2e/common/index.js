import { Given, Then } from "cypress-cucumber-preprocessor/steps";

Given('user navigates to {string}', (path) => {
    cy.visit(path);
})
Then('browser title is {string}', (title) => {
    cy.title().should('eq', title)
})

And('page title is {string}', (title) => {
    cy.get(`h1:contains('${title}')`).should('be.visible');
});

When('user logs in with a role {string}', (username) => {
    cy.login(username, "password123");
})

When('user clicks on {string} tab', (option) => {
    cy.get('ul.toolbar-menu>li>a:visible').contains(option).click({ force: true });
});

And('user clicks on {string} action button', (buttonLabel) => {
    cy.get(`ul.action-links a:contains(${buttonLabel})`).click({ force: true });
});
And('user clicks on {string} content type', (contentType) => {
    cy.get(`ul.admin-list span.label:contains('${contentType}')`).parent().click({ force: true });
});
When('user selects test site section', () => {
    cy.get("input[value='Select Site Section']").click({ force: true });
    cy.getIframeBody('iframe.entity-browser-modal-iframe')
        .find('td.views-field.views-field-entity-browser-select input').check();
    cy.getIframeBody('iframe.entity-browser-modal-iframe')
        .find("input[id='edit-submit'][value='Select Site Section']").click({ force: true });
});

And('user fills out the following fields', (dataTable) => {
    for (const { fieldLabel, value, field_name } of dataTable.hashes()) {
        cy.get(`input[name^='${field_name}']`).as('inputField').parent().find('label').should('include.text', fieldLabel);
        cy.get('@inputField').type(value);
    }
});

And('user selects {string} from {string} dropdown', (option, dropdown) => {
    cy.get(`label:contains('${dropdown}')`).parent().find('select').select(option)
});

When('user saves the content page', () => {
    cy.get("input[id='edit-submit']").click({ force: true });
});

And('user checks {string} checkbox to set section', (setNavRoot) => {
    cy.get(`label:contains("${setNavRoot}")`).parent().find('input').check();
});

And('user clicks on {string} sub tab', (contentSubTab) => {
    cy.get(`ul.admin-list li a:contains("${contentSubTab}")`).click({ force: true });
});

And('user selects {string} option from Operations for {string}', (option, label) => {
    cy.get(`.dropbutton >.list > a:contains("${option}")`).last().click({ force: true });
});

And('user selects {string} from Blog Series dropdown', (blogSeries) => {
    cy.get('select[name="field_blog_series"] option').each($opt => {
        if (($opt[0].textContent).includes(blogSeries)) {
            cy.get('select[name="field_blog_series"]').select($opt[0].textContent);
            return;
        }
    })
});