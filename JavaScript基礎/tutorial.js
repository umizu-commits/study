new Promise((resolve, reject) => {
  // 非同期で処理したいことを記述
  // 成功したらresolve()を呼ぶ
  resolve()
  // 失敗したらreject()を呼ぶ
  reject()
}).then(() => {
  // 上のresolve()が実行された後の処理
  console.log("resolveが実行されてthenの処理が動きました")
  })
  .catch(() => {
  // 上のreject()が実行された後の処理
  console.log("rejectが実行されてcatchの処理が動きました")
  })