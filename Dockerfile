# Используем официальный образ nginx
FROM nginx
# Открываем порт 80 для внешнего доступа
EXPOSE 80
# Копируем конфигурационные файлы и статические страницы в файловую систему образа 
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html
# Задаем переменную окружения
ENV HELLO hello world
# Запускаем команду оболочки в контейнере с использованием переменной
RUN echo $HELLO
