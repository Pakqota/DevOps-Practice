#!/bin/bash
#1. Создать директорию ```pw2``` в ```/storage```.
cd /storage
mkdir pw2
cd pw2

#2. Создать файл ```file1``` и записать в него **Hello World**.
echo "Hello, World!" > file1

#3. Создать файл ```file2``` и записать в него текущую дату и время.
date > file2

#4. Добавить строку своим именем в файл ```file1```.
whoami >> file1

#5. Добавить 3 строки **Linux is awesome** в файл ```file2```. Используйте цикл for.
for i in{1..3}
do
	echo "Linux is Awsome!"
done

#6. Скопировать содержимое файла ```file1``` в файл ```file2``` (*не перезаписывая его*).
cat file1 >> file2

#7. Создать файл ```file3``` и добавить в него содержимое файлов ```file1``` и ```file2```.
cat file1 file2 > file3 

#8. Переименовать файл ```file1``` в ```newfile1```.
mv file1 newfile1

#9. Перенаправить вывод команды ```ls``` в файл ```file4``` **3** раза.
for i in {1..3}
do
	ls > file4
done

#10. Отобразить содержимое файла ```file4``` и сохранить его в файл ```file5```.
cat file4 > file5

#11. Вывести количество строк в файле ```file5```.
wc -l file5

#12. Создать пустую директорию ```dir1```.
mkdir dir1

#13. Переместить файл ```file5``` в директорию ```dir1```.
mv file5 dir1/

#14. Создать символическую ссылку на файл ```file4``` в текущей директории.
ln -s file4 s_file4

#15. Скопировать содержимое директории ```dir1``` в директорию ```dir2```.
mkdir dir2
cp -r dir1/* dir2/

#16. Показать только имена файлов в текущей директории.
ls -la | grep "^-"

#17. Перезаписать файл ```file5``` пустым содержимым.
>> file5

#18. Вывести на экран информацию о системе и ядре (*uname -a*) и сохранить ее в файл ```file6```.
uname -a | tee -a file6

#19. Создать новую директорию с именем ```mydir```.
mkdir mydir

#20. Создать пустой файл с именем ```file7``` в директории ```mydir```.
>> mydir/file7

#21. Удалить директорию ```mydir``` и все ее содержимое.
rm -rf mydir

#22. Вывести только последние 2 строки файла ```file2```.
tail -n 2 file2
