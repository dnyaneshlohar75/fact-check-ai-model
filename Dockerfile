
FROM public.ecr.aws/lambda/python:3.11

COPY main_req.txt  .

RUN pip3 install -r main_req.txt --target "${LAMBDA_TASK_ROOT}"

COPY requirements.txt  .

RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

COPY . "${LAMBDA_TASK_ROOT}"

COPY app.py "${LAMBDA_TASK_ROOT}"

RUN ["run.lambda_handler"]