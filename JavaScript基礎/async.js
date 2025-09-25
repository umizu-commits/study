console.log("らん");

// 同期させたい処理を記載する
new Promise((resolve) => {
  // 3秒後に実行する処理
  setTimeout(() => {
    console.log("て");
    // resolve()は処理が終わったことを示す
    resolve();
  }, 3000);
  // 上記のresolve()で処理が終わったことを受け取りthen()のあとの処理が実行される
}).then(() => {
  console.log("くん");
});