ansible-playbook for I18N Horizon check site
============================================

1. Prepare minimum installation of Ubuntu 14.04.

   * Ubuntu server is enough.
   * Other distributions like Fedora may work but I don't test it.
     I am a Debian and Ubuntu user.

2. Install ansible.

        apt-get install python-pip python-dev libyaml-dev
        pip install ansible

3. Prepare .transifexrc.
   Transifex account is required to download the latest translation.

4. Run the Ansible playbook in this repository.

        ansible-playbook -i hosts all.yml

5. Run devstack

        cd devstack && ./stack.sh

6. Enjoy!
