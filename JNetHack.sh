# JNetHack 3.6.7-0.1 + UTF-8 + Qt fix installer

JNH_BASE=`pwd`
JNH_VER_NETHACK=3.6.7
JNH_VER_NETHACK2=367

curl -LO https://www.nethack.org/download/${JNH_VER_NETHACK}/nethack-${JNH_VER_NETHACK2}-src.tgz
tar -zxf ./nethack-${JNH_VER_NETHACK2}-src.tgz
cd NetHack-${JNH_VER_NETHACK}
zcat ${JNH_BASE}/misc/jnethack-3.6.7-0.1-qt5fix.diff.gz | patch -p1
sed -i 's/MOC = moc-qt5/MOC = moc -qt=5/' sys/unix/hints/linux-qt5
sys/unix/setup.sh sys/unix/hints/linux-qt5
make all
make install
cp -f ${JNH_BASE}/misc/tiles32.bmp ~/nh/install/games/lib/jnethackdir/
cp ${JNH_BASE}/misc/nethack.png ~/.local/share/icons/hicolor/256x256/apps/
cp ${JNH_BASE}/misc/JNetHack.desktop ~/.local/share/applications/
cat > ~/.nethackrc <<'EOF'
OPTIONS=font_map:Noto Serif CJK JP
OPTIONS=font_menu:Noto Serif CJK JP
OPTIONS=font_message:Noto Serif CJK JP
OPTIONS=font_status:Noto Serif CJK JP
OPTIONS=font_text:Noto Serif CJK JP
OPTIONS=tile_file:tiles32.bmp,tile_width:32,tile_height:32
EOF
