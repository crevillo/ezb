#Symlinks all filex except design, settings/ and extension/
for f in $( ls ezp | egrep -i -v "extension|design|settings|var|config.php-RECOMMENDED|kickstart.ini-dist|LICENSE|README.txt|.htaccess_root"); do
echo "Symlink $f"
ln -s ezp/$f ./$f
done

#Symlinks to all ini default files
mkdir settings

cd settings
for f in $( ls ../ezp/settings | grep -i -v "siteaccess"); do
echo "Symlink settings/$f"
ln -s ../ezp/settings/$f ./$f
done
cd ..

echo "Creation du dossier extension"
mkdir extension
cd extension
for f in $( ls ../ezp/extension); do
echo "Symlink extension/$f"
ln -s ../ezp/extension/$f ./$f
done
cd ..

echo "Creation du dossier design"
mkdir design
cd design
for f in $( ls ../ezp/design); do
echo "Symlink design/$f"
ln -s ../ezp/design/$f ./$f
done
cd ..
