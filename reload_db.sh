docker-compose stop
docker-compose run ortho-planner-front rake db:drop
docker-compose run ortho-planner-front rake db:create
docker-compose run ortho-planner-front rake db:migrate
docker-compose up -d