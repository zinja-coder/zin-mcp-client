.class public Lde/fgerbig/spacepeng/screens/MenuScreen;
.super Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;
.source "MenuScreen.java"


# instance fields
.field final BUTTON_START_HEIGHT:F

.field final BUTTON_START_WIDTH:F

.field continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field continueGameButton_h:F

.field continueGameButton_w:F

.field creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field creditsButton_h:F

.field creditsButton_w:F

.field optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field optionsButton_h:F

.field optionsButton_w:F

.field profile:Lde/fgerbig/spacepeng/services/Profile;

.field quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field quitButton_h:F

.field quitButton_w:F

.field startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field startGameButton_h:F

.field startGameButton_w:F


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 12
    .param p1, "game"    # Lde/fgerbig/spacepeng/SpacePeng;

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x44160000    # 600.0f

    const/high16 v9, 0x42640000    # 57.0f

    const/high16 v8, 0x433e0000    # 190.0f

    const/high16 v7, 0x42480000    # 50.0f

    .line 62
    invoke-direct {p0, p1}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    .line 41
    iput v8, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->BUTTON_START_WIDTH:F

    .line 42
    iput v7, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->BUTTON_START_HEIGHT:F

    .line 65
    invoke-super {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    .line 66
    .local v2, "table":Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 68
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v4, "SPACE PENG!"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 69
    .local v1, "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->labelStyle_Heading:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 70
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 71
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 73
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-virtual {v4}, Lde/fgerbig/spacepeng/services/ProfileManager;->retrieveProfile()Lde/fgerbig/spacepeng/services/Profile;

    move-result-object v4

    iput-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    .line 75
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v4}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v4

    if-le v4, v11, :cond_0

    .line 77
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v6}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 78
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v5, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 79
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v5, Lde/fgerbig/spacepeng/screens/MenuScreen$1;

    invoke-direct {v5, p0, p1}, Lde/fgerbig/spacepeng/screens/MenuScreen$1;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 87
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41980000    # 19.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 88
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 92
    :cond_0
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v4}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v4

    if-le v4, v11, :cond_2

    const-string v3, "RESTART"

    .line 93
    .local v3, "title":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 94
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v5, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 95
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v5, Lde/fgerbig/spacepeng/screens/MenuScreen$2;

    invoke-direct {v5, p0, p1}, Lde/fgerbig/spacepeng/screens/MenuScreen$2;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 104
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 105
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 108
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v5, "Credits"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 109
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v5, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 110
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v5, Lde/fgerbig/spacepeng/screens/MenuScreen$3;

    invoke-direct {v5, p0, p1}, Lde/fgerbig/spacepeng/screens/MenuScreen$3;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 118
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 119
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 122
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v5, "Options"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 123
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v5, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 124
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v5, Lde/fgerbig/spacepeng/screens/MenuScreen$4;

    invoke-direct {v5, p0, p1}, Lde/fgerbig/spacepeng/screens/MenuScreen$4;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 132
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x41980000    # 19.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 133
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 136
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string v5, "QUIT"

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 137
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v5, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 138
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    new-instance v5, Lde/fgerbig/spacepeng/screens/MenuScreen$5;

    invoke-direct {v5, p0, p1}, Lde/fgerbig/spacepeng/screens/MenuScreen$5;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 147
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 151
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v4}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v4

    if-le v4, v11, :cond_1

    .line 152
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 153
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxWidth()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton_w:F

    .line 154
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxHeight()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton_h:F

    .line 155
    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 158
    .end local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_1
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 159
    .restart local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxWidth()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton_w:F

    .line 160
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxHeight()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton_h:F

    .line 161
    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 163
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxWidth()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton_w:F

    .line 165
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxHeight()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton_h:F

    .line 166
    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 168
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxWidth()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton_w:F

    .line 170
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxHeight()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton_h:F

    .line 171
    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 173
    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxWidth()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton_w:F

    .line 175
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->getMaxHeight()F

    move-result v4

    iput v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton_h:F

    .line 176
    invoke-virtual {v0, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 178
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 179
    return-void

    .line 92
    .end local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    const-string v3, "START"

    goto/16 :goto_0
.end method


# virtual methods
.method public render(F)V
    .locals 6
    .param p1, "delta"    # F

    .prologue
    .line 264
    invoke-static {}, Lde/fgerbig/spacepeng/SpacePeng;->glClear()V

    .line 266
    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v3, p1}, Laurelienribon/tweenengine/TweenManager;->update(F)V

    .line 267
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    .line 270
    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 273
    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 276
    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    .line 277
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g2d/Batch;
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 278
    const/high16 v3, 0x44480000    # 800.0f

    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v4}, Lde/fgerbig/spacepeng/SpacePeng;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v4

    const-string v5, "V1.58-1"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    sub-float v1, v3, v4

    .line 279
    .local v1, "x":F
    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v3}, Lde/fgerbig/spacepeng/SpacePeng;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    const-string v4, "V1.58-1"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    iget v2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 280
    .local v2, "y":F
    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v3}, Lde/fgerbig/spacepeng/SpacePeng;->getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    iget-object v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v4

    const-string v5, "V1.58-1"

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 281
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 282
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 183
    invoke-super {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->show()V

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "delay":F
    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/services/Profile;->getLastPlayedLevel()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 189
    const v1, 0x3ea8f5c3    # 0.33f

    .line 190
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 191
    .local v0, "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-static {v0, v7, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    new-instance v3, Lde/fgerbig/spacepeng/screens/MenuScreen$6;

    invoke-direct {v3, p0}, Lde/fgerbig/spacepeng/screens/MenuScreen$6;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v6}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    iget v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton_w:F

    iget v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->continueGameButton_h:F

    invoke-virtual {v2, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 204
    .end local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    :cond_0
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 205
    .restart local v0    # "cell":Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    invoke-static {v0, v7, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    const/4 v3, 0x0

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    new-instance v3, Lde/fgerbig/spacepeng/screens/MenuScreen$7;

    invoke-direct {v3, p0}, Lde/fgerbig/spacepeng/screens/MenuScreen$7;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v6}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    iget v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton_w:F

    iget v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->startGameButton_h:F

    invoke-virtual {v2, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 219
    invoke-static {v0, v7, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    const v3, 0x3ea8f5c3    # 0.33f

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    new-instance v3, Lde/fgerbig/spacepeng/screens/MenuScreen$8;

    invoke-direct {v3, p0}, Lde/fgerbig/spacepeng/screens/MenuScreen$8;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v6}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    iget v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton_w:F

    iget v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->creditsButton_h:F

    invoke-virtual {v2, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 233
    invoke-static {v0, v7, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    const v3, 0x3f28f5c3    # 0.66f

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    new-instance v3, Lde/fgerbig/spacepeng/screens/MenuScreen$9;

    invoke-direct {v3, p0}, Lde/fgerbig/spacepeng/screens/MenuScreen$9;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v6}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    iget v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton_w:F

    iget v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->optionsButton_h:F

    invoke-virtual {v2, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/MenuScreen;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 247
    invoke-static {v0, v7, v5}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    add-float v3, v5, v1

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    new-instance v3, Lde/fgerbig/spacepeng/screens/MenuScreen$10;

    invoke-direct {v3, p0}, Lde/fgerbig/spacepeng/screens/MenuScreen$10;-><init>(Lde/fgerbig/spacepeng/screens/MenuScreen;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    invoke-virtual {v2, v6}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Tween;

    iget v3, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton_w:F

    iget v4, p0, Lde/fgerbig/spacepeng/screens/MenuScreen;->quitButton_h:F

    invoke-virtual {v2, v3, v4}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 260
    return-void
.end method
