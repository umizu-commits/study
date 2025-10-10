class PasswordResetsController < ApplicationController
  # rails5以降でのログインエラー解消
  skip_before_action :require_login

  # パスワードのリセットをリクエストします。
  # ユーザーがパスワードリセットフォームにメールアドレスを入力して送信すると、ここが表示されます。
  def create
    @user = User.find_by(email: params[:email])
    # この行は、パスワードをリセットする方法を説明するメールをユーザーに送信します（ランダムトークンを含むURL）
    @user&.deliver_reset_password_instructions!
    # メールが見つかったかどうかに関係なく、手順が送信されたことをユーザーに伝えます。
    # これは、システム内にどのような電子メールが存在するかという情報を攻撃者に漏らさないようにするためです。
    redirect_to(login_path, success: t('password_resets.create.success'))
  end

  # これはパスワードリセットフォームです。
  def edit
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    return not_authenticated if @user.blank?
  end

  # このアクションは、ユーザーがパスワード リセット フォームを送信したときに実行されます。
  def update
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    return not_authenticated if @user.blank?

    # 次の行はパスワード確認の検証を機能させます
    @user.password_confirmation = params[:user][:password_confirmation]
    # 次の行は一時トークンをクリアし、パスワードを更新します
    return render action: 'edit' unless @user.change_password(params[:user][:password])

    redirect_to login_path, success: t('password_resets.update.success')
  end
end
