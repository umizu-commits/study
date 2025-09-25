//HTML要素が読み込まれてから処理を実行するようにする記述
window.addEventListener('load', () => {
  //ボタンの要素を取得
  const button = document.querySelector("button")
  //リポジトリ一覧を表示するulの要素を取得
  const repositorySpace = document.querySelector("#repository_list")
  //要素に特定のイベントが発火した際に関数の処理が実行されるようにする。ここではClick
  button.addEventListener('click', () => {
    //inputの情報を取得
    const githubName = document.querySelector("#github_name").value
    //`${}`を使うとRubyの"#{}"のように変数の展開が出来ます
  //fetchを使ったHTTPリクエストを送る
  //自分のGitHubNameを入れてください
  fetch('https://api.github.com/users/umizu-commits/repos')
  .then((response) => response.json())
  .then((data) => {
//for文を使ってdataの配列の要素をrepositoryInfoという変数に一回一回格納する
      for(repositoryInfo of data){
        //li要素を作成
        const li = document.createElement("li")
        //li要素にリポジトリの名前を入れる
        li.innerHTML = repositoryInfo["name"]
        //リポジトリ表示エリアにli要素を追加する
        repositorySpace.appendChild(li)
  }
});
})
})
