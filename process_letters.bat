set paths[0]="C:\Users\Administrator\Documents\font-diff\filtered-fonts\fonts\LOWER\a"
set paths[1]="C:\Users\Administrator\Documents\font-diff\filtered-fonts\fonts\LOWER\b"

for /F "tokens=2 delims==" %%s in ('set paths[') do echo %%s

python test.py
python test.py
python test.py
