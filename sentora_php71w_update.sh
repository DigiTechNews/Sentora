SENTORA_INSTALLER_VERSION="1.0.3"
SENTORA_CORE_VERSION="1.0.0"
SENTORA_PRECONF_VERSION="1.0.3"
DIGITECHNEWS_INFO="Welcome to the DigiTechNews Official Sentora PHP Update"

PANEL_PATH="/etc/sentora"
PANEL_DATA="/var/sentora"

#--- Display the 'welcome' splash/user warning info..
echo ""
echo "############################################################"
echo "#  $DIGITECHNEWS_INFO $SENTORA_INSTALLER_VERSION  #"
echo "############################################################"
echo "################# DigiTechNews.net ######################"

#PHP Update
echo -e "\n-- Updating PHP 5.4 to PHP 7.1W --"
if [[ "$OS" = "CentOs" ]]; then
    service httpd stop
    sudo apachectl stop
    yum remove -y php-mysql php-gd php-mcrypt php-mbstring php-opcache php-pdo php-cli php-commun php-devel php-xmlrpc php-xml php-intl php-common php-common-5.4.16-43.el7_4.x86_64
    yum install -y php71w php71w-mysql php71w-gd php71w-mcrypt php71w-mbstring php71w-opcache php71w-pdo php71w-cli php71w-common php71w-devel php71w-xmlrpc php71w-xml php71w-intl
    service httpd start
    sudo apachectl start
elif [[ "$OS" = "Ubuntu" ]]; then
    echo -e "Nothing for Ubuntu"
fi
echo -e "\n-- Updating Complete --"