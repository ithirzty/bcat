if command -v bah &> /dev/null
then
    echo -e "\E[1m-> Compiling\E[m"
    bah ./main.bah -d -o ./bcat
else
    echo -e "\E[1m-> Bah compiler not present, using existing binary\E[m"
fi

echo -e "\E[1m-> Creating directory\E[m"
{
mkdir ~/.bcat/
} &> /dev/null

echo -e "\E[1m-> Moving Files\E[m"
cp ./colors.cfg ~/.bcat/
cp ./bcat ~/.bcat/

sudo rm /usr/bin/bcat
sudo ln -s ~/.bcat/bcat /usr/bin/bcat

echo -e "\E[1m-> Done!\E[m"
