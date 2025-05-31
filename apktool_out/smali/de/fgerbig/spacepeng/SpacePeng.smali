.class public Lde/fgerbig/spacepeng/SpacePeng;
.super Lcom/badlogic/gdx/Game;
.source "SpacePeng.java"


# static fields
.field public static final assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field public static currentGame:Lde/fgerbig/spacepeng/SpacePeng;

.field public static final musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

.field public static final preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

.field public static final profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

.field public static final soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

.field public static final tweenManager:Laurelienribon/tweenengine/TweenManager;


# instance fields
.field private atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field private background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field private fpsLogger:Lcom/badlogic/gdx/graphics/FPSLogger;

.field private largeFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private mediumFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private smallFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/badlogic/gdx/assets/AssetManager;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 54
    new-instance v0, Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/services/PreferencesManager;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    .line 55
    new-instance v0, Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/services/ProfileManager;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    .line 56
    new-instance v0, Lde/fgerbig/spacepeng/services/MusicManager;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/services/MusicManager;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    .line 57
    new-instance v0, Lde/fgerbig/spacepeng/services/SoundManager;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/services/SoundManager;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    .line 59
    new-instance v0, Laurelienribon/tweenengine/TweenManager;

    invoke-direct {v0}, Laurelienribon/tweenengine/TweenManager;-><init>()V

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->tweenManager:Laurelienribon/tweenengine/TweenManager;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lde/fgerbig/spacepeng/SpacePeng;->currentGame:Lde/fgerbig/spacepeng/SpacePeng;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/Game;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/FPSLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/FPSLogger;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->fpsLogger:Lcom/badlogic/gdx/graphics/FPSLogger;

    return-void
.end method

