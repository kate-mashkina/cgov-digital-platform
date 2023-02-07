import { Given, Then } from "cypress-cucumber-preprocessor/steps";

Given('user navigates to {string}', (path) => {
    cy.visit(path);
})
Then('browser title is {string}', (title) => {
    cy.title().should('eq', title)
})