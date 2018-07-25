alias edebug='sudo php5enmod xdebug;sudo service php5.6-fpm restart;sudo service php5-fpm restart;sudo service nginx restart'
alias ddebug='sudo php5dismod xdebug;sudo service php5.6-fpm restart;sudo service php5-fpm restart;sudo service nginx restart'
alias version='printf "parameters: \n    assets_version: `shuf -i 0-1000000 -n 1` \n    deploy_timestamp: 0" > /vagrant/portal/app/config/version.yml'
alias scripts='cd /vagrant/portal/src/CF/Bundle/WebsiteBundle/Resources/frontend;npm run build:js;version'
alias styles='cd /vagrant/portal/src/CF/Bundle/WebsiteBundle/Resources/frontend;npm run build:css;version'
alias frontend='scripts;styles'
alias deploy='ddebug;cd /vagrant; sh deployPortal.sh;edebug'
alias routes='cd /vagrant/portal;php bin/console debug:router'
alias generate='cd /vagrant/portal;php bin/console doctrine:migrations:generate'
alias migrate='cd /vagrant/portal;php bin/console doctrine:migrations:migrate'
alias fixmem='sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024;sudo /sbin/mkswap /var/swap.1;sudo /sbin/swapon /var/swap.1'
alias fixmembig='sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1G count=4;sudo /sbin/mkswap /var/swap.1;sudo /sbin/swapon /var/swap.1'
alias fixmembigger='sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=2G count=4;sudo /sbin/mkswap /var/swap.1;sudo /sbin/swapon /var/swap.1'
alias dockup='boot2docker init;boot2docker up;eval "$(boot2docker shellinit)"'
alias ccms='fixmembigger;ddebug;cd /vagrant/portal;composer update cf-portal-bundles/cmsBundle;edebug' 
alias cedma='fixmembig;ddebug;cd /vagrant/portal;composer update cf-portal-bundles/edmaBundle;edebug' 
alias cinteraction='fixmembigger;ddebug;cd /vagrant/portal;composer update cf-portal-bundles/interactionBundle;edebug' 
alias cseo='fixmembig;ddebug;cd /vagrant/portal;composer update cf-portal-bundles/seoBundle;edebug'
alias mylog='tail -f /var/tmp/my-log.log'
