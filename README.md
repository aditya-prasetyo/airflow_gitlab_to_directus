 langkah-langkah bisa diakses berikut [https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html)

```bash
mkdir -p ./dags ./logs ./plugins ./config
echo -e "AIRFLOW_UID=$(id -u)" >> .env
echo -e "PYTHONPATH=/opt/airflow/dags" >> .env
echo -e "GITLAB_TOKEN=" >> .env

```

```bash
docker compose run airflow-cli airflow config list
```

```bash
docker compose up airflow-init

```
```bash
docker compose up -d
```

 Setelah melakukan `docker compose up airflow-init`, tambahkan additional variable di `.env` ex. `GITLAB_TOKEN`

 Setelah itu lakukan `docker compose up -d`
