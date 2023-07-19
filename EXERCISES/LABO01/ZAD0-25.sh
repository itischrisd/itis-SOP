#!/bin/bash

# ZAD0
ssh s25692@msh.pjwstk.edu.pl

# ZAD1
man ls
ls -k /tmp

# ZAD3
ls

# ZAD3
ls -R ~

# ZAD4
cd ..
pwd
ls -l
# Jeśli nie widzisz zawartości katalogu, nie masz uprawnień do odczytu plików w tym katalogu nadrzędnym, co może
# uniemożliwiać odczytanie zawartości. Aby móc wyświetlić zawartość, musisz mieć odpowiednie uprawnienia do odczytu tego
# katalogu.

# ZAD5
ls --help
ls -i /bin
# inode (i-węzeł) to struktura w systemie plików, która zawiera metadane dla każdego pliku lub katalogu. Metadane
# obejmują informacje takie jak prawa dostępu, właściciel, grupa, rozmiar, czas ostatniej modyfikacji itp. Inode to
# unikalny identyfikator przypisany każdemu plikowi w systemie plików i jest używany do efektywnego zarządzania plikami
# przez system operacyjny. Dzięki inodom system plików może jednoznacznie zidentyfikować i odnaleźć plik na dysku.

# ZAD6
ls -lS /bin
ls -lt /bin

# ZAD7
cd ~
mkdir SOP
cd SOP
echo "Ala ma 1 kota." >ala_ola.txt
echo "Ola ma 2 psy." >>ala_ola.txt
cat ala_ola.txt
tac ala_ola.txt

# ZAD8
mkdir /Kula
ls -ld /

# ZAD9
cd ~/SOP
mkdir Kula
mkdir Kula1

# ZAD10
cd ~/SOP/Kula
mkdir Kula2
cp ~/SOP/ala_ola.txt Kula2/

# ZAD11
cp -r ~/SOP/Kula ~/SOP/Kula1
mv ~/SOP/Kula1/Kula2/ala01.txt ~/SOP/Kula1/Kula2/ala02.txt
mkdir ~/SOP/Kuleczka
mv ~/SOP/Kula ~/SOP/Kuleczka
mv ~/SOP/Kula1 ~/SOP/Kuleczka

# ZAD12
mkdir /tmp/s25692
cp /etc/passwd /tmp/s25692/OtoNaszeHasla.txt

# ZAD13
cd /tmp/Twoj_login
ln -s OtoNaszeHasla.txt PASS
ls -il ~
# Aby rozpoznać, że plik jest łącznikiem, możemy użyć opcji -l w poleceniu ls, które wyświetli szczegółowe informacje o
# plikach. Jeśli pierwszy znak w linii odpowiadającej łącznikowi symbolicznemu to "l", oznacza to, że jest to łącznik.

# ZAD14
cat PASS
more PASS
less PASS

# ZAD15
mv OtoNaszeHasla.txt OtoNieNaszeHasla.txt
cat PASS
more PASS
less PASS

# ZAD16
ln OtoNieNaszeHasla.txt szPASS
mv OtoNieNaszeHasla.txt OtoNaszeHasla.txt
ls -i OtoNaszeHasla.txt szPASS
# Oba pliki powinny mieć ten sam numer inode, co potwierdza, że są one fizycznymi powiązaniami.

# ZAD17
man less
# W trybie przeglądania zawartości pliku, naciśnij klawisz "/" (slash).
# Wprowadź wzorzec, który chcesz wyszukać, np. "wzorzec".

# ZAD18
clear

# ZAD19
ssh s25692@msh.pjwstk.edu.pl
who

# ZAD20
sftp s25692@msh.pjwstk.edu.pl
put OtoNaszeHasla.txt

# ZAD21
sftp s25692@msh.pjwstk.edu.pl
get /etc/passwd

# ZAD22
rm OtoNaszeHasla.txt
# Łącznik "szPASS" nadal będzie istniał w systemie plików, ale nie będzie wskazywał na żaden plik, ponieważ plik
# "OtoNaszeHasla.txt", który był jego docelowym plikiem, został skasowany. Będzie to tzw. łącznik martwy (dangling link).

# ZAD23
rm -rf Kuleczka

# ZAD24
uname –a

# ZAD25
banner "Krzysztof"
