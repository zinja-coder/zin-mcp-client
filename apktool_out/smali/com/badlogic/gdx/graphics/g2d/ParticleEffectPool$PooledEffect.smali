.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
.source "ParticleEffectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PooledEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V
    .locals 0
    .param p2, "effect"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    .line 42
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    .line 43
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->this$0:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->free(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset()V

    .line 48
    return-void
.end method