.method public static glClear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 65
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public create()V
    .locals 10

    .prologue
    const/high16 v9, 0x44480000    # 800.0f

    const/high16 v8, 0x43f00000    # 480.0f

    .line 85
    sput-object p0, Lde/fgerbig/spacepeng/SpacePeng;->currentGame:Lde/fgerbig/spacepeng/SpacePeng;

    .line 86
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating game on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v7}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-virtual {v4}, Lde/fgerbig/spacepeng/services/ProfileManager;->retrieveProfile()Lde/fgerbig/spacepeng/services/Profile;

    .line 92
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Note skin \'skin/uiskin.json\' for loading with asset manager."

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v5, "skin/uiskin.json"

    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;)V

    .line 95
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Note font \'font/small.fnt\' for loading with asset manager."

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v5, "font/small.fnt"

    const-class v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;)V

    .line 97
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Note font \'font/medium.fnt\' for loading with asset manager."

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v5, "font/medium.fnt"

    const-class v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;)V

    .line 99
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Note font \'font/large.fnt\' for loading with asset manager."

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v5, "font/large.fnt"

    const-class v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Note image atlas \'image/page0.pack\' for loading with asset manager."

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v5, "image/page0.pack"

    const-class v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    invoke-static {}, Lde/fgerbig/spacepeng/assets/MusicKey;->values()[Lde/fgerbig/spacepeng/assets/MusicKey;

    move-result-object v0

    .local v0, "arr$":[Lde/fgerbig/spacepeng/assets/MusicKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 106
    .local v2, "key":Lde/fgerbig/spacepeng/assets/MusicKey;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Note music \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/assets/MusicKey;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for loading with asset manager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/assets/MusicKey;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/badlogic/gdx/audio/Music;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "key":Lde/fgerbig/spacepeng/assets/MusicKey;
    :cond_0
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    sget-object v5, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v5}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getVolume()F

    move-result v5

    invoke-virtual {v4, v5}, Lde/fgerbig/spacepeng/services/MusicManager;->setVolume(F)V

    .line 111
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    sget-object v5, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v5}, Lde/fgerbig/spacepeng/services/PreferencesManager;->isMusicEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lde/fgerbig/spacepeng/services/MusicManager;->setEnabled(Z)V

    .line 113
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v5, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v5}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getVolume()F

    move-result v5

    invoke-virtual {v4, v5}, Lde/fgerbig/spacepeng/services/SoundManager;->setVolume(F)V

    .line 114
    sget-object v4, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    sget-object v5, Lde/fgerbig/spacepeng/SpacePeng;->preferencesManager:Lde/fgerbig/spacepeng/services/PreferencesManager;

    invoke-virtual {v5}, Lde/fgerbig/spacepeng/services/PreferencesManager;->isSoundEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lde/fgerbig/spacepeng/services/SoundManager;->setEnabled(Z)V

    .line 116
    const-class v4, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    new-instance v5, Lde/fgerbig/spacepeng/tween/SpriteTween;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/tween/SpriteTween;-><init>()V

    invoke-static {v4, v5}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    .line 117
    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lde/fgerbig/spacepeng/tween/CellTween;

    invoke-direct {v5}, Lde/fgerbig/spacepeng/tween/CellTween;-><init>()V

    invoke-static {v4, v5}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    .line 119
    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4, v9, v8}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/SpacePeng;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 120
    new-instance v4, Lcom/badlogic/gdx/utils/viewport/FitViewport;

    iget-object v5, p0, Lde/fgerbig/spacepeng/SpacePeng;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4, v9, v8, v5}, Lcom/badlogic/gdx/utils/viewport/FitViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    iput-object v4, p0, Lde/fgerbig/spacepeng/SpacePeng;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 121
    iget-object v4, p0, Lde/fgerbig/spacepeng/SpacePeng;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply(Z)V

    .line 122
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v4, p0, Lde/fgerbig/spacepeng/SpacePeng;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 128
    new-instance v4, Lde/fgerbig/spacepeng/screens/SplashScreen;

    invoke-direct {v4, p0}, Lde/fgerbig/spacepeng/screens/SplashScreen;-><init>(Lde/fgerbig/spacepeng/SpacePeng;)V

    invoke-virtual {p0, v4}, Lde/fgerbig/spacepeng/SpacePeng;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 129
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/badlogic/gdx/Game;->dispose()V

    .line 204
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    const-string v2, "Disposing game"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetManager;->dispose()V

    .line 210
    :cond_0
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->musicManager:Lde/fgerbig/spacepeng/services/MusicManager;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/MusicManager;->dispose()V

    .line 213
    :cond_1
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    if-eqz v0, :cond_2

    .line 214
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->soundManager:Lde/fgerbig/spacepeng/services/SoundManager;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/SoundManager;->dispose()V

    .line 217
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 218
    return-void
.end method

.method public getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.method public getBackground()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    return-object v0
.end method

.method public getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string v1, "default-font"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    return-object v0
.end method

.method public getLargeFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->largeFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getMediumFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->mediumFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public getSmallFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->smallFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    return-object v0
.end method

.method public getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-object v0
.end method

