.class public Lde/fgerbig/spacepeng/screens/SplashScreen;
.super Lcom/badlogic/gdx/ScreenAdapter;
.source "SplashScreen.java"


# instance fields
.field private final PROGRESSBAR_COLOR:Lcom/badlogic/gdx/graphics/Color;

.field private final PROGRESSBAR_HEIGHT:I

.field private finished:Z

.field private final game:Lde/fgerbig/spacepeng/SpacePeng;

.field private shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private splashTexture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/SpacePeng;)V
    .locals 5
    .param p1, "game"    # Lde/fgerbig/spacepeng/SpacePeng;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/ScreenAdapter;-><init>()V

    .line 32
    const/16 v0, 0xc

    iput v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->PROGRESSBAR_HEIGHT:I

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3efefeff

    const v2, 0x3f54d4d5

    const v3, 0x3f169697

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->PROGRESSBAR_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->finished:Z

    .line 42
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    .line 43
    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->splashTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 104
    return-void
.end method

.method public render(F)V
    .locals 7
    .param p1, "delta"    # F

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/4 v2, 0x0

    .line 64
    invoke-static {}, Lde/fgerbig/spacepeng/SpacePeng;->glClear()V

    .line 68
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/SpacePeng;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v0

    .line 69
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 70
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->splashTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/high16 v5, 0x43f00000    # 480.0f

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    .line 71
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 74
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 75
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 76
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1, v2, v2, v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    .line 77
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->PROGRESSBAR_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 78
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v3, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v3}, Lcom/badlogic/gdx/assets/AssetManager;->getProgress()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v2, v3, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    .line 79
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 81
    iget-boolean v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->finished:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v1

    iput-boolean v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->finished:Z

    .line 87
    iget-boolean v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->finished:Z

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    const-string v3, "Finished loading with asset manager."

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/SpacePeng;->initAssets()V

    .line 90
    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v2, Lde/fgerbig/spacepeng/assets/SoundKey;->BOING:Lde/fgerbig/spacepeng/assets/SoundKey;

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/services/SoundManager;->play(Lde/fgerbig/spacepeng/assets/SoundKey;)V

    .line 91
    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    new-instance v2, Lde/fgerbig/spacepeng/screens/MenuScreen;

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-direct {v2, v3}, Lde/fgerbig/spacepeng/screens/MenuScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {v1, v2}, Lde/fgerbig/spacepeng/SpacePeng;->setScreenWithTransition(Lcom/badlogic/gdx/Screen;)V

    goto :goto_0
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

    invoke-direct {p0}, Lde/fgerbig/spacepeng/screens/SplashScreen;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(II)V

    .line 99
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/badlogic/gdx/ScreenAdapter;->show()V

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    const-string v1, "splash.jpg"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->splashTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 57
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->splashTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/SplashScreen;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 60
    return-void
.end method
