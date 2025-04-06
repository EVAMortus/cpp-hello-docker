# Используем официальный образ с компилятором g++
FROM gcc:latest

# Копируем код
COPY main.cpp /app/

# Устанавливаем рабочую директорию
WORKDIR /app

# Компилируем
RUN g++ main.cpp -o hello

# Устанавливаем точку входа
CMD ["./hello"]

