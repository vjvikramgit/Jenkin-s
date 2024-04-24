#Install JAVA -8
apt-get install openjdk-8-jdk
#Install GIT and Maven
apt-get install git maven
#Install JAVA -11
sudo apt-get install openjdk-11-jdk
#GETTING THE REPO (jenkins.io-->download --> ubuntu)
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
#Install Jenkins
sudo apt-get install jenkins

update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
systemctl enable jenkins.service
#Get Username & Password For Jenkins Server
Username: Admin
Get Password Cmd: cd /var/lib/jenkins/secrets/,  and after nano initialAdminPassword
#mvn cmd for war generation: mvn clean package
