.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.source "ParticleSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "None"
.end annotation


# instance fields
.field currentCapacity:I

.field indices:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->currentCapacity:I

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 21
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->currentCapacity:I

    if-ge v1, p1, :cond_1

    .line 22
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->indices:[I

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->indices:[I

    aput v0, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->currentCapacity:I

    .line 27
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;)[I"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "renderData":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;->indices:[I

    return-object v0
.end method
