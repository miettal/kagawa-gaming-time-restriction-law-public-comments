# kagawa-gaming-time-restriction-law-public-comments


 - ocr-text/ にパブコメpdfをOCRに掛けたテキストがあるので遊んでね。PDF1ページごとに1ファイルに分割されてます。ファイル名の規則は <元ファイル名>-<0origin3桁0paddingページ番号>.txt
 - sepalated-text/ パブコメ1件ごとにファイル分割・結合したテキスト、手でやる必要があって、全然進んでない。ファイル名の規則は <元ファイル名>-<開始ページ番号>-<終了ページ番号>.txt

その他
 - pdf/ 元のpdf
 - jpg/ 元のpdfを1ページごとにjpg化したもの
 - tools/ pdf->jpg, jpg->txtにするのに使ったスクリプト

# 今後

下記のようなことをしたいけど、4000件あるから難しいね。

 - パブコメ1件ごとに分割
 - OCR誤認識修正
 - title, date, content等データ構造化
