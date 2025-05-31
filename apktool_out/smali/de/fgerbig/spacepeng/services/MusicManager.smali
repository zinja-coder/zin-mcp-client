.class public Lde/fgerbig/spacepeng/services/MusicManager;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private enabled:Z

.field private lastMusicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

.field private musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->volume:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->enabled:Z

    .line 52
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    const-string v2, "Disposing music manager"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/MusicManager;->stop()V

    .line 143
    return-void
.end method

.method public play(Lde/fgerbig/spacepeng/assets/MusicKey;)V
    .locals 5
    .param p1, "musicKey"    # Lde/fgerbig/spacepeng/assets/MusicKey;

    .prologue
    .line 61
    iget-boolean v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->enabled:Z

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    if-eq v1, p1, :cond_0

    .line 67
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/assets/MusicKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/MusicManager;->stop()V

    .line 73
    invoke-virtual {p1}, Lde/fgerbig/spacepeng/assets/MusicKey;->getMusic()Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    .line 74
    .local v0, "music":Lcom/badlogic/gdx/audio/Music;
    iget v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->volume:F

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 75
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 76
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 79
    iput-object p1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 118
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->enabled:Z

    if-ne v0, p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iput-boolean p1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->enabled:Z

    .line 125
    if-nez p1, :cond_2

    .line 126
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/services/MusicManager;->stop()V

    goto :goto_0

    .line 131
    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->lastMusicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->lastMusicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-virtual {p0, v0}, Lde/fgerbig/spacepeng/services/MusicManager;->play(Lde/fgerbig/spacepeng/assets/MusicKey;)V

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .prologue
    .line 99
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting music volume to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume must be inside the range: [0,1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iput p1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->volume:F

    .line 108
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-virtual {v0}, Lde/fgerbig/spacepeng/assets/MusicKey;->getMusic()Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 111
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "SpacePeng"

    const-string v3, "Stopping current music"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/assets/MusicKey;->getMusic()Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    .line 89
    .local v0, "music":Lcom/badlogic/gdx/audio/Music;
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 90
    iget-object v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    iput-object v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->lastMusicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lde/fgerbig/spacepeng/services/MusicManager;->musicKeyBeingPlayed:Lde/fgerbig/spacepeng/assets/MusicKey;

    .line 93
    .end local v0    # "music":Lcom/badlogic/gdx/audio/Music;
    :cond_0
    return-void
.end method
