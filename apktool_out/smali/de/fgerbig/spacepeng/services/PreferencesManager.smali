.class public Lde/fgerbig/spacepeng/services/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# static fields
.field public static final PREFS_DIRNAME:Ljava/lang/String;

.field public static final PREFS_FILENAME:Ljava/lang/String;

.field public static final PREF_FULLSCREEN_ENABLED:Ljava/lang/String; = "fullscreen_enabled"

.field private static final PREF_MUSIC_ENABLED:Ljava/lang/String; = "music_enabled"

.field private static final PREF_SOUND_ENABLED:Ljava/lang/String; = "sound_enabled"

.field private static final PREF_VOLUME:Ljava/lang/String; = "volume"


# instance fields
.field private prefs:Lcom/badlogic/gdx/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lde/fgerbig/spacepeng/global/Const;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SpacePeng"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/fgerbig/spacepeng/services/PreferencesManager;->PREFS_DIRNAME:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpacePeng"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/fgerbig/spacepeng/services/PreferencesManager;->PREFS_FILENAME:Ljava/lang/String;

    return-void

    .line 29
    :cond_0
    const-string v0, "."

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected declared-synchronized getPrefs()Lcom/badlogic/gdx/Preferences;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/PreferencesManager;->prefs:Lcom/badlogic/gdx/Preferences;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lde/fgerbig/spacepeng/services/PreferencesManager;->PREFS_FILENAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    iput-object v0, p0, Lde/fgerbig/spacepeng/services/PreferencesManager;->prefs:Lcom/badlogic/gdx/Preferences;

    .line 45
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/PreferencesManager;->prefs:Lcom/badlogic/gdx/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVolume()F
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "volume"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public isFullscreenEnabled()Z
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "fullscreen_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMusicEnabled()Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "music_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "sound_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFullscreenEnabled(Z)V
    .locals 2
    .param p1, "fullscreenEnabled"    # Z

    .prologue
    .line 53
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "fullscreen_enabled"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;

    .line 54
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 55
    return-void
.end method

.method public setMusicEnabled(Z)V
    .locals 2
    .param p1, "musicEnabled"    # Z

    .prologue
    .line 71
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "music_enabled"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;

    .line 72
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 73
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 2
    .param p1, "soundEffectsEnabled"    # Z

    .prologue
    .line 62
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "sound_enabled"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Preferences;->putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;

    .line 63
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 64
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 80
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    const-string v1, "volume"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Preferences;->putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;

    .line 81
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/PreferencesManager;->getPrefs()Lcom/badlogic/gdx/Preferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/Preferences;->flush()V

    .line 82
    return-void
.end method
