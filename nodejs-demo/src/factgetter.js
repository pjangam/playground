const fs = require('fs');
const path = require('path');

const getRandomInt = (max) => {
  return Math.floor(Math.random() * Math.floor(max));
};

const getFact = () => {
  const num = getRandomInt(100);
  return get_line(path.join(__dirname, './facts.txt'), num);
};

const get_line = async (filename, line_no) => {
  const factsTxt = fs.readFileSync(filename, { encoding: 'utf8', flag: 'r' });
  const facts = factsTxt.split('\n');
  return facts[line_no];
};

module.exports = {
  getFact,
};
