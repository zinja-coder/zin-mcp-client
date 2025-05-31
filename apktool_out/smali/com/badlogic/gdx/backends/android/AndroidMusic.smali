.class public Lcom/badlogic/gdx/backends/android/AndroidMusic;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private final audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field private isPrepared:Z

.field protected onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

.field private player:Landroid/media/MediaPlayer;

.field private volume:F

.field protected wasPlaying:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidAudio;Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "audio"    # Lcom/badlogic/gdx/backends/android/AndroidAudio;
    .param p2, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    .line 36
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMusic"

    const-string v3, "error while disposing AndroidMusic instance, non-fatal"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 49
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    .line 50
    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 51
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    monitor-enter v2

    .line 52
    :try_start_4
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    iget-object v3, v3, Lcom/badlogic/gdx/backends/android/AndroidAudio;->musics:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method

.method public getDuration()F
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getPosition()F
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidMusic$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidMusic;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 75
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->wasPlaying:Z

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "isLooping"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->onCompletionListener:Lcom/badlogic/gdx/audio/Music$OnCompletionListener;

    .line 169
    return-void
.end method

.method public setPan(FF)V
    .locals 5
    .param p1, "pan"    # F
    .param p2, "volume"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    move v0, p2

    .line 118
    .local v0, "leftVolume":F
    move v1, p2

    .line 120
    .local v1, "rightVolume":F
    cmpg-float v2, p1, v3

    if-gez v2, :cond_2

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    .line 126
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 127
    iput p2, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    goto :goto_0

    .line 122
    :cond_2
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 123
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    goto :goto_1
.end method

.method public setPosition(F)V
    .locals 3
    .param p1, "position"    # F

    .prologue
    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 106
    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->volume:F

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 137
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidMusic;->isPrepared:Z

    goto :goto_0
.end method
