.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.super Ljava/lang/Object;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleValue"
.end annotation


# instance fields
.field active:Z

.field alwaysActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlwaysActive()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;

    .prologue
    .line 1051
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    .line 1052
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    .line 1053
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    if-nez v0, :cond_0

    .line 1045
    const-string v0, "active"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    .line 1048
    :goto_0
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    goto :goto_0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    if-nez v0, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1041
    :goto_0
    return-void

    .line 1040
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 1033
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    .line 1034
    return-void
.end method

.method public setAlwaysActive(Z)V
    .locals 0
    .param p1, "alwaysActive"    # Z

    .prologue
    .line 1021
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    .line 1022
    return-void
.end method
