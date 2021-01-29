const factGetter = require('./../src/factgetter');
const expect = require('expect');

describe('fact reader', () => {
  it('should return fun fact', async () => {
    const fact = await factGetter.getFact();
    expect(typeof fact).toBe('string');
  });
});
