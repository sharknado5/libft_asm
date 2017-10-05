cd
curl -O http://www.nasm.us/pub/nasm/releasebuilds/2.11.06/macosx/nasm-2.11.06-macosx.zip
tar -xvf nasm-2.11.06-macosx.zip
cd nasm-2.11.06/
cp nasm ~/bin
echo "export PATH=\$HOME/bin:\$PATH" >> ~/.zshrc
source ~/.zshrc