#!/bin/bash

# install some basics
sudo yum -y install epel-release
# sudo yum -y install ansible - since it is upgraded to 2.2 it got broken! I need 2.1, but to meet build depends... install 2.2 then uninstall
sudo yum -y install ansible 
sudo yum -y remove ansible 
sudo yum -y install python-pip
sudo pip install ansible==2.1
sudo yum -y install git
sudo yum -y install net-tools
sudo yum -y install tmux
sudo yum -y install wget
sudo rm -rf /root/.ssh/
sudo mkdir /root/.ssh
sudo chmod 700 /root/.ssh
echo '-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEA1HEYnUgybJEThY1drXqLRR9gOvtL8MgFNUy3Tst0P22+toan
hNKzNAGyaqJUMnmOlJ8KeXe8HEn0emzeRAojm06Ajo0IW6ycSHw2WVj/fS+uF3ci
hRkBeClR+jS1bObIpl40KSJ34s0heATHYuS0amifjAT2+Btb0lflPz6Rv8OUmtO9
I+JqOJ0sZmh7SSqrhws9At1SdmPtIOfOU6/Jkxd5bxdZSn9stnJfcxsclEJbM9Cv
jQGtbyXUXibdbVzoBBmb9l6BeYdvqRbQG4eB3csJocAxAlOEOvzh0R2xbkI1LAw0
X3psfscXeEhBbKL5lrV8sZKYUm8XRqi2sBkn1QIDAQABAoIBAE1kYiYyPgRlGaqG
pIDlasUkuAbks3alN5iCOSlgXxoYXejaxz5RD+27TIciWfAFbpbgFY3Iu+PGYWUU
MiixVOVoRNcps8jJ6ilR7u6/yFuPuilcQlwgjvN6gh3Xg9yHesN5ACGYJ/qc5jt1
6jkxvjQhpzX4PQyH0vye/qn6nlgwOwpCQf52snkcFERsHlvZieQGWkJpoYMyQdqc
0VfXbjec4tdXjGNoeU+wW4RdyRbCZnautBF1UAEblRkOKcwWZKWfQm5YeaLJd2ee
DZQy/n1YQfaMHkttysvIfoq1/Ze6WJbAf/XDcDme4EgALF+KfxwFqw9x2Z/mz2vd
zgKAGeUCgYEA7YAWigCwZpNVMlPgtD7oOD58vxmCxTRkJDxM7u1v56lnAGL4oJfC
PEMi8jzvZAc618utUWaOMy3Low21Vtr/Za/RptSk+TPzooFXw7RtrPDya63r2KLD
bsRxI2We2IZIpVzIRW3lFx9c89GjJ51xnQzvKLQ8nUEA+D7vAkOHsHcCgYEA5P1S
8poGi7zi3sc41zh/A4x96WsANGb2TjUXd/7CHhOPRWUBZfa4opx8/r2SSZ7jR5BF
TqTKVe8CAivVgQPJNXhXhqwyPx63xfsivoh8EyIxgNqIwNC/rbzvoZs3N7e2pl5m
NKMfV9PZayZmF2DeyojuFhZaOeIbZ38TRXFcKRMCgYAXNg593EVhMQMBkSsD0qYV
YR4F+zNJnK4w0Gfgbfoi1O6JHiMYZtyH0TPoIsZuqzo3/uLocrJxFAez3tIbM/oD
8SP3Pw8Ef+xOtH9kVAzn+wBmP7AuEvIwsCgygmr81FrjNmcoSe46zUjjV1ivtXZ2
F96DxuGpqMG0gUoQmZL4TwKBgFm5RNoYLf5s6XwfFY+G7IWoc+GU8oSV32aveN2k
rcz5Hwcy14RrUtcsd/GcuAguwKFWz0FMYpefSest379oi1tvJuR27k07LQjfKTL8
6ZjZqgnyFuluIdzijgaFefJUArZXgLaZP/u635MTfaclZsZ3NsriwUGy7cf0y8lG
7LSPAoGBAOeggKCC9XKWuGyU5GWqRfJ8DhWycJ7CWTpoolOgbB6iOJhgC3nQA8gr
wC/EEo5P3i5+8+EHyutqWzn2WCvoPg46uFQ7FpGd1gt6BK6EFb+aFlB+zVW9ffEG
9NngJE4Gliu3UBBJcQW8k+lbi4rALDVP3HXIyp309j7h2h9HJQeW
-----END RSA PRIVATE KEY-----' | sudo tee /root/.ssh/id_rsa

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUcRidSDJskROFjV2teotFH2A6+0vwyAU1TLdOy3Q/bb62hqeE0rM0AbJqolQyeY6Unwp5d7wcSfR6bN5ECiObToCOjQhbrJxIfDZZWP99L64XdyKFGQF4KVH6NLVs5simXjQpInfizSF4BMdi5LRqaJ+MBPb4G1vSV+U/PpG/w5Sa070j4mo4nSxmaHtJKquHCz0C3VJ2Y+0g585Tr8mTF3lvF1lKf2y2cl9zGxyUQlsz0K+NAa1vJdReJt1tXOgEGZv2XoF5h2+pFtAbh4HdywmhwDECU4Q6/OHRHbFuQjUsDDRfemx+xxd4SEFsovmWtXyxkphSbxdGqLawGSfV root@devops01.devops.pl' | sudo tee /root/.ssh/id_rsa.pub

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUcRidSDJskROFjV2teotFH2A6+0vwyAU1TLdOy3Q/bb62hqeE0rM0AbJqolQyeY6Unwp5d7wcSfR6bN5ECiObToCOjQhbrJxIfDZZWP99L64XdyKFGQF4KVH6NLVs5simXjQpInfizSF4BMdi5LRqaJ+MBPb4G1vSV+U/PpG/w5Sa070j4mo4nSxmaHtJKquHCz0C3VJ2Y+0g585Tr8mTF3lvF1lKf2y2cl9zGxyUQlsz0K+NAa1vJdReJt1tXOgEGZv2XoF5h2+pFtAbh4HdywmhwDECU4Q6/OHRHbFuQjUsDDRfemx+xxd4SEFsovmWtXyxkphSbxdGqLawGSfV root@devops01.devops.pl' | sudo tee /root/.ssh/authorized_keys

echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjgTEnAmnm+Oq+paehGu1mIyHjWNnoIJC6+KlCsLKwvOyEiHwqtnfPdv6LAGFoRSWmsnHfwHeeZLLJDvO/+WIRApXtEJDn9SGgjZ4oifHxlDuwdm9mA815iAywko/tThIxW122dI3R/Zyu5Jds0qgEAinMaQFpCAHSdsq/lvDzi1EJHulrpCLCL8bVlULj1EZzyfMXQFHjqguB0xEwrPN1rgYCoUjlWLYc52hf00Jlmi6Z4M/wdLhN5AilqlAKc8EOg9LgPLPLUHHbCE+5IVSmFRcaFGGE1TqQon6XWp0oIoS4CA0nn3qAPPT9HyBwa9mn6HkSUo7QtW2R/DaTYbPv d47zm3@asus' | sudo tee -a /root/.ssh/authorized_keys


sudo chmod 600 /root/.ssh/id_rsa
sudo chmod 644 /root/.ssh/id_rsa.pub
sudo chmod 600 /root/.ssh/authorized_keys
sudo sed -i 's/^127.*/127.0.0.1 localhost localhost.localdomain localhost4 localhost4.localdomain4/g' /etc/hosts
echo "192.168.100.101 master01.devops.pl master01 ldap.devops.pl" | sudo tee -a /etc/hosts
echo "192.168.100.102 devops01.devops.pl devops01 jenkins.devops.pl nexus.devops.pl" | sudo tee -a /etc/hosts
echo "192.168.100.103 devops02.devops.pl devops02 gerrit.devops.pl" | sudo tee -a /etc/hosts
echo "192.168.100.104 app01.devops.pl app01 app.devops.pl" | sudo tee -a /etc/hosts
ssh-keyscan master01 | sudo tee -a /root/.ssh/known_hosts
ssh-keyscan devops01 | sudo tee -a /root/.ssh/known_hosts
ssh-keyscan devops02 | sudo tee -a /root/.ssh/known_hosts
ssh-keyscan app01 | sudo tee -a /root/.ssh/known_hosts

ln -s -f /usr/share/zoneinfo/Europe/Warsaw /etc/localtime

### Tools & Roles

cd /tmp && git clone https://github.com/d47zm3/vagrant/
sudo wget https://raw.githubusercontent.com/d47zm3/vagrant/master/files/.tmux.conf -O /root/.tmux.conf

sudo mkdir /etc/ansible
sudo rm -f /etc/ansible/hosts
sudo rm -rf /etc/ansible/roles/

sudo ln -s /tmp/vagrant/ansible-roles/ /etc/ansible/roles
sudo ln -s /tmp/vagrant/ansible-playbooks/ /etc/ansible/playbooks
sudo ln -s /tmp/vagrant/ansible-hosts /etc/ansible/hosts

sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/ipaserver.yml
sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/ipaclients.yml
sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/jenkins.yml
sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/gerrit.yml
sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/nexus.yml
sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/app-server.yml
sudo ansible-playbook -e 'host_key_checking=False' /etc/ansible/playbooks/integrate.yml
