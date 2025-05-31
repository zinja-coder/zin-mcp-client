.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "ParticleEffectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V
    .locals 0
    .param p1, "effect"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .param p2, "initialCapacity"    # I
    .param p3, "max"    # I

    .prologue
    .line 26
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    .line 27
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    .line 28
    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;)V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->newObject()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    return-object v0
.end method

.method public obtain()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    .line 36
    .local v0, "effect":Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;->reset()V

    .line 37
    return-object v0
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;->obtain()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    return-object v0
.end method
