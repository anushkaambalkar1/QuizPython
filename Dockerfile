FROM python:3
ADD quiz.py .
CMD ["python","-u","quiz.py"]