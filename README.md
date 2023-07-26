# Take Home

This isn't my take home test but something I saw on reddit https://old.reddit.com/r/devops/comments/1590ds7/does_this_task_looks_reasonable_for_an_interview/

I'll just do the first task so I can have it as a reference.


# Run in docker container

    docker run -d -p 80:80 $(docker build -q .)

# Test
    pytest

# deploy using terraform
    TF_VAR_ACCESS_KEY="xxxx" TF_VAR_SECRET_KEY="xxxx" terraform apply
