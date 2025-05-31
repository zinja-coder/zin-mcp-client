.class public Lde/fgerbig/spacepeng/screens/TransitionScreen;
.super Ljava/lang/Object;
.source "TransitionScreen.java"

# interfaces
.implements Lcom/badlogic/gdx/Screen;


# instance fields
.field private backgroundAnimationTweenComplete:Laurelienribon/tweenengine/TweenCallback;

.field private currentScreen:Lcom/badlogic/gdx/Screen;

.field private currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field private currentScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field protected game:Lde/fgerbig/spacepeng/SpacePeng;

.field private nextScreen:Lcom/badlogic/gdx/Screen;

.field private nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

.field private nextScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

.field private speed:F

.field private spriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private startX:F

.field private startY:F

.field private tweenEquation:Laurelienribon/tweenengine/TweenEquation;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Screen;Lcom/badlogic/gdx/Screen;Lde/fgerbig/spacepeng/SpacePeng;FFLaurelienribon/tweenengine/TweenEquation;F)V
    .locals 0
    .param p1, "currentScreen"    # Lcom/badlogic/gdx/Screen;
    .param p2, "nextScreen"    # Lcom/badlogic/gdx/Screen;
    .param p3, "game"    # Lde/fgerbig/spacepeng/SpacePeng;
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "tweenEquation"    # Laurelienribon/tweenengine/TweenEquation;
    .param p7, "speed"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreen:Lcom/badlogic/gdx/Screen;

    .line 42
    iput-object p2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreen:Lcom/badlogic/gdx/Screen;

    .line 43
    iput-object p3, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    .line 44
    iput p4, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->startX:F

    .line 45
    iput p5, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->startY:F

    .line 46
    iput-object p6, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->tweenEquation:Laurelienribon/tweenengine/TweenEquation;

    .line 47
    iput p7, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->speed:F

    .line 48
    return-void
.end method

.method static synthetic access$000(Lde/fgerbig/spacepeng/screens/TransitionScreen;)Lcom/badlogic/gdx/Screen;
    .locals 1
    .param p0, "x0"    # Lde/fgerbig/spacepeng/screens/TransitionScreen;

    .prologue
    .line 22
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreen:Lcom/badlogic/gdx/Screen;

    return-object v0
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

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/TransitionScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->dispose()V

    .line 139
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    .line 142
    :cond_1
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    .line 145
    :cond_2
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 128
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hiding screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/TransitionScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/TransitionScreen;->dispose()V

    .line 130
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public render(F)V
    .locals 5
    .param p1, "delta"    # F

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-static {}, Lde/fgerbig/spacepeng/SpacePeng;->glClear()V

    .line 58
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/TweenManager;->update(F)V

    .line 60
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->spriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 62
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v3}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 64
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 65
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreen:Lcom/badlogic/gdx/Screen;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Screen;->render(F)V

    .line 66
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 68
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->dispose()V

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 71
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getLeftGutterWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getTopGutterHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 72
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 75
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->currentScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->spriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 76
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->spriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 78
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->spriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 79
    return-void
.end method

.method public resize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 83
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resizing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/TransitionScreen;->getName()Ljava/lang/String;

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

    .line 84
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(II)V

    .line 85
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/fgerbig/spacepeng/screens/TransitionScreen;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->spriteBatch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v3}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .line 99
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->begin()V

    .line 100
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreen:Lcom/badlogic/gdx/Screen;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Screen;->render(F)V

    .line 101
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->end()V

    .line 103
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenBuffer:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 104
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    iget v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->startX:F

    iget v2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->startY:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 105
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 107
    new-instance v0, Lde/fgerbig/spacepeng/screens/TransitionScreen$1;

    invoke-direct {v0, p0}, Lde/fgerbig/spacepeng/screens/TransitionScreen$1;-><init>(Lde/fgerbig/spacepeng/screens/TransitionScreen;)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->backgroundAnimationTweenComplete:Laurelienribon/tweenengine/TweenCallback;

    .line 114
    iget-object v0, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->nextScreenSprite:Lcom/badlogic/gdx/graphics/g2d/Sprite;

    const/4 v1, 0x3

    iget v2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->speed:F

    invoke-static {v0, v1, v2}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getLeftGutterWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->game:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getTopGutterHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->backgroundAnimationTweenComplete:Laurelienribon/tweenengine/TweenCallback;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Tween;

    iget-object v1, p0, Lde/fgerbig/spacepeng/screens/TransitionScreen;->tweenEquation:Laurelienribon/tweenengine/TweenEquation;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 120
    return-void
.end method
