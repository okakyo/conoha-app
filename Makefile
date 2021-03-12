# docker-compose の立ち上げについてのコマンド一覧
up:
	docker-compose -f docker-compose.yml -f docker-compose.local.yml up 

build-up:
	docker-compose -f docker-compose.yml -f docker-compose.local.yml up --build

build:
	docker-compose -f docker-compose.yml -f docker-compose.local.yml build

down:
	docker-compose down

# Docker のコンテナに入る時のコマンド

api:
	docker-compose exec api /bin/sh

sql:
	docker-compose exec db /bin/sh

front:
	docker-compose exec app /bin/sh
redis:
	docker-compose exec redis /bin/sh

# マイグレーションについてのコマンド一覧

migration-create:
	docker-compose exec api  sh -c "npm run typeorm:migration:create"

migration-generate:
	docker-compose exec api  sh -c "npm run typeorm:migration:generate"

migration-run:
	docker-compose exec api  sh -c "npm run typeorm:migration:run"

migration-revert:
	docker-compose exec api  sh -c "npm run typeorm:migration:revert"

seeding-run:
	docker-compose exec api  sh -c "npm run typeorm:seed:run"

schema-drop:
	docker-compose exec api  sh -c "npm run typeorm:schema:drop"

schema-sync:
	docker-compose exec api  sh -c "npm run typeorm:schema:drop && npm run typeorm:migration:run && npm run typeorm:seed:run"

# Next.js の操作についての一覧
codegen:
	docker-compose exec app sh -c "npm run codegen"