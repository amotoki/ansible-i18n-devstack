============================================
ansible-playbook for I18N Horizon check site
============================================

.. warning::

   This repository is not well maintained now because OpenStack i18n team
   is now working on the translation check site as OpenStack infra.
   As of the end of Feb 2016, this repository works well.

1. Prepare minimum installation of Ubuntu 14.04.

   * Ubuntu server is enough.
   * Other distributions like Fedora may work but I don't test it.
     I am a Debian and Ubuntu user.

2. Install ansible::

       sudo apt-get install python-pip python-dev libyaml-dev
       sudo pip install ansible

3. Prepare ``passwords.yml`` file.
   The following command generates a ``password.yml`` with random passwords.
   If you use simpler/easier to remember password for Horizon,
   change ``admin_password`` in the generated ``passwords.yml``::

       ./gen_passwords.sh

4. Prepare zanata.ini (``$HOME/.config/zanata.ini``).
   Follow the instruction at http://zanata-client.readthedocs.org/en/latest/configuration/

   Instead of creating zanata.ini, you can add the following entries
   to ``passwords.yml`` generated in the previous step alternatively.
   In this case, ansible run at the next step deploys ``zanata.ini``
   appropriately.

   ::

       zanata_username: USERNAME
       zanata_apikey: APIKEY

5. Run the Ansible playbook in this repository::

       ansible-playbook -i hosts all.yml -K

6. Run devstack::

       cd devstack && ./stack.sh

7. Enjoy!
