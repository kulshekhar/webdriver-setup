describe('Default test', () => {
  it('runs successfully', async () => {
    browser.url('/');
    expect(browser.getTitle()).toBe('page title');
    expect(browser.getText('body')).toContain('placeholders');
  });
});
