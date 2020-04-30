beforeEach(() => {
  cy.visit('/')
})

it('Displays helpful text', () => {
  cy.contains('Edit src/App.js and save to reload.')
})