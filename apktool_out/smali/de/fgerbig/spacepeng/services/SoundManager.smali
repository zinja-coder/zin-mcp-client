.class public Lde/fgerbig/spacepeng/services/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener",
        "<",
        "Lde/fgerbig/spacepeng/assets/SoundKey;",
        "Lcom/badlogic/gdx/audio/Sound;",
        ">;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final soundCache:Lde/fgerbig/spacepeng/utils/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/fgerbig/spacepeng/utils/LRUCache",
            "<",
            "Lde/fgerbig/spacepeng/assets/SoundKey;",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lde/fgerbig/spacepeng/services/SoundManager;->volume:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/services/SoundManager;->enabled:Z

    .line 50
    new-instance v0, Lde/fgerbig/spacepeng/utils/LRUCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lde/fgerbig/spacepeng/utils/LRUCache;-><init>(I)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/services/SoundManager;->soundCache:Lde/fgerbig/spacepeng/utils/LRUCache;

    .line 51
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/SoundManager;->soundCache:Lde/fgerbig/spacepeng/utils/LRUCache;

    invoke-virtual {v0, p0}, Lde/fgerbig/spacepeng/utils/LRUCache;->setEntryRemovedListener(Lde/fgerbig/spacepeng/utils/LRUCache$CacheEntryRemovedListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 108
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "SpacePeng"

    const-string v4, "Disposing sound manager"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lde/fgerbig/spacepeng/services/SoundManager;->soundCache:Lde/fgerbig/spacepeng/utils/LRUCache;

    invoke-virtual {v2}, Lde/fgerbig/spacepeng/utils/LRUCache;->retrieveAll()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    .line 110
    .local v1, "sound":Lcom/badlogic/gdx/audio/Sound;
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 111
    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    goto :goto_0

    .line 113
    .end local v1    # "sound":Lcom/badlogic/gdx/audio/Sound;
    :cond_0
    return-void
.end method

.method public notifyEntryRemoved(Lde/fgerbig/spacepeng/assets/SoundKey;Lcom/badlogic/gdx/audio/Sound;)V
    .locals 4
    .param p1, "key"    # Lde/fgerbig/spacepeng/assets/SoundKey;
    .param p2, "value"    # Lcom/badlogic/gdx/audio/Sound;

    .prologue
    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disposing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/assets/SoundKey;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p2}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    .line 100
    return-void
.end method

.method public bridge synthetic notifyEntryRemoved(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lde/fgerbig/spacepeng/assets/SoundKey;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/audio/Sound;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/fgerbig/spacepeng/services/SoundManager;->notifyEntryRemoved(Lde/fgerbig/spacepeng/assets/SoundKey;Lcom/badlogic/gdx/audio/Sound;)V

    return-void
.end method

.method public play(Lde/fgerbig/spacepeng/assets/SoundKey;)V
    .locals 4
    .param p1, "sound"    # Lde/fgerbig/spacepeng/assets/SoundKey;

    .prologue
    .line 59
    iget-boolean v2, p0, Lde/fgerbig/spacepeng/services/SoundManager;->enabled:Z

    if-nez v2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lde/fgerbig/spacepeng/services/SoundManager;->soundCache:Lde/fgerbig/spacepeng/utils/LRUCache;

    invoke-virtual {v2, p1}, Lde/fgerbig/spacepeng/utils/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    .line 63
    .local v1, "soundToPlay":Lcom/badlogic/gdx/audio/Sound;
    if-nez v1, :cond_1

    .line 64
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/assets/SoundKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 65
    .local v0, "soundFile":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lde/fgerbig/spacepeng/services/SoundManager;->soundCache:Lde/fgerbig/spacepeng/utils/LRUCache;

    invoke-virtual {v2, p1, v1}, Lde/fgerbig/spacepeng/utils/LRUCache;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .end local v0    # "soundFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    iget v2, p0, Lde/fgerbig/spacepeng/services/SoundManager;->volume:F

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/audio/Sound;->play(F)J

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lde/fgerbig/spacepeng/services/SoundManager;->enabled:Z

    .line 94
    return-void
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .prologue
    .line 79
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "SpacePeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting sound volume to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The volume must be inside the range: [0,1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput p1, p0, Lde/fgerbig/spacepeng/services/SoundManager;->volume:F

    .line 86
    return-void
.end method
