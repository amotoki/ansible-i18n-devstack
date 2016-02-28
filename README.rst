============================================
ansible-playbook for I18N Horizon check site
============================================

1. Prepare minimum installation of Ubuntu 14.04.

   * Ubuntu server is enough.
   * Other distributions like Fedora may work but I don't test it.
     I am a Debian and Ubuntu user.

2. Install ansible::

       sudo apt-get install python-pip python-dev libyaml-dev
       sudo pip install ansible

3. Prepare zanata.ini.
   Follow the instruction at http://zanata-client.readthedocs.org/en/latest/configuration/

4. Prepare passwords.yml file.
   The following command generates a password.yml with random passwords.
   If you use simpler/easier to remember password for Horizon,
   change ``admin_password`` in the generated passwords.yml::

       ./gen_passwords.sh

5. Run the Ansible playbook in this repository::

       ansible-playbook -i hosts all.yml -K

6. Run devstack::

       cd devstack && ./stack.sh

7. Enjoy!
