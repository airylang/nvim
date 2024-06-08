const http = require('http');
const fs = require('fs');
const AdmZip = require('adm-zip');
const { cp } = require('node:fs');

const serverFilePath = 'D:/airylang/nvim';
const lastName = serverFilePath.substring(serverFilePath.lastIndexOf('/') + 1);
const saveFilePath = 'D:/temp/' + lastName + '.zip';
const unzipPath = saveFilePath.substring(0, saveFilePath.lastIndexOf('.'));
const copyPath = unzipPath + '/neovim';
const targetPath = 'C:/Users/yulang/AppData/Local/' + lastName

// 发送GET请求
// http.get('http://1.94.28.88:8888/files/download?path=' + encodeURIComponent('/nvim'), (res) => {
http.get('http://localhost:8888/files/download?path=' + encodeURIComponent(serverFilePath), (res) => {

  const fileStream = fs.createWriteStream(saveFilePath);
  res.pipe(fileStream);

  // 使用示例
  setTimeout(() => {
    unzipFile(saveFilePath, unzipPath);
    // copyDir(copyPath, targetPath);
    cp(copyPath, targetPath, {
      recursive: true,
      force: true,
    }, (e) => {
      console.log(e);
    });
  }, 3000);

  // let data = ''

  // // 接收响应数据
  // res.on('data', (chunk) => {
  //   data += chunk;
  // });

  // // 响应结束，处理数据
  // res.on('end', () => {
  //   console.log(data);
  //   fs.appendFile('D:/temp/nvim.zip', data, (e) => {
  //     console.log(e);
  //   });
  // });
}).on('error', (err) => {
  console.error(err);
});


function unzipFile(zipPath, destinationPath) {
  const zip = new AdmZip(zipPath);
  zip.extractAllTo(destinationPath, true);
}

async function copyDir(src, dest) {
  const entries = await fs.readdir(src, { withFileTypes: true }, (e) => {
    console.log(e);
  });
  console.log('🚀 ~ entries ~ entries:', entries);

  await fs.mkdir(dest, { recursive: true }, (e) => {
    console.log(e);
  });

  for (let entry of entries) {
    const srcPath = path.join(src, entry.name);
    const destPath = path.join(dest, entry.name);

    if (entry.isDirectory()) {
      await copyDir(srcPath, destPath);
    } else {
      await fs.copyFile(srcPath, destPath);
    }
  }
}



// 发送POST请求
// const postData = JSON.stringify({ path: '/nvim' });

// const options = {
//   hostname: '1.94.28.88',
//   port: 8888,
//   path: '/files/download',
//   method: 'POST',
//   headers: {
//     'Content-Type': 'application/json',
//     'Content-Length': postData.length
//   }
// };

// const req = http.request(options, (res) => {
//   let data = '';

//   // 接收响应数据
//   res.on('data', (chunk) => {
//     data += chunk;
//   });

//   // 响应结束，处理数据
//   res.on('end', () => {
//     console.log(data);
//   });
// });

// // 发送请求体数据
// req.write(postData);
// req.end();