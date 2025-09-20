// 関数1
// 1.関数 chooseName() を定義します。これは、指定された配列 (names) から指定された段落 (para) にランダムな名前を出力します。
// 2.chooseName() を一度実行します。

const names = [
  "Chris",
  "Li Kang",
  "Anne",
  "Francesca",
  "Mustafa",
  "Tina",
  "Bert",
  "Jada",
];
const para = document.querySelector("p");

// 以上のコードは編集しないでください。

// ここにコードを追加
const para = document.querySelector("p");

function chooseName(names) {
  const randomIndex = Math.floor(Math.random() * names.length);
  const chosenName = names[randomIndex];
  para.textContent = chosenName;
}

chooseName(names);

// 関数2
// 関数に関連する2つ目の課題では、指定された5つの入力変数に基づいて、指定された<canvas>（参照する変数canvas、コンテキストはctxで利用できる）に長方形を描画する関数を作成する必要があります。
// x — 長方形の X 座標
// y — 長方形の Y 座標
// width — 長方形の幅
// height — 長方形の高さ
// color — 長方形の色

const canvas = document.querySelector("canvas");
const ctx = canvas.getContext("2d");
const x = 50;
const y = 60;
const width = 100;
const height = 75;
const color = "blue";

// 以上のコードは編集しないでください。

// ここにコードを追加
function drawRectangle(x,y,width,height,color){
  ctx.fillStyle = color;
  ctx.fillRect(x,y,width,height);
}
drawRectangle(x, y, width, height, color);


// 関数3
// この課題を完成させるには、次のようにしてください。
// 1.乱数を生成するコードを random() という別の関数に再編成します。この関数は、乱数の範囲となる 2 つの一般的な引数を取り、その結果を返します。
// 2.chooseName() 関数を更新して、乱数関数を使用するようにし、選択する配列を引数として受け取り（より柔軟になります）、結果を返すようにします。
// 3.返された結果を段落 (para) の textContent に出力します。

const names = [
  "Chris",
  "Li Kang",
  "Anne",
  "Francesca",
  "Mustafa",
  "Tina",
  "Bert",
  "Jada",
];
const para = document.querySelector("p");

// 以上のコードは編集しないでください。

// 以下のコードを更新してください

function random(min, max) {
  const num = Math.floor(Math.random() * (max - min)) + min;
  return num;
}

function chooseItem(array) {
  const choice = array[random(0, array.length)];
  return choice;
}

para.textContent = chooseItem(names);


// 関数4
// この課題では、名前の配列があり、 Array.filter() を使用して 5 文字より短い名前だけの配列を取得しています。フィルターには現在、名前の長さを調べる関数 isShort() が名前付きで渡され、名前が 5 文字未満の場合は true を返し、そうでない場合は false を返します。

//この課題を完成させるには、isShort() 内の機能を、アロー関数として filter() の呼び出し内に直接含めるようにコードを更新します。どれだけコンパクトにできるかを試してみてください。

const names = [
  "Chris",
  "Li Kang",
  "Anne",
  "Francesca",
  "Mustafa",
  "Tina",
  "Bert",
  "Jada",
];
const para = document.querySelector("p");

// 以上のコードは編集しないでください。

// 以下のコードを更新してください

function isShort(name) {
  return name.length < 5;
}

const shortNames = names.filter(name => name.length < 5);
para.textContent = shortNames;