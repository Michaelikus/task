Ansible запускается через контейнер, см. ansible.sh и  Dockerfile
В инвентарь - inventory/hosts-sber.yml вписываем хосты в группы:
sber - общая
jenkins - хост куда поставить jenkins
docker - куда поставить докер(вместе с jenkins)

1. Создаем виртуалки с одинаковым пользователем и паролем, с правами sudo.
2. Далее, от имени этого юзера накатываем роль sys-users, которая загружает ключи и других пользователей 
3. Роль стартовый play - jenkins уже содержит запуск роли docker для jenkins, но можно накатить отдельно на любую группу
4. После развертки дженкинса, вручную надо его инициировать и создать таски для старта ansible

Как вариант, можно сделать jenkins который будет на каждый таск собирать свой контейнер, но это дольше.
Пока - play стартует через установленный в venv ansible...
git pull https://github.com/Michaelikus/task.git

virtualenv vansible
source vansible/bin/activate
pip3 install ansible
pip3 install --upgrade pip
pip3 install --upgrade virtualenv
pip3 install requests
pip3 install ansible
pip3 install ansible-core
pip3 install ansible-lint
pip3 install ansible-playbook-grapher
ansible-galaxy collection install ansible.posix

cp ./ansible.cfg ./ansible.cfg.1
cat ./ansible.cfg.1 | grep -v private_key_file > ./ansible.cfg
echo "private_key_file=/var/lib/jenkins/.ssh/ansible_ed25519" >> ./ansible.cfg
ansible-playbook -i inventory/hosts-sber.yml common.yml


Роль common
- накатывает набор типовых пакетов, которые прописаны в all.yml

