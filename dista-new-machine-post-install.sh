clear
echo
echo "# ========== FETCHING ALL UPDATES =========="
echo
sudo apt update
echo
echo "# ============= UPDATES FETCHED ============"
echo
echo "# =========== INSTALLING UPDATES ==========="
echo
sudo apt upgrade -y
echo
echo "# ============ UPDATES INSTALLED ==========="
echo
echo "# ==== AUTOREMOVING UNNECESSARY PACKAGES ==="
echo
sudo apt autoremove -y
echo
echo "# ====== UNNECESSARY PACKAGES REMOVED ======"
echo
echo "# ======= INSTALLING BASIC PACKAGES ========"
echo "# |  vim                                   |"
echo "# |  nano                                  |"
echo "# |  ansible                               |"
echo "# =========================================="
echo
sudo apt install -y vim nano ansible
echo
echo "# ======== BASIC PACKAGES INSTALLED ========"
echo
echo "# ====== RUNNING DISTA ANSIBLE CONFIG ======"
echo
ansible-playbook addDistaUser.yml
echo
echo "# ====== FINISHED DISTA ANSIBLE CONFIG ====="
echo
echo
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
echo "# |   - nano                               |"
echo "# |   - vim                                |"
echo "# |                                        |"
echo "# |  5. Configured the system using the    |"
echo "# |     Dista Ansible config :             |"
echo "# |                                        |"
echo "# |   - created dista-dev user             |"
echo "# |                                        |"
echo "# |  6. Done.                              |"
echo "# =========================================="
echo 
echo "# ############## END OF SCRIPT #############"
