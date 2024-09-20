#!/bin/bash

# Директория, которую нужно архивировать
SOURCE_DIR="/path/to/your/directory"

# Директория, куда будет сохраняться архив
DEST_DIR="/path/to/backup/directory"

# Имя архива с таймстемпом
ARCHIVE_NAME="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Создание архива
tar -czvf "$DEST_DIR/$ARCHIVE_NAME" -C "$SOURCE_DIR" .

# Проверка успешности операции
if [ $? -eq 0 ]; then
    echo "Резервное копирование успешно завершено."
    echo "Архив создан: $DEST_DIR/$ARCHIVE_NAME"
else
    echo "Резервное копирование не удалось."
fi
