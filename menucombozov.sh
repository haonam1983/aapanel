
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
purple(){
    echo -e "\033[35m\033[01m$1\033[0m"
}

# cài đặt aapanel quốc tế
function aapanelgoc(){
yum install -y wget && wget -O install.sh http://www.aapanel.com/script/install_6.0_en.sh && bash install.sh aapanel
red "đã cài đặt hoàn tất mời quý zị dùng luôn cho nóng>.<"
}
# bẻ khoá aapanel bản hiện tại
function panelcrack(){  
bash <(curl -Ls https://raw.githubusercontent.com/dominhtri2007/CrackAapanel/main/script/Z_OVpanel.sh)
red "đã crack xong vui lòng f5 hoặc login lại aapanel"
}
# gỡ cài đặt aapanel
function uninstall(){
service bt stop && chkconfig --del bt && rm -f /etc/init.d/bt && rm -rf /www/server/panel
red "gỡ cài đặt hoàn tất"
}




# menu
function start_menu(){
    clear
    purple " chào mừng bạn đến với tool aapanel."
    purple " zalo     : minhtri1903"
    purple " facebook : https://www.facebook.com/MMO.NongCong"
    yellow " ————————————————————————————————————————————————"
    green " 1. cài đặt aapanel bản gốc( cho centos)"
    green " 2. Crack bản aapanel hiện tại ( yêu tiên cài mới) "
    yellow " ————————————————————————————————————————————————"
    green " 3. gỡ cài đặt bản aapanel hiện tại"
    green " 4. chờ cập nhật tool mới"
    green " 0. thoát giao diện tool"

    echo
    read -p "nhập số và ấn enter nha quý zị:" menuNumberInput
    case "$menuNumberInput" in
        1 )
           aapanelgoc
        ;;
        2 )
           panelcrack
        ;;
        3 )
           uninstall
        ;;
        4 )
           
        ;;
        0 )
            exit 1
        ;;
        * )
            clear
            red "nhập đúng số đi sai rùi :)"
            start_menu
        ;;
    esac
}
start_menu "first"
