if [ "$pipeline" == "true" ]; then
  exit
fi
ansible-playbook -i ${component}-${env}.vikramdevops.store, -e ansible_user=ec2-user -e ansible_password=${SSH_PASSWORD} -e role_name=${component} -e env=${env}  -e vault_token=${vault_token} expense.yml