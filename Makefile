git init
git checkout --orphan `whoami`
git remote add flic git@gitflic.ru:dponyatov/oca.git
git add -A ; git commit -am "." ; git push -uv flic `whoami`