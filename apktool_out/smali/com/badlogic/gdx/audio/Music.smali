.class public interface abstract Lcom/badlogic/gdx/audio/Music;
.super Ljava/lang/Object;
.source "Music.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/audio/Music$OnCompletionListener;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getPosition()F
.end method

.method public abstract getVolume()F
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
.end method

.method public abstract setPan(FF)V
.end method

.method public abstract setPosition(F)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method
