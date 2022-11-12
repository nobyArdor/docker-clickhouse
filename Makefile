CLICKHOUSE_PATH=/home/noby.ardor/hadoop/clickhouse

online:
	docker run --rm \
	-v $(CLICKHOUSE_PATH)/data:/var/lib/clickhouse/ \
	-v $(CLICKHOUSE_PATH)/logs:/var/log/clickhouse-server/ \
	-p 18123:8123 -p19000:9000 \
	--name some-clickhouse-server \
	--ulimit nofile=262144:262144 \
	clickhouse/clickhouse-server
stop:
	docker stop  some-clickhouse-server