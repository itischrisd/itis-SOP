# ZAD0
ls --help
ls -i /bin
# inode (i-węzeł) to struktura w systemie plików, która zawiera metadane dla każdego pliku lub katalogu. Metadane
# obejmują informacje takie jak prawa dostępu, właściciel, grupa, rozmiar, czas ostatniej modyfikacji itp. Inode to
# unikalny identyfikator przypisany każdemu plikowi w systemie plików i jest używany do efektywnego zarządzania plikami
# przez system operacyjny. Dzięki inodom system plików może jednoznacznie zidentyfikować i odnaleźć plik na dysku.

# ZAD1
mkdir /tmp/s25692
cp /etc/passwd /tmp/s25692/OtoNaszeHasla.txt

# ZAD2
cd /tmp/Twoj_login
ln -s OtoNaszeHasla.txt PASS
ls -il ~
# Aby rozpoznać, że plik jest łącznikiem, możemy użyć opcji -l w poleceniu ls, które wyświetli szczegółowe informacje o
# plikach. Jeśli pierwszy znak w linii odpowiadającej łącznikowi symbolicznemu to "l", oznacza to, że jest to łącznik.

# ZAD3
cat PASS
more PASS
less PASS

# ZAD4
mv OtoNaszeHasla.txt OtoNieNaszeHasla.txt
cat PASS
more PASS
less PASS

# ZAD5
ln OtoNieNaszeHasla.txt szPASS
mv OtoNieNaszeHasla.txt OtoNaszeHasla.txt
ls -i OtoNaszeHasla.txt szPASS
# Oba pliki powinny mieć ten sam numer inode, co potwierdza, że są one fizycznymi powiązaniami.

# ZAD6A
IMIE="Krzysztof"
NAZWISKO="Dudek"
WIEK=28

echo "Cześć, to ja $IMIE $NAZWISKO i mam lat $WIEK."

# ZAD6B
PS1='[\A] \u@\h:\w\$ '

# ZAD7A
cd ~
find /etc -type f -exec cat {} + > ABC.TXT
wc ABC.TXT > sop/RESULT.TXT

# ZAD7B
# ten sam plik:
sed -i 's/ /./g' ABC.TXT
# inny plik:
tr ' ' '.' < ABC.TXT > ABC_modified.TXT

# ZAD7C
cat RESULT.TXT >> ABC.TXT
rm ABC.TXT

# ZAD7D
# Bash widzi "*" jako znak wieloznaczności (tzw. wildcard), który może dopasowywać nazwy plików. To oznacza, że jeśli w
# bieżącym katalogu znajdują się pliki o nazwach, które pasują do wartości zmiennych $A lub $B, Bash spróbuje dopasować
# te nazwy plików, zamiast wykonać mnożenie.

# ZAD7E
SUMA=$(find /bin /usr/bin ~ -type f,d | wc -l)
LICZBA_LINII_JAVA=$(find ~/ -type f -name "*.java" -exec cat {} + | wc -l)

echo "Liczba plików i katalogów: $SUMA"
echo "Liczba linii we wszystkich plikach java: $LICZBA_LINII_JAVA"