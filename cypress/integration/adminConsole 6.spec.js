before(() => {
  Cypress.config('baseUrl', 'http://localhost:8080')
})

describe('The admin console', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it('has a navbar with links to the main features', () => {
    cy.contains('GraphQL')
    cy.contains('Data')
    cy.contains('Remote Schemas')
    cy.contains('Events')

    cy.wait(30000)
  })
})