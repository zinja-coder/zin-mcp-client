.class public abstract Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;
.super Ljava/lang/Object;
.source "AbstractMenuScreen.java"

# interfaces
.implements Lcom/badlogic/gdx/Screen;


# instance fields
.field protected final BUTTON_HEIGHT:I

.field protected final BUTTON_SPACING:I

.field protected final BUTTON_WIDTH:I

.field protected checkBoxStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

.field protected final game:Lde/fgerbig/spacepeng/SpacePeng;

.field protected labelStyle_Heading:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field protected labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field protected final stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field protected final table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field protected textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 5
    .param p1, "game"    # Lde/fgerbig/spacepeng/SpacePeng;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v1, 0x258

    iput v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->BUTTON_WIDTH:I

    .line 37
    const/16 v1, 0x39

    iput v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->BUTTON_HEIGHT:I

    .line 38
    const/16 v1, 0x9

    iput v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->BUTTON_SPACING:I

    .line 46
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    .line 48
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iput-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 52
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    const/high16 v1, 0x44480000    # 800.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setWidth(F)V

    .line 53
    const/high16 v1, 0x43f00000    # 480.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setHeight(F)V

    .line 54
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 57
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 58
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setFillParent(Z)V

    .line 59
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setDebug(Z)V

    .line 60
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 62
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    sget-object v2, Lde/fgerbig/spacepeng/assets/MusicKey;->MENU:Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/services/MusicManager;->play(Lde/fgerbig/spacepeng/assets/MusicKey;)V

    .line 64
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->labelStyle_Heading:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 65
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->labelStyle_Heading:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getLargeFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 67
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 68
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->labelStyle_OptionsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getMediumFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 70
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 71
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->textButtonStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getMediumFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 73
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v1

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    iput-object v2, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->checkBoxStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .line 74
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->checkBoxStyle_Default:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/SpacePeng;->getMediumFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v2

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 75
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 134
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disposing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    .line 140
    :cond_0
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 116
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hiding screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->dispose()V

    .line 120
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 124
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public render(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 103
    invoke-static {}, Lde/fgerbig/spacepeng/SpacePeng;->glClear()V

    .line 105
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/TweenManager;->update(F)V

    .line 108
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 111
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 112
    return-void
.end method

.method public resize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resizing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(II)V

    .line 99
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 129
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 89
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/AbstractMenuScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 93
    return-void
.end method
