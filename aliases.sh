echo "SETTING ALIASES"
alias a=alias
a h='history | cut -c 8-'
a la='ls -la'
a ld='ls -d'
a ll='ls -l'
a p=pwd
a g=grep
a lr='ls -lrt'
a j=jobs
a m=more
a c=cat
a l=less
a mr='more README.md'
a src='source ~/.bashrc'
a zrc='source ~/.zshrc'
a cl=clear
a pt2=python2
a pt=python3
a atm=atom
a e=emacs
a jn='jupyter notebook'
a mir='more ~/README'
alias me='m ~/emacs.txt'
alias via='vi ~/scripts/aliases.sh'
alias sia='source ~/scripts/aliases.sh'
alias vir='vi ~/scripts/README'
a ..='cd ../'
a ...='cd ../../'
a cw='ssh -Y alfreds@104.45.231.235 -p22'
a cdr='cd ~/MyDocuments/'
a mu='m ~/used_commands.txt'
a n=nano
a c=code
a mig='more ~/git.txt'
a cv='ssh -L 5918:127.0.0.1:5901 alfreds@104.40.25.223'
a cj='ssh -L 5915:127.0.0.1:5901 alfreds@40.85.185.185'
a aws1='ssh -i ~/Documents/IT/AWS/actappon_key.pem ubuntu@ec2-3-19-68-159.us-east-2.compute.amazonaws.com'
a myip='curl ipinfo.io/ip'
a pv='pip -V'
a pip=pip3.9
a xx='xterm -fa 'Monospace' -fs 10 -bg black -fg white&'
a xb='xterm -fa 'Monospace' -fs 10 -bg blue -fg white&'
a xr='xterm -fa 'Monospace' -fs 10 -bg red -fg white&'
a xg='xterm -fa 'Monospace' -fs 10 -bg darkgreen -fg white&'

alias tt='~/scripts/settitle.sh $(basename `pwd`)'
a g1='ssh -i ~/Documents/aws_rsa ubuntu@34.73.209.6'
a vnc_con='ssh -i ~/MyDocuments/aws_rsa -L 5901:127.0.0.1:5901 -N -f -l alfred_shaffir_googlemail_com 34.73.209.6'
a dnd='ssh -i ~/.ssh/naboo_aws.pem alfreds@ec2-18-223-164-155.us-east-2.compute.amazonaws.com'
a aws4='ssh -i /Users/alfredshaffir/.ssh/naboo_aws.pem ubuntu@ec2-18-222-168-250.us-east-2.compute.amazonaws.com'
a actappon='ssh -i ~/.ssh/naboo_aws.pem ubuntu@3.18.220.131'
a act='ssh -i ~/.ssh/actappon-aws.cer ubuntu@18.190.24.182'
a shamaut='ssh -i /Users/alfredshaffir/.ssh/aws_shamaut.pem ubuntu@3.128.171.222'
a mrc='ssh -i ~/.ssh/naboo_aws.pem ubuntu@3.15.150.199'
a mrc1='ssh -i ~/.ssh/mrc.pem ubuntu@3.141.26.218'
a aws5='ssh -i ~/.ssh/naboo_aws.pem ubuntu@18.218.47.191'
a scoco='ssh -i ~/.ssh/scoco.pem ubuntu@18.217.210.161'
a toro='ssh -i ~/.ssh/toromate.pem ubuntu@18.221.84.129'
a mami='./manage.py migrate'
a mama='./manage.py makemigrations'
