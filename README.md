# 地理的犯罪予測手法の改良
pythonを使用した犯罪予測アルゴリズムの実装です。  




## 既存手法
### RiskTerrainModeling(RTM)の概要
Caplan, J., Kennedy, L., and Barnum , J.  Risk Terrain Modeling for Spatial Risk Assessment,2015
(https://academicworks.cuny.edu/cgi/viewcontent.cgi?article=1192&context=jj_pubs)

・地理情報を活用して犯罪リスクを予測する手法
・犯罪に関連する**地理的要因（空き家,放置車両,etc) の位置情報**を利用して、将来的な犯罪リスクを予測
・視覚的に**高リスクエリア** と**低リスクエリア**を表現
・犯罪に関連する**地理的要因の重要度**を分析
・左図：元論文のモデルの犯罪リスク予測結果
・右図：実際に犯罪が起こった場所

![image](https://github.com/user-attachments/assets/7832af67-ed6b-4c4c-8559-56ff89e68947)




### makeGDF.ipynb
・シカゴを対象領域として、グリッドマップを作成

・犯罪に関連する地理的要因の位置情報を格納したGeoDataframeを作成

・ChicagoDataPortalのapiを利用

### featureGDF_2011_13.ipynb:作成したGeoDataframeを利用して、犯罪リスクを予測

・2011年～2013年を学習データ
・2014年をテストデータ
・

![image](https://github.com/user-attachments/assets/c52a46a5-e55e-462f-9f6b-8b37da56a861)
