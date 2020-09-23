ansible-galaxy install -c -f -p roles/ -r requirements.yml
if [ x$1 == x"custom" ];then
    ansible-playbook -i roles/ansible-workspace-config/inventory playbook_custom.yml
else
    ansible-playbook -i roles/ansible-workspace-config/inventory playbook.yml
fi
