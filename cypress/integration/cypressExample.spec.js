it('bar', () => {
  cy.visit('http://whatsmyuseragent.org/')
  cy.screenshot('example.png')
})