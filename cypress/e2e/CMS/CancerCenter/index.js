/// <reference types="Cypress" />
import { And } from 'cypress-cucumber-preprocessor/steps';


let imageSrc;
And('user selects {int} Cancer Center Image from the list of images', (num) => {
    cy.get('span:contains("Cancer Center Image")').parent().as('imageUpload').click();
    cy.get('input[value="Select Image"]').click({ force: true });
    cy.getIframeBody('iframe.entity-browser-modal-iframe').find("input[id^='edit-entity-browser-select-media']").first().check();
    cy.getIframeBody('iframe.entity-browser-modal-iframe').find("input[id='edit-submit'][value='Select image']").click({ force: true });
});
And('user remembers the source of selected image for further verification', () => {
    cy.get('details img').then($el => {
        imageSrc = $el[0].getAttribute('src');
        console.log(imageSrc)
    });
});