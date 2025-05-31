.class public Lde/fgerbig/spacepeng/screens/OptionsScreen;
.super Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;
.source "OptionsScreen.java"


# instance fields
.field private volumeValue:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 13
    .param p1, "game"    # Lde/fgerbig/spacepeng/SpacePeng;

    .prologue
    const/4 v12, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 41
    invoke-direct {p0, p1}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    .line 44
    invoke-super {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v11

    .line 45
    .local v11, "table":Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 46
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 47
    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 49
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v1, "Options"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 50
    .local v8, "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->labelStyle_Heading:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 51
    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 52
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 57
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Application$ApplicationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    const-string v1, ""

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->checkBoxStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v7, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 59
    .local v7, "fullscreenCheckbox":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/services/PreferencesManager;->isFullscreenEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setChecked(Z)V

    .line 60
    new-instance v1, Lde/fgerbig/spacepeng/screens/OptionsScreen$1;

    invoke-direct {v1, p0, v7}, Lde/fgerbig/spacepeng/screens/OptionsScreen$1;-><init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 68
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 69
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .end local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    const-string v1, "Full Screen"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 70
    .restart local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 71
    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 72
    invoke-virtual {v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 75
    .end local v7    # "fullscreenCheckbox":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    :cond_0
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    const-string v1, ""

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->checkBoxStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v10, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 76
    .local v10, "soundEffectsCheckbox":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/services/PreferencesManager;->isSoundEnabled()Z

    move-result v1

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setChecked(Z)V

    .line 77
    new-instance v1, Lde/fgerbig/spacepeng/screens/OptionsScreen$2;

    invoke-direct {v1, p0, v10}, Lde/fgerbig/spacepeng/screens/OptionsScreen$2;-><init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 86
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 87
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .end local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    const-string v1, "Sound Effects"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 88
    .restart local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 89
    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 90
    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 92
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    const-string v1, ""

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->checkBoxStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 93
    .local v9, "musicCheckbox":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/services/PreferencesManager;->isMusicEnabled()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setChecked(Z)V

    .line 94
    new-instance v1, Lde/fgerbig/spacepeng/screens/OptionsScreen$3;

    invoke-direct {v1, p0, v9}, Lde/fgerbig/spacepeng/screens/OptionsScreen$3;-><init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 103
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 104
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .end local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    const-string v1, "Music"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 105
    .restart local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 106
    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 107
    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 111
    .local v0, "volumeSlider":Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->setValue(F)Z

    .line 112
    new-instance v1, Lde/fgerbig/spacepeng/screens/OptionsScreen$4;

    invoke-direct {v1, p0}, Lde/fgerbig/spacepeng/screens/OptionsScreen$4;-><init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 124
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, ""

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->volumeValue:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 125
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->volumeValue:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 126
    invoke-direct {p0}, Lde/fgerbig/spacepeng/screens/OptionsScreen;->updateVolumeLabel()V

    .line 128
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 129
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .end local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    const-string v1, "Volume"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 130
    .restart local v8    # "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 131
    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 132
    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 133
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->volumeValue:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 136
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v1, "Back"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v6, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 137
    .local v6, "backButton":Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 138
    new-instance v1, Lde/fgerbig/spacepeng/screens/OptionsScreen$5;

    invoke-direct {v1, p0, p1}, Lde/fgerbig/spacepeng/screens/OptionsScreen$5;-><init>(Lde/fgerbig/spacepeng/screens/OptionsScreen;Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 146
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 147
    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x44160000    # 600.0f

    const/high16 v3, 0x42640000    # 57.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lde/fgerbig/spacepeng/screens/OptionsScreen;)V
    .locals 0
    .param p0, "x0"    # Lde/fgerbig/spacepeng/screens/OptionsScreen;

    .prologue
    .line 36
    invoke-direct {p0}, Lde/fgerbig/spacepeng/screens/OptionsScreen;->updateVolumeLabel()V

    return-void
.end method

.method private updateVolumeLabel()V
    .locals 7

    .prologue
    .line 159
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getVolume()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 160
    .local v0, "volume":F
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/OptionsScreen;->volumeValue:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%1.0f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->show()V

    .line 153
    return-void
.end method
