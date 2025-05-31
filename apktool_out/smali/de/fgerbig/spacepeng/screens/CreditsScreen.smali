.class public Lde/fgerbig/spacepeng/screens/CreditsScreen;
.super Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;
.source "CreditsScreen.java"


# instance fields
.field private final CREDITS:Ljava/lang/String;

.field private final CREDITS_HEIGHT:I

.field private final CREDITS_WIDTH:I


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 1
    .param p1, "game"    # Lde/fgerbig/spacepeng/SpacePeng;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    .line 33
    const/16 v0, 0x2d0

    iput v0, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->CREDITS_WIDTH:I

    .line 34
    const/16 v0, 0xfc

    iput v0, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->CREDITS_HEIGHT:I

    .line 36
    const-string v0, "SpacePeng\n\nCopyright (c) 2015 by Frank Gerbig\nwith ideas from Lukas und Julia\n\nThis program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 3 of the License, or\n(at your option) any later version.\n\nThis program is distributed in the hope that it will be useful,\nbut WITHOUT ANY WARRANTY; without even the implied warranty of\nMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\nGNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License\nalong with this program.  If not, see <http://www.gnu.org/licenses/>.\n\n\nGRAPHICS\n========\n\nBackground art \"Alien planet with a moon\"\nby Kris Lachowski released as Creative Commons (CC 0)\n\nUI skin and credits font derived from \"libgdx test suit\"\nby Badlogic Games released under the Apache License Version 2.0\n\nFont \"Technique BRK\"\nby Brian Kent released as Freeware\n\nAlien sprites \"Purple Monsters\"\nby Jojo Mendoza \"Deleket\" released royalty free for personal and non-commercial projects\n\nAlien shot derived from \"ember01\" from \"particle-pack-01\"\nby Iron Star Media Ltd released as Creative Commons (CC BY-2.0 UK)\n\nCoin animation \"Spinning coin\"\nby Jose Maria Atencia (JM.Atencia) released as Creative Commons (CC BY-3.0)\n\nExplosion animation \"Some explosions and a protective shield\"\nby GameProgrammingSlave released as Creative Commons (CC)\n\nParticle \"ember01\" from \"particle-pack-01\"\nby Iron Star Media Ltd released as Creative Commons (CC BY-2.0 UK)\n\nPlayer Space Ship sprite\nby Mattahan (Paul Davey) released as Creative Commons (CC BY-NC-SA)\n\nPlayer shield \"Some explosions and a protective shield\"\nby GameProgrammingSlave released as Creative Commons (CC)\n\nPlayer Shot derived from \"explosionstreak01\" from \"particle-pack-01\"\nby Iron Star Media Ltd released as Creative Commons (CC BY-2.0 UK)\n\n\nMUSIC\n=====\n\nMenu music \"Frozen Jam\"\nby Jordan Trudgett (tgfcoder) released as Creative Commons (CC BY-3.0)\n\nGame music \"Data Corruption\"\nby FoxSynergy released as Creative Commons (CC BY-3.0)\n\n\nSOUNDS\n======\n\nAlien boss explosion \"explosion1\" from \"WGS Sound FX - Explosion 1\"\nby WrathGames Studio (http://wrathgames.com/blog) released as Creative Commons (CC BY-3.0)\n\nAlien boss hit \"bodyslam\" from \"Action Shooter Soundset (WWVi)\"\nby Stephen M. Cameron released as Creative Commons (CC BY-SA-3.0)\n\nAlien explosion \"qubodup-BangShort\" from \"3 Background Crash Explosion Bang Sounds\"\nby Iwan Gabovitch (qubodup) released as Creative Commons (CC BY-3.0)\n\nAlien shot \"FX062\" from \"Collaboration / Sound Effects FX 007\"\nby jalastram release as Creative Commons (CC BY-3.0)\n\nBoing from \"Basement Pack 1 - jawharp_boing.wav\"\nby plingativator (http://www.gabrielkoenig.com) released as Creative Commons (CC BY-3.0)\n\nClick created with LMMS plugin \"Mallets\"\nby Frank Gerbig released as Creative Commons (CC 0)\n\nPlayer explosion \"big_explosion\" from \"Action Shooter Soundset (WWVi)\"\nby Stephen M. Cameron released as Creative Commons (CC BY-SA-3.0)\n\nPlayer shot \"FX067\" from \"Collaboration / Sound Effects FX 007\"\nby jalastram release as Creative Commons (CC BY-3.0)\n\n\nSOFTWARE\n========\n\nlibGDX \"Android/iOS/HTML5/desktop game development framework\"\nby Badlogic Games released under the Apache License Version 2.0\n\nArtemis-odb entity component system\nby Adrian Papari (junkdog) released under the Apache License Version 2.0\n\nUniversal Tween Engine\nby Aurelien Ribon released under the Apache License Version 2.0\n\nCode from \"commons-gdx\"\nby Gemserk (http://blog.gemserk.com) released under the Apache License Version 2.0\n\nCode from the libGDX tutorial \"Tyrian\"\nby Gustavo Steigert released under the Apache License Version 2.0\n\nWith code examples from the article \"Animating transitions between Libgdx screens using TweenEngine\"\nby Tina Denuit-Wojcik posted on Enplug (https://enplug.com)\n\n"

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->CREDITS:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public show()V
    .locals 10

    .prologue
    const/high16 v9, 0x41c80000    # 25.0f

    .line 159
    invoke-super {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->show()V

    .line 162
    invoke-super {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    .line 163
    .local v5, "table":Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    iget-object v6, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v6}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 165
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v6, "Credits"

    iget-object v7, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v7}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 166
    .local v2, "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v6, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->labelStyle_Heading:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 167
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 168
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 170
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v6, "SpacePeng\n\nCopyright (c) 2015 by Frank Gerbig\nwith ideas from Lukas und Julia\n\nThis program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 3 of the License, or\n(at your option) any later version.\n\nThis program is distributed in the hope that it will be useful,\nbut WITHOUT ANY WARRANTY; without even the implied warranty of\nMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\nGNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License\nalong with this program.  If not, see <http://www.gnu.org/licenses/>.\n\n\nGRAPHICS\n========\n\nBackground art \"Alien planet with a moon\"\nby Kris Lachowski released as Creative Commons (CC 0)\n\nUI skin and credits font derived from \"libgdx test suit\"\nby Badlogic Games released under the Apache License Version 2.0\n\nFont \"Technique BRK\"\nby Brian Kent released as Freeware\n\nAlien sprites \"Purple Monsters\"\nby Jojo Mendoza \"Deleket\" released royalty free for personal and non-commercial projects\n\nAlien shot derived from \"ember01\" from \"particle-pack-01\"\nby Iron Star Media Ltd released as Creative Commons (CC BY-2.0 UK)\n\nCoin animation \"Spinning coin\"\nby Jose Maria Atencia (JM.Atencia) released as Creative Commons (CC BY-3.0)\n\nExplosion animation \"Some explosions and a protective shield\"\nby GameProgrammingSlave released as Creative Commons (CC)\n\nParticle \"ember01\" from \"particle-pack-01\"\nby Iron Star Media Ltd released as Creative Commons (CC BY-2.0 UK)\n\nPlayer Space Ship sprite\nby Mattahan (Paul Davey) released as Creative Commons (CC BY-NC-SA)\n\nPlayer shield \"Some explosions and a protective shield\"\nby GameProgrammingSlave released as Creative Commons (CC)\n\nPlayer Shot derived from \"explosionstreak01\" from \"particle-pack-01\"\nby Iron Star Media Ltd released as Creative Commons (CC BY-2.0 UK)\n\n\nMUSIC\n=====\n\nMenu music \"Frozen Jam\"\nby Jordan Trudgett (tgfcoder) released as Creative Commons (CC BY-3.0)\n\nGame music \"Data Corruption\"\nby FoxSynergy released as Creative Commons (CC BY-3.0)\n\n\nSOUNDS\n======\n\nAlien boss explosion \"explosion1\" from \"WGS Sound FX - Explosion 1\"\nby WrathGames Studio (http://wrathgames.com/blog) released as Creative Commons (CC BY-3.0)\n\nAlien boss hit \"bodyslam\" from \"Action Shooter Soundset (WWVi)\"\nby Stephen M. Cameron released as Creative Commons (CC BY-SA-3.0)\n\nAlien explosion \"qubodup-BangShort\" from \"3 Background Crash Explosion Bang Sounds\"\nby Iwan Gabovitch (qubodup) released as Creative Commons (CC BY-3.0)\n\nAlien shot \"FX062\" from \"Collaboration / Sound Effects FX 007\"\nby jalastram release as Creative Commons (CC BY-3.0)\n\nBoing from \"Basement Pack 1 - jawharp_boing.wav\"\nby plingativator (http://www.gabrielkoenig.com) released as Creative Commons (CC BY-3.0)\n\nClick created with LMMS plugin \"Mallets\"\nby Frank Gerbig released as Creative Commons (CC 0)\n\nPlayer explosion \"big_explosion\" from \"Action Shooter Soundset (WWVi)\"\nby Stephen M. Cameron released as Creative Commons (CC BY-SA-3.0)\n\nPlayer shot \"FX067\" from \"Collaboration / Sound Effects FX 007\"\nby jalastram release as Creative Commons (CC BY-3.0)\n\n\nSOFTWARE\n========\n\nlibGDX \"Android/iOS/HTML5/desktop game development framework\"\nby Badlogic Games released under the Apache License Version 2.0\n\nArtemis-odb entity component system\nby Adrian Papari (junkdog) released under the Apache License Version 2.0\n\nUniversal Tween Engine\nby Aurelien Ribon released under the Apache License Version 2.0\n\nCode from \"commons-gdx\"\nby Gemserk (http://blog.gemserk.com) released under the Apache License Version 2.0\n\nCode from the libGDX tutorial \"Tyrian\"\nby Gustavo Steigert released under the Apache License Version 2.0\n\nWith code examples from the article \"Animating transitions between Libgdx screens using TweenEngine\"\nby Tina Denuit-Wojcik posted on Enplug (https://enplug.com)\n\n"

    iget-object v7, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v7}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 171
    .local v1, "creditsText":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    .line 172
    .local v3, "labelStyle":Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    iget-object v6, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v6}, Lde/fgerbig/spacepeng/SpacePeng;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v6

    iput-object v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 173
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 174
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 175
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 176
    .local v4, "scrollPane":Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x44340000    # 720.0f

    const/high16 v8, 0x437c0000    # 252.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 177
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 180
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v6, "Back"

    iget-object v7, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v7}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 181
    .local v0, "backButton":Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    iget-object v6, p0, Lde/fgerbig/spacepeng/screens/CreditsScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 182
    new-instance v6, Lde/fgerbig/spacepeng/screens/CreditsScreen$1;

    invoke-direct {v6, p0}, Lde/fgerbig/spacepeng/screens/CreditsScreen$1;-><init>(Lde/fgerbig/spacepeng/screens/CreditsScreen;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 190
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 191
    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x44160000    # 600.0f

    const/high16 v8, 0x42640000    # 57.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 192
    return-void
.end method
