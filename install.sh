docker-compose build
docker-compose up -d
docker-compose run ortho-planner-front rake db:create
docker-compose run ortho-planner-front rake db:migrate