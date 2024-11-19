# 地理的犯罪予測手法の改良
pythonを使用した犯罪予測アルゴリズムの実装です。  




# 既存手法
## RiskTerrainModeling(RTM)の概要
Caplan, J., Kennedy, L., and Barnum , J.  Risk Terrain Modeling for Spatial Risk Assessment,2015(https://academicworks.cuny.edu/cgi/viewcontent.cgi?article=1192&context=jj_pubs)

・地理情報を活用して犯罪リスクを予測する手法

・犯罪に関連する**地理的要因（空き家,放置車両,etc) の位置情報**を利用して、将来的な犯罪リスクを予測

・視覚的に**高リスクエリア** と**低リスクエリア**を表現

・犯罪に関連する**地理的要因の重要度**を分析

・**左図**：元論文のモデルの犯罪リスク予測結果

・**右図**：実際に犯罪が起こった場所


![image](https://github.com/user-attachments/assets/7832af67-ed6b-4c4c-8559-56ff89e68947)

# RTMのアルゴリズム

![image](https://github.com/user-attachments/assets/7d87769f-7762-4326-a23a-bcd1e37cb728)

# レイヤーの構成

![image](https://github.com/user-attachments/assets/18e63130-2587-4199-9552-22aef4e58a4d)

# データの前処理

![image](https://github.com/user-attachments/assets/11f93adf-ec4b-464d-ad36-58f9debb6af4)

# Lasso回帰で変数選択

![image](https://github.com/user-attachments/assets/05070405-f506-4a5e-b887-afc82ba8254c)

# 実験条件

![image](https://github.com/user-attachments/assets/f7ad9b3f-4aab-44e4-be5b-f39e0c835fb3)

# 学習結果の図示
![image](https://github.com/user-attachments/assets/24c5d32a-988f-407e-8b37-1e22cc81f228)

# 学習結果の比較

![image](https://github.com/user-attachments/assets/5ac5667f-ec94-4e40-98ca-37920f1a8527)

# 実行環境

![image](https://github.com/user-attachments/assets/305aba37-3e21-4d34-b5d9-ca240f8833c6)




## makeGDF.ipynb
・シカゴを対象領域として、グリッドマップを作成

・犯罪に関連する地理的要因の位置情報を格納したGeoDataframeを作成

・ChicagoDataPortalのapiを利用

・特徴量エンジニアリング

・座標系の変換


![image](https://github.com/user-attachments/assets/97a1a031-8b1e-42d4-8fc6-c18b0010b61e)




## featureGDF_2011_13.ipynb

・作成したGeoDataframeを利用して、犯罪リスクを予測

・学習結果を図示し、実際の犯罪分布と比較

![image](https://github.com/user-attachments/assets/c52a46a5-e55e-462f-9f6b-8b37da56a861)
