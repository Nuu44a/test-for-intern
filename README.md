# test-for-intern
## Test for DevOps intern

- You have to create a bash script, which can accept a string of arguments of random length
- The first argument can be the port number for further processing. The rest of the arguments are assumed as people's names.
- From this script, a python script is called, to which the necessary arguments are passed.
- This script should generate the simplest file "index.html", in which it is necessary to say "hello" to all the people, whose names are transferred to the bash script, and after that a picture with any meme is inserted.
- After generating this file, the bash script should create a docker image with nginx, in which will be transferred index.html and the meme as a start page, and than launch a container from it.
- The container must be launched interactively, the page must open on the port, specified when launching the bash script, or on port 8080 if the port is not specified.
- This files must be uploaded to a separate open repository on GitHub.
- Beauty of index.html doesn't matter.
- Code comments matter.
- The rest of points, as well as the choice of meme, are at your decision.


## Тест для стажера-ДевОпса

- Необходимо создать bash-скрипт, которому на вход может подаваться строка аргументов произвольной длины. 
- Первый аргумент может быть номером порта для дальнейшей обработки. Остальные аргументы подразумеваются, как имена людей.
- Из этого скрипта вызывается python-скрипт, которому передаются нужные аргументы. 
- Этот скрипт должен генерировать простейший файл index.html, в котором необходимо поздороваться со всеми людьми, имена которых переданы в баш-скрипт и после этого вставлена картинка с любым мемом.
- После генерации этого файла, баш-скрипт должен создать докер-образ с nginx, в который будут переданы index.html и мем, как стартовая страница и запустить из него контейнер.
- Контейнер должен быть запущен в интерактивном режиме, страница должна открываться на порту, указанном при запуске баш-скрипта или на порту 8080, если порт не указан.
- Файлы необходимо загрузить в отдельный открытый репозиторий на ГитХабе.
- Красота index.html не имеет значения.
- Коментарии к коду имеют значение.
- Остальные моменты, как и выбор мема остаются на ваше усмотрение.
