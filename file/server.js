const express = require('express');
const { dirUtil } = require('./dirUtil');

const app = express();
const port = 3333;

app.get('/', (req, res) => {
  res.send('yysoft node server');
});

app.get('/push', (req, res) => {
  res.send('yysoft node server');
});

app.get('/pull', (req, res) => {
  let targetDir = req.url.substring(req.url.indexOf('=') + 1);
  targetDir = decodeURIComponent(targetDir);
  console.log('🚀 ~ app.get ~ targetDir:', targetDir);

  dirUtil.compressDir(targetDir).then(zipPath => {
    console.log('🚀 ~ dirUtil.compressDir ~ zipPath:', zipPath);
    res.download(zipPath);
    // dirUtil.removeFile(zipPath);
  });
});

app.listen(port, () => {
  console.log(`yysoft-node listening at http://localhost:${port}`);
});