.method public initAssets()V
    .locals 10

    .prologue
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 132
    sget-object v7, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v8, "skin/uiskin.json"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 135
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 136
    .local v6, "scale":F
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v8, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 137
    .local v1, "checkBoxStyle_Default":Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    .line 138
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinHeight(F)V

    .line 139
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    .line 140
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinHeight(F)V

    .line 142
    sget-object v7, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v8, "font/small.fnt"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->smallFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 143
    sget-object v7, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v8, "font/medium.fnt"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->mediumFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 144
    sget-object v7, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v8, "font/large.fnt"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->largeFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 145
    sget-object v7, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-string v8, "image/page0.pack"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iput-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 146
    iget-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string v8, "background"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v7

    iput-object v7, p0, Lde/fgerbig/spacepeng/SpacePeng;->background:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 148
    invoke-static {}, Lde/fgerbig/spacepeng/assets/MusicKey;->values()[Lde/fgerbig/spacepeng/assets/MusicKey;

    move-result-object v0

    .local v0, "arr$":[Lde/fgerbig/spacepeng/assets/MusicKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 149
    .local v3, "key":Lde/fgerbig/spacepeng/assets/MusicKey;
    sget-object v7, Lde/fgerbig/spacepeng/SpacePeng;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v3}, Lde/fgerbig/spacepeng/assets/MusicKey;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/audio/Music;

    .line 150
    .local v5, "music":Lcom/badlogic/gdx/audio/Music;
    invoke-virtual {v3, v5}, Lde/fgerbig/spacepeng/assets/MusicKey;->setMusic(Lcom/badlogic/gdx/audio/Music;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "key":Lde/fgerbig/spacepeng/assets/MusicKey;
    .end local v5    # "music":Lcom/badlogic/gdx/audio/Music;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 172
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    const-string v2, "Pausing game"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-super {p0}, Lcom/badlogic/gdx/Game;->pause()V

    .line 176
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->profileManager:Lde/fgerbig/spacepeng/services/ProfileManager;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/services/ProfileManager;->persist()V

    .line 177
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lde/fgerbig/spacepeng/SpacePeng;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 157
    invoke-super {p0}, Lcom/badlogic/gdx/Game;->render()V

    .line 162
    return-void
.end method

.method public resize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/Game;->resize(II)V

    .line 167
    iget-object v0, p0, Lde/fgerbig/spacepeng/SpacePeng;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(II)V

    .line 168
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lcom/badlogic/gdx/Game;->resume()V

    .line 182
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    const-string v2, "Resuming game"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setScreen(Lcom/badlogic/gdx/Screen;)V
    .locals 4
    .param p1, "newScreen"    # Lcom/badlogic/gdx/Screen;

    .prologue
    .line 187
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0, p1}, Lcom/badlogic/gdx/Game;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 189
    return-void
.end method

.method public setScreenWithTransition(Lcom/badlogic/gdx/Screen;)V
    .locals 6
    .param p1, "newScreen"    # Lcom/badlogic/gdx/Screen;

    .prologue
    .line 192
    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->currentGame:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getLeftGutterWidth()I

    move-result v0

    int-to-float v2, v0

    sget-object v0, Lde/fgerbig/spacepeng/SpacePeng;->currentGame:Lde/fgerbig/spacepeng/SpacePeng;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/SpacePeng;->getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getTopGutterHeight()I

    move-result v0

    add-int/lit16 v0, v0, 0x1e0

    int-to-float v3, v0

    sget-object v4, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lde/fgerbig/spacepeng/SpacePeng;->setScreenWithTransition(Lcom/badlogic/gdx/Screen;FFLaurelienribon/tweenengine/TweenEquation;F)V

    .line 193
    return-void
.end method

.method public setScreenWithTransition(Lcom/badlogic/gdx/Screen;FFLaurelienribon/tweenengine/TweenEquation;F)V
    .locals 8
    .param p1, "newScreen"    # Lcom/badlogic/gdx/Screen;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "tweenEquation"    # Laurelienribon/tweenengine/TweenEquation;
    .param p5, "speed"    # F

    .prologue
    .line 196
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting screen with transition: from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/fgerbig/spacepeng/SpacePeng;->screen:Lcom/badlogic/gdx/Screen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lde/fgerbig/spacepeng/screens/TransitionScreen;

    iget-object v1, p0, Lde/fgerbig/spacepeng/SpacePeng;->screen:Lcom/badlogic/gdx/Screen;

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lde/fgerbig/spacepeng/screens/TransitionScreen;-><init>(Lcom/badlogic/gdx/Screen;Lcom/badlogic/gdx/Screen;Lde/fgerbig/spacepeng/SpacePeng;FFLaurelienribon/tweenengine/TweenEquation;F)V

    .line 198
    .local v0, "transitionScreen":Lde/fgerbig/spacepeng/screens/TransitionScreen;
    invoke-virtual {p0, v0}, Lde/fgerbig/spacepeng/SpacePeng;->setScreen(Lcom/badlogic/gdx/Screen;)V

    .line 199
    return-void
.end method
