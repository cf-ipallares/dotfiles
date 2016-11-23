alias edebug='sudo php5enmod xdebug;sudo service php5-fpm restart;sudo service nginx restart'
alias ddebug='sudo php5dismod xdebug;sudo service php5-fpm restart;sudo service nginx restart'
alias version='printf "parameters: \n    assets_version: `shuf -i 0-1000000 -n 1` \n    deploy_timestamp: 0" > /vagrant/portal/app/config/version.yml'
alias scripts='cd /vagrant/portal/src/CF/Bundle/WebsiteBundle/Resources/frontend;npm run build:js;version'
alias styles='cd /vagrant/portal/src/CF/Bundle/WebsiteBundle/Resources/frontend;npm run build:css;version'
alias frontend='scripts;styles'
alias deploy='cd /vagrant; sh deployPortal.sh'
alias routes='cd /vagrant/portal;php bin/console debug:router'
