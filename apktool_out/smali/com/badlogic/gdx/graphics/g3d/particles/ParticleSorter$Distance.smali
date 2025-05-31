.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.source "ParticleSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Distance"
.end annotation


# instance fields
.field private currentSize:I

.field private distances:[F

.field private particleIndices:[I

.field private particleOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->currentSize:I

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 43
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->currentSize:I

    if-ge v0, p1, :cond_0

    .line 44
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    .line 46
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleOffsets:[I

    .line 47
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->currentSize:I

    .line 49
    :cond_0
    return-void
.end method

.method public qsort(II)V
    .locals 9
    .param p1, "si"    # I
    .param p2, "ei"    # I

    .prologue
    .line 74
    if-ge p1, p2, :cond_5

    .line 78
    sub-int v6, p2, p1

    const/16 v7, 0x8

    if-gt v6, v7, :cond_1

    .line 79
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_5

    .line 80
    move v1, v0

    .local v1, "j":I
    :goto_1
    if-le v1, p1, :cond_0

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v7, v7, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v4, v6, v1

    .line 82
    .local v4, "tmp":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    aput v7, v6, v1

    .line 83
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v7, v1, -0x1

    aput v4, v6, v7

    .line 86
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v5, v6, v1

    .line 87
    .local v5, "tmpIndex":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    aput v7, v6, v1

    .line 88
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    add-int/lit8 v7, v1, -0x1

    aput v5, v6, v7

    .line 80
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 79
    .end local v4    # "tmp":F
    .end local v5    # "tmpIndex":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v3, v6, p1

    .line 95
    .local v3, "pivot":F
    add-int/lit8 v0, p1, 0x1

    .line 96
    .restart local v0    # "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v2, v6, p1

    .line 99
    .local v2, "particlesPivotIndex":I
    add-int/lit8 v1, p1, 0x1

    .restart local v1    # "j":I
    :goto_2
    if-gt v1, p2, :cond_4

    .line 100
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v6, v6, v1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    .line 101
    if-le v1, v0, :cond_2

    .line 103
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v4, v6, v1

    .line 104
    .restart local v4    # "tmp":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aget v7, v7, v0

    aput v7, v6, v1

    .line 105
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    aput v4, v6, v0

    .line 108
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v5, v6, v1

    .line 109
    .restart local v5    # "tmpIndex":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v7, v7, v0

    aput v7, v6, v1

    .line 110
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aput v5, v6, v0

    .line 112
    .end local v4    # "tmp":F
    .end local v5    # "tmpIndex":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 99
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    :cond_4
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v8, v0, -0x1

    aget v7, v7, v8

    aput v7, v6, p1

    .line 118
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    add-int/lit8 v7, v0, -0x1

    aput v3, v6, v7

    .line 119
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    add-int/lit8 v8, v0, -0x1

    aget v7, v7, v8

    aput v7, v6, p1

    .line 120
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    add-int/lit8 v7, v0, -0x1

    aput v2, v6, v7

    .line 123
    add-int/lit8 v6, v0, -0x2

    invoke-virtual {p0, p1, v6}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->qsort(II)V

    .line 124
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->qsort(II)V

    .line 126
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "particlesPivotIndex":I
    .end local v3    # "pivot":F
    :cond_5
    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)[I
    .locals 14
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
    .line 53
    .local p1, "renderData":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/Camera;->view:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v9, v10, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 54
    .local v9, "val":[F
    const/4 v10, 0x2

    aget v2, v9, v10

    .local v2, "cx":F
    const/4 v10, 0x6

    aget v3, v9, v10

    .local v3, "cy":F
    const/16 v10, 0xa

    aget v4, v9, v10

    .line 55
    .local v4, "cz":F
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v6, 0x0

    .line 56
    .local v6, "i":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    .line 57
    .local v5, "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
    const/4 v8, 0x0

    .local v8, "k":I
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int v0, v6, v10

    .local v0, "c":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 58
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->distances:[F

    iget-object v11, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v12, v8, 0x0

    aget v11, v11, v12

    mul-float/2addr v11, v2

    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v8, 0x1

    aget v12, v12, v13

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v8, 0x2

    aget v12, v12, v13

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v10, v6

    .line 59
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aput v6, v10, v6

    .line 57
    add-int/lit8 v6, v6, 0x1

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v8, v10

    goto :goto_1

    .line 61
    :cond_0
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/2addr v1, v10

    .line 62
    goto :goto_0

    .line 64
    .end local v0    # "c":I
    .end local v5    # "data":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
    .end local v8    # "k":I
    :cond_1
    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->qsort(II)V

    .line 66
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_2

    .line 67
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleOffsets:[I

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleIndices:[I

    aget v11, v11, v6

    aput v6, v10, v11

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 69
    :cond_2
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;->particleOffsets:[I

    return-object v10
.end method
