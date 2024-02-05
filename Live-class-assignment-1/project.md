## This is the solution of the live classes first assignment
## Questions:

#### Your login name: altschool i.e., home directory /home/altschool. The home directory contains the following sub-directories: code, tests, personal, misc Unless otherwise specified, you are running commands from the home directory.

`pwd` to see the present working directory

`mkdir code tests personal misc` to create the subdirectories

![directory](../Live-class-assignment-1/images/directories.PNG)


1. Change directory to the tests directory using absolute pathname

`cd /home/vagrant tests`

![absolute-path](../Live-class-assignment-1/images/Absolute-path.PNG)

2. Change directory to the tests directory using relative pathname

`cd tests`

![relative-path](../Live-class-assignment-1/images/relative-path.PNG)

3. Use echo command to create a file named fileA with text content ‘Hello A’ in the misc directory

` echo "Hello A" > /home/vagrant/misc/fileA`

![echo](../Live-class-assignment-1/images/echo.PNG)

4. Create an empty file named fileB in the misc directory. Populate the file with a dummy content afterwards

`vim /home/vagrant/misc/fileB`

![dummy-content](../Live-class-assignment-1/images/dummy-content1.PNG)

5. Copy contents of fileA into fileC

`cp /home/vagrant/misc/fileA /home/vagrant/misc/fileC`

![filec-content](../Live-class-assignment-1/images/filec-content.PNG)

6. Move contents of fileB into fileD

`mv /home/vagrant/misc/fileB /home/vagrant/fileD`

![fileD-content](../Live-class-assignment-1/images/fileD-content.PNG)

7. Create a tar archive called misc.tar for the contents of misc directory

`tar -cvf misc.tar /home/vagrant/misc`

![misc-tar](../Live-class-assignment-1/images/misc-tar.PNG)

8. Compress the tar archive to create a misc.tar.gz file

`tar -cvf misc.tar.gz /home/vagrant/misc`

![misc-tar-gz](../Live-class-assignment-1/images/misc-tar-gz.PNG)

9. Create a user and force the user to change his/her password upon login

`sudo useradd kawthar`
`sudo passwd kawthar`
`sudo passwd --expire kawthar`

![passwd-expire](../Live-class-assignment-1/images/passwd-lock.PNG)

10. Lock a users password

`passwd -l kawthar`

![passwd-lock](../Live-class-assignment-1/images/passwd-lock-a.PNG)

11. Create a user with no login shell

`sudo adduser testuser1 --shell /usr/sbin/nologin`

![no-login](../Live-class-assignment-1/images/nologin.PNG)

![verify](../Live-class-assignment-1/images/verify-nologin.PNG)

12. Disable password based autehntication for ssh

`vim /etc/ssh/sshd_config`

- Look for the line PasswordAuthentication yes and replace yes with no.

- Now restart the server by running the following command.

`service sshd restart`

![ssh-disable](../Live-class-assignment-1/images/passwd-authen.PNG)

13. Disable root login for ssh

`vi /etc/ssh/sshd_config`

- locate the directive PermitRootLogin,
- Uncomment the line and change the directive No.
- Save and close the file. Restart the SSH daemon to save the changes by executing one of the commands below,

`/etc/init.d/sshd restart
systemctl restart sshd
service sshd restart`

![permit-rootlogin](../Live-class-assignment-1/images/permit-root-login.PNG)