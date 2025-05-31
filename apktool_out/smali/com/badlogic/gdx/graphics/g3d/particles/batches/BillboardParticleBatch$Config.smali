.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;
.super Ljava/lang/Object;
.source "BillboardParticleBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field useGPU:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;)V
    .locals 0
    .param p1, "useGPU"    # Z
    .param p2, "mode"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->useGPU:Z

    .line 98
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$Config;->mode:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    .line 99
    return-void
.end method
