# 地理的犯罪予測手法の改良

pythonを使用した犯罪予測アルゴリズムの実装です。

ライブラリ


## 既存手法
### RiskTerrainModeling(RTM)の概要
・地理情報を活用して犯罪を予測する手法  
・犯罪に関連する**地理的要因（空き家,放置車両,etc) の位置情報**を利用して、将来的な犯罪リスクを予測  
・視覚的に**高リスクエリア** と**低リスクエリア**を表現 
・犯罪に関連する**地理的要因の重要度**を分析  
![image](https://github.com/user-attachments/assets/cbb39c9e-341d-43f5-ba96-f81a098d7044)　![image](https://github.com/user-attachments/assets/c1ee311e-60ea-4aee-8a24-19a0d6b080e0)



### RTMのアルゴリズム

## 2011~2013年を学習データ、2014年をテストデータ
### makeGDF.ipynb:データを前処理し特徴量を生成するプログラム
### featureGDF_2011_13.ipynb:前処理したデータを使って犯罪リスクを予測するプログラム
