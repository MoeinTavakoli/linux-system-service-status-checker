
### Status Service Checker
This is a bash script that allows you to quickly check the status of a one or more system services on a Linux system .

### Installation
To use the Status Service Checker, you'll need to download the status-service.sh script and make it executable. You can do this with the following commands:

```bash
wget https://github.com/MoeinTavakoli/status-service-checker/status-service.sh
chmod +x status-service.sh
```

### Usage
To check the status of a system service, simply run the status-service.sh script with the name of the service you want to check as an argument. For example:

```bash
./status-service.sh sshd
```

This will display the status of the sshd service.


OR search part of service name . For example:

```bash
./status-service.sh pg
```

