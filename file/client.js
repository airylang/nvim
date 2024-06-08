const axios = require('axios');
const { dirUtil } = require('./dirUtil');

axios({
  // url: `http://localhost:3333/pull?targetDir=${encodeURIComponent('D://airylang/nvim-master')}`,
  url: `http://1.94.28.88:3333/pull?targetDir=${encodeURIComponent('/nvim')}`,
  method: 'get',
  responseType: 'arraybuffer',
}).then(
  function (response) {
    let filePath = dirUtil.saveFileToTempDir('nvim.zip', response.data);
    console.log('下载完成');
    const unZipDirPath = dirUtil.unZip(filePath);
    dirUtil.copyDir(unZipDirPath + '/' + '/neovim', 'C://Users/e-lang.yu0/AppData/Local/nvim');
  },
  (e) => {
    console.log('错误', e)
  }
)
