# JNetHack 5.0.0-0.2 + UTF-8 + Qt fix installer

JNH_BASE=`pwd`
JNH_VER_NETHACK=5.0.0
JNH_VER_NETHACK2=500

curl -LO https://www.nethack.org/download/${JNH_VER_NETHACK}/nethack-${JNH_VER_NETHACK2}-src.tgz
tar -zxf ./nethack-${JNH_VER_NETHACK2}-src.tgz
cd NetHack-${JNH_VER_NETHACK}
zcat ${JNH_BASE}/misc/JNetHack_5.0.0_0.2_U8_Qt.patch.gz | patch -p1
sys/unix/setup.sh sys/unix/hints/linux.500
make fetch-lua
make WANT_WIN_TTY=1 WANT_WIN_QT=1 WANT_WIN_QT6=1 WANT_DEFAULT=Qt all
make install
cp -f ${JNH_BASE}/misc/tiles32.bmp ~/nh/install/games/lib/jnethackdir/
cp ${JNH_BASE}/misc/nethack.png ~/.local/share/icons/hicolor/256x256/apps/
cp ${JNH_BASE}/misc/JNetHack.desktop ~/.local/share/applications/
cat > ~/.jnethackrc <<'EOF'
OPTIONS=font_map:Noto Serif CJK JP
OPTIONS=font_menu:Noto Serif CJK JP
OPTIONS=font_message:Noto Serif CJK JP
OPTIONS=font_status:Noto Serif CJK JP
OPTIONS=font_text:Noto Serif CJK JP
OPTIONS=tile_file:tiles32.bmp,tile_width:32,tile_height:32
EOF
