FROM public.ecr.aws/lambda/python:3.10

COPY rnn_model.h5 .

COPY compulsory_req.txt .
RUN pip3 install -r compulsory_req.txt --target "${LAMBDA_TASK_ROOT}"

COPY requirements.txt  .


RUN  pip3 install -r requirements.txt --target "${LAMBDA_TASK_ROOT}"

COPY app.py ${LAMBDA_TASK_ROOT}

RUN python app.py