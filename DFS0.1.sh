#!/bin/bash

GUI=("select GUI")
function GUIConf () {
    echo *######################*
    echo *#---Chose your GUI---#*
    echo *######################*


    select GUI in "(K)KDE" "(G)Gnome" "(X)XFCE" "(L)LXDE" "(M)MATE" "(Q)Quit"
    do
        if (( REPLY == "Q"))
        then
            exit
        elif (( REPLY == "K"))
        then
            sudo apt install kde-full -y
            GUI=("KDE")
        elif (( REPLY == "G"))
        then
            sudo apt-get install aptitude tasksel -y
            sudo tasksel install gnome-desktop --new-install
            GUI=("GNOME")
        elif (( REPLY == "X"))
        then
            sudo apt install xfce4 xfce4-goodies -y
            sudo apt install lightdm
            GUI=("XFCE")
        elif (( REPLY == "L"))
        then
            sudo apt install lxde
            GUI=("LXDE")
        elif (( REPLY == "M"))
        then
            sudo apt-get install mate-desktop-environment
            GUI=("MATE")
        else
            echo Not valid option. Please try again.
            GUIConf
    done
}
function start () {
    echo Welcome to Debian Fire Sarter V0.1.
    echo Right now this only a betta that only helps you install a Gui but I am planing to expand upon this script to add mor tools. This is open source so you can edit the script or make changes your self.
    echo Chose an option, "(G)"Gui setup "(Q)"Quit
    echo Current Gui GUI
    select opt in "(G)" "(Q)"
    do
        if (( REPLY == "Q"))
        then
            exit
        if (( REPLY == "G"))
        then
            GUIConf
        else
            echo Not valid option. Please try again.
            start

}
