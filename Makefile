.PHONY: help install dev build typecheck lint lint-fix test docker-up docker-down clean

help:
	@echo "opencode-manager — bun monorepo (backend + frontend)"
	@echo
	@echo "  make install    - bun install"
	@echo "  make dev        - dev-режим (backend + frontend)"
	@echo "  make build      - сборка всех пакетов"
	@echo "  make typecheck  - проверка типов"
	@echo "  make lint       - линтер"
	@echo "  make lint-fix   - линтер с автофиксом"
	@echo "  make test       - тесты"
	@echo "  make docker-up / docker-down"

install:
	bun install

dev:
	bun run dev

build:
	bun run build

typecheck:
	bun run typecheck

lint:
	bun run lint

lint-fix:
	bun run lint:fix

test:
	bun run test

docker-up:
	bun run docker:up

docker-down:
	bun run docker:down
