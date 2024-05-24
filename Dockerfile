# ベースイメージの指定
FROM openjdk:17

# ワーキングディレクトリの設定
WORKDIR /app

# 正確なJARファイル名を指定してコピーする
COPY build/libs/Sample-0.0.1-SNAPSHOT.jar app.jar

# ポートの公開
EXPOSE 8080

# アプリケーションの実行コマンド
ENTRYPOINT ["java", "-jar", "app.jar"]
