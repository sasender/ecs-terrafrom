[
   {
      "portMappings":[
         {
            "hostPort":80,
            "protocol":"tcp",
            "containerPort":80
         }
      ],
      "cpu":10,
      "memory":300,
      "image":"nginx",
      "name":"nginx",
      "logConfiguration":{
         "logDriver":"awslogs",
         "options":{
            "awslogs-region": "${var.region}",
            "awslogs-stream-prefix": "ecs",
            "awslogs-group": "${aws_cloudwatch_log_group}"
         }
      }
   }
]