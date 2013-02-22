class open_sg {
	include homebrew

	homebrew::formula { 'open-sg':
			before => Package['boxen/brews/open-sg'],
	}

	package { 'boxen/brews/open-sg':
		ensure => '1.8-boxen1',
	}
}