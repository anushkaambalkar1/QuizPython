# DevOps Project - CICD pipeline implementation using AWS EC2 instance and thereby using jenkins, docker and github webhook!
# Commands on aws ec2 instance to install java, jenkins, docker and thus implementing pipeline and creation of docker image and docker container. Also docker image is then killed to build another docker image and container but by using jenkins and not by aws ec2 instance. 
    1  clear 
    2  sudo apt update
    3  sudo apt install openjdk-11-jre
    4  java --version
    5  sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
    6  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
    7  sudo apt-get update
    8  sudo apt-get install jenkins
    9  jenkins --version
    10  sudo systemctl enable jenkins
    11  sudo systemctl start jenkins
    12  sudo systemctl status jenkins
    13  sudo cat /var/lib/jenkins/secrets/initialAdminPassword
    14  ssh-keygen
    15  ls
    16  cat id_rsa
    17  cd .ssh
    18  ls
    19  cat id_rsa
    20  cat id_rsa.pub
    21  cd
    22  cd /var/lib/jenkins/workspace/QuizPipeline
    23  ls
    24  sudo apt install python3
    25  python3 quiz.py
    26  sudo rm Dockerfile
    27  sudo apt install docker.io
    28  sudo vim Dockerfile
    29  ls
    30  docker build . -t quiz-game
    31  sudo usermod -a -G docker $USER
    32  sudo reboot
    33  clear
    34  history
    35  cd /var/lib/jenkins/workspace/QuizPipeline
    36  docker build . -t quiz-game
    37  docker run -d --name quiz-game -p 8000:8000 quiz-game
    38  docker ps
    39  docker kill 1d6c50b50f11
    40  history
    41  sudo chmod 777 /var/lib/jenkins/workspace/QuizPipeline
    42  sudo usermod -a -G docker jenkins
    43  sudo systemctl restart jenkins
    44  history
# After all this code runs successfully on ec2 and docker container and image is built by using both ec2 instance and jenkins.
# At the end, Github webhook is also created which automatically reflects the changes in the jenkins project whenever the changes are made in the code of the project from the developer end.
