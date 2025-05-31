.class public interface abstract Lcom/badlogic/gdx/audio/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getLatency()I
.end method

.method public abstract isMono()Z
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract writeSamples([FII)V
.end method

.method public abstract writeSamples([SII)V
.end method
