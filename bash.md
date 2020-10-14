## To setup how the prompt look like 

### Plain: 
export PS1='$(whoami)@$(hostname):$(pwd)$ '

* The following just putsh the currentdir:
export PS1='$(pwd)$ '

### Colored
export PS1='\[\e[0;36m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;35m\]\w\[\e[0m\]\$ '
