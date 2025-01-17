# System Information
hostnamectl                # Display or set the hostname
sudo hostnamectl set-hostname docker-node-1 # To set a new hostname
sudo systemctl restart systemd-hostnamed # To restart system after changing the host name in "sudo nano /etc/hostname"
uname -a                   # Show system information
df -h                      # Display disk space usage
free -h                    # Show memory usage
top                        # Display real-time processes and system resource usage
htop                       # Interactive process viewer (install if unavailable)
lscpu                      # Display CPU architecture information
lsblk                      # Show block devices (e.g., disks)
uptime                     # Show system uptime and load averages

# File and Directory Management
ls                         # List files in a directory
cd /path/to/directory      # Change directory
pwd                        # Display current directory
cp file1 file2             # Copy files
mv oldname newname         # Move or rename files
rm file.txt                # Delete a file
mkdir new_directory        # Create a new directory
rmdir directory_name       # Remove an empty directory
find /path -name "file"    # Search for files or directories
chmod 755 file.sh          # Change file permissions
chown user:group file.txt  # Change file owner and group

# User and Group Management
whoami                     # Display current username
id                         # Display user and group IDs
sudo useradd newuser       # Add a new user
sudo usermod -s /bin/bash user  # Change user shell
sudo passwd username       # Change user password
sudo groupadd newgroup     # Add a new group
sudo groupdel groupname    # Delete a group

# Process Management
ps aux                     # Show running processes
kill <PID>                 # Terminate a process by PID
killall process_name       # Terminate processes by name
bg                         # Resume a suspended job in the background
fg                         # Bring a background job to the foreground
nice -n 10 command         # Start a process with a specific priority

# Package Management (Debian-based systems)
sudo apt update            # Update package lists
sudo apt upgrade           # Upgrade installed packages
sudo apt install package   # Install a package
sudo apt remove package    # Remove a package
apt search package         # Search for a package

# Networking
ip addr                    # Display network interfaces and IPs
ping google.com            # Test network connectivity
netstat -tuln              # Show network connections (deprecated)
ss -tuln                   # Show network connections (preferred)
ifconfig                   # Display or configure network interfaces (deprecated)
wget http://example.com    # Download a file
curl -O http://example.com # Download a file using cURL

# Disk and Filesystem
df -h                      # Show disk usage
du -sh /path/to/directory  # Show size of a directory
mount /dev/sdX /mnt        # Mount a filesystem
umount /mnt                # Unmount a filesystem

# System Shutdown and Reboot
sudo reboot                # Reboot the system
sudo shutdown now          # Shut down immediately
sudo halt                  # Halt the system
sudo poweroff              # Power off the system

# Docker (if installed)
docker ps                  # List running Docker containers
docker images              # List Docker images
docker run image_name      # Run a Docker container
docker exec -it container bash  # Access a container shell
docker stop container_id   # Stop a running container
docker rm container_id     # Remove a stopped container

# Miscellaneous
history                    # Show command history
clear                      # Clear the terminal screen
alias ll='ls -la'          # Create a shortcut for commands
df -Th                     # Show disk usage with file system types
uptime                     # Show how long the system has been running
