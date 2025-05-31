.class final Lcom/badlogic/gdx/backends/android/AndroidSound;
.super Ljava/lang/Object;
.source "AndroidSound.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Sound;


# instance fields
.field final manager:Landroid/media/AudioManager;

.field final soundId:I

.field final soundPool:Landroid/media/SoundPool;

.field final streamIds:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    .locals 2
    .param p1, "pool"    # Landroid/media/SoundPool;
    .param p2, "manager"    # Landroid/media/AudioManager;
    .param p3, "soundId"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    .line 33
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->manager:Landroid/media/AudioManager;

    .line 34
    iput p3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    .line 35
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 40
    return-void
.end method

.method public loop()J
    .locals 2

    .prologue
    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;->loop(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public loop(F)J
    .locals 8
    .param p1, "volume"    # F

    .prologue
    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 107
    .local v7, "streamId":I
    if-nez v7, :cond_1

    const-wide/16 v0, -0x1

    .line 109
    :goto_0
    return-wide v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    .line 109
    int-to-long v0, v7

    goto :goto_0
.end method

.method public loop(FFF)J
    .locals 8
    .param p1, "volume"    # F
    .param p2, "pitch"    # F
    .param p3, "pan"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 151
    :cond_0
    move v2, p1

    .line 152
    .local v2, "leftVolume":F
    move v3, p1

    .line 153
    .local v3, "rightVolume":F
    cmpg-float v0, p3, v4

    if-gez v0, :cond_2

    .line 154
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v5, v0

    mul-float/2addr v3, v0

    .line 158
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 160
    .local v7, "streamId":I
    if-nez v7, :cond_3

    const-wide/16 v0, -0x1

    .line 162
    :goto_1
    return-wide v0

    .line 155
    .end local v7    # "streamId":I
    :cond_2
    cmpl-float v0, p3, v4

    if-lez v0, :cond_1

    .line 156
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v5, v0

    mul-float/2addr v2, v0

    goto :goto_0

    .line 161
    .restart local v7    # "streamId":I
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    .line 162
    int-to-long v0, v7

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 70
    return-void
.end method

.method public pause(J)V
    .locals 3
    .param p1, "soundId"    # J

    .prologue
    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 75
    return-void
.end method

.method public play()J
    .locals 2

    .prologue
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidSound;->play(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public play(F)J
    .locals 8
    .param p1, "volume"    # F

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 52
    .local v7, "streamId":I
    if-nez v7, :cond_1

    const-wide/16 v0, -0x1

    .line 54
    :goto_0
    return-wide v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v5, v7}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    .line 54
    int-to-long v0, v7

    goto :goto_0
.end method

.method public play(FFF)J
    .locals 8
    .param p1, "volume"    # F
    .param p2, "pitch"    # F
    .param p3, "pan"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    .line 134
    :cond_0
    move v2, p1

    .line 135
    .local v2, "leftVolume":F
    move v3, p1

    .line 136
    .local v3, "rightVolume":F
    cmpg-float v0, p3, v4

    if-gez v0, :cond_2

    .line 137
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    mul-float/2addr v3, v0

    .line 141
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundId:I

    const/4 v4, 0x1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 143
    .local v7, "streamId":I
    if-nez v7, :cond_3

    const-wide/16 v0, -0x1

    .line 145
    :goto_1
    return-wide v0

    .line 138
    .end local v7    # "streamId":I
    :cond_2
    cmpl-float v0, p3, v4

    if-lez v0, :cond_1

    .line 139
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    mul-float/2addr v2, v0

    goto :goto_0

    .line 144
    .restart local v7    # "streamId":I
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v5, v7}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    .line 145
    int-to-long v0, v7

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 80
    return-void
.end method

.method public resume(J)V
    .locals 3
    .param p1, "soundId"    # J

    .prologue
    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 85
    return-void
.end method

.method public setLooping(JZ)V
    .locals 3
    .param p1, "soundId"    # J
    .param p3, "looping"    # Z

    .prologue
    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v2, p1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/media/SoundPool;->setLoop(II)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPan(JFF)V
    .locals 5
    .param p1, "soundId"    # J
    .param p3, "pan"    # F
    .param p4, "volume"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 119
    move v0, p4

    .line 120
    .local v0, "leftVolume":F
    move v1, p4

    .line 122
    .local v1, "rightVolume":F
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 123
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    .line 128
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v3, p1

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 129
    return-void

    .line 124
    :cond_1
    cmpl-float v2, p3, v3

    if-lez v2, :cond_0

    .line 125
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method public setPitch(JF)V
    .locals 3
    .param p1, "soundId"    # J
    .param p3, "pitch"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/media/SoundPool;->setRate(IF)V

    .line 90
    return-void
.end method

.method public setPriority(JI)V
    .locals 3
    .param p1, "soundId"    # J
    .param p3, "priority"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/media/SoundPool;->setPriority(II)V

    .line 168
    return-void
.end method

.method public setVolume(JF)V
    .locals 3
    .param p1, "soundId"    # J
    .param p3, "volume"    # F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 95
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->streamIds:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public stop(J)V
    .locals 3
    .param p1, "soundId"    # J

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidSound;->soundPool:Landroid/media/SoundPool;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 65
    return-void
.end method
