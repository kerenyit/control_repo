class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJPY3+kTLFYGQ8LucIRkB4uZsHUKdr9KrkaPY0w7xi9Z3+6o83JD70LOCf1Dn7sIdauHlmdUmA150y6ZLyFORLu+KhnR7PRUno61VaUD+GWrmX/b9Gic0WloGzRX98bnO47QOThKu2PWga04CfDGpv0ms5dIIAojG5K5sZiYVK2fCUBuIC1iFWW5XUUm4TsiAB7MKg65oaG7dRznlb10zMbXv+wl135EBGvcHV1ns256m4ckOZDQE1EAEnzWHIOfdu+zo1wv6JYs5vDehS7kjAU4AFhXXjtoS2aqJi2khtfTNG89Gn1MtouI0aKZmBUtd1n9lEXpDX7Q512rG6Z0Ct',
	}  
}
