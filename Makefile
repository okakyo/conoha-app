# docker-compose の立ち上げについてのコマンド一覧
up:
	docker compose up  -d 

build-up:
	docker compose up --build 

build:
	docker compose build

down:
	docker compose down

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

create-migrate:
	docker compose exec api npx prisma migrate dev  --name dev

seed:
	docker compose exec api npx prisma db seed --preview-feature 

migrate:
	docker compose exec api npx prisma migrate deploy --preview-feature

studio:
	docker compose exec api npx prisma studio 
