# docker-compose の立ち上げについてのコマンド一覧
up:
	docker compose up  

build-up:
	docker compose up --build 

build:
	docker compose build

down:
	docker compose down

# Docker のコンテナに入る時のコマンド

api:
	docker compose exec api /bin/sh

sql:
	docker compose exec db  mysql -uuser -p

front:
	docker compose exec app /bin/sh

redis:
	docker compose exec redis /bin/sh

log:
	docker compose logs

# マイグレーションについてのコマンド一覧

migration-create:
	docker compose exec api npx prisma migrate dev init 

db-seed:
	docker compose exec api npx prisma db seed --preview-feature 