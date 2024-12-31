FROM public.ecr.aws/lambda/python:3.11

COPY main_requirements.txt  .

RUN  pip3 install -r main_requirements.txt --target "${LAMBDA_TASK_ROOT}"

COPY requirements.txt .

RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

COPY . "${LAMBDA_TASK_ROOT}"

CMD ["run.lambda_handler"]