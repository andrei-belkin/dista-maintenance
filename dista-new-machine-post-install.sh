clear
echo
echo "# ========== FETCHING ALL UPDATES =========="
echo
sudo apt update
echo
echo "# =========== INSTALLING UPDATES ==========="
echo
sudo apt dist-upgrade -y
echo
echo "# ====== AUTOCLEANING THE UPDATE CACHE ====="
echo
sudo apt autoclean -y
echo
echo "# ==== AUTOREMOVING UNNECESSARY PACKAGES ==="
echo
sudo apt autoremove -y
echo
echo "# ======= INSTALLING BASIC PACKAGES ========"
echo "# |  ansible                               |"
echo "# |  aptitude                              |"
echo "# |  git                                   |"
echo "# |  nano                                  |"
echo "# |  python3                               |"
echo "# |  python3-apt                           |"
echo "# |  vim                                   |"
echo "# =========================================="
echo
sudo apt install -y ansible aptitude git nano python3 python3-apt vim
echo
echo "# ======= INSTALLING ANSIBLE MODULES ======="
echo "# |  community.general                     |"
echo "# =========================================="
echo
ansible-galaxy collection install community.general
echo
echo "# ====== RUNNING DISTA ANSIBLE CONFIG ======"
echo
ansible-playbook -vvv installNecessaryLibraries.yml
echo
echo "# =========== SUMMARY OF CHANGES ==========="
echo "# |  WARNING: Some steps may have been     |"
echo "# |           skipped because they were    |"
echo "# |           not necessary.               |"
echo "# |                                        |"
echo "# |  1. Fetched updates (apt update)       |"
echo "# |                                        |"
echo "# |  2. Applied updates (apt upgrade)      |"
echo "# |                                        |"
echo "# |  3. Auto-removed unnecessary           |"
echo "# |     packages (apt autoremove)          |"
echo "# |                                        |"
echo "# |  4. Installed basic necessary          |"
echo "# |     packages (apt install) :           |"
echo "# |                                        |"
echo "# |   - ansible                            |"
echo "# |   - aptitude                           |"
echo "# |   - git                                |"
echo "# |   - nano                               |"
echo "# |   - python3                            |"
echo "# |   - python3-apt                        |"
echo "# |   - vim                                |"
echo "# |                                        |"
echo "# |  5. Configured the system using the    |"
echo "# |     Dista Ansible config :             |"
echo "# |                                        |"
echo "# |   - installed necessary libraries      |"
echo "# |                                        |"
echo "# |  6. Done.                              |"
echo "# =========================================="
echo 
echo "# ############## END OF SCRIPT #############"
