ansible -i inventory all -m ping 
ansible ubuntu1 -m setup
ansible all -m shell -a "uptime"
ansible all -m command -a "pwd"
ansible all -m copy -a "src=file.txt dest=/home/user"
ansible all -m copy -a "src=file.txt dest=/ mode=777" -b #повысить права до root
ansible all -m file -a "path=/home/user/file.txt state=absent"
ansible all -m get_url -a "url=https://edu.postgrespro.ru/demo-small.zip dest=/home/user"
ansible centos -m yum -a "name=httpd state=installed" -b
ansible centos -m yum -a "name=httpd state=removed" -b
ansible centos -m service -a "name=httpd state=started enabled=yes" -b
