.class public Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
.source "ModelInstanceRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;",
        ">;"
    }
.end annotation


# instance fields
.field private hasColor:Z

.field private hasRotation:Z

.field private hasScale:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->setBatch(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 29
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 2

    .prologue
    .line 79
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->batch:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;)V

    return-object v1
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ModelInstance:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 35
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->hasColor:Z

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->hasScale:Z

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->hasRotation:Z

    .line 40
    return-void

    :cond_0
    move v0, v3

    .line 37
    goto :goto_0

    :cond_1
    move v0, v3

    .line 38
    goto :goto_1

    :cond_2
    move v2, v3

    .line 39
    goto :goto_2
.end method

.method public isCompatible(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ModelInstanceParticleBatch;

    return v0
.end method

.method public update()V
    .locals 21

    .prologue
    .line 44
    const/16 v17, 0x0

    .local v17, "i":I
    const/16 v19, 0x0

    .local v19, "positionOffset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v14, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 45
    .local v14, "c":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v14, :cond_3

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    aget-object v18, v2, v17

    .line 48
    .local v18, "instance":Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->hasScale:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v10, v2, v17

    .line 49
    .local v10, "scale":F
    :goto_1
    const/4 v6, 0x0

    .local v6, "qx":F
    const/4 v7, 0x0

    .local v7, "qy":F
    const/4 v8, 0x0

    .local v8, "qz":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 50
    .local v9, "qw":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->hasRotation:Z

    if-eqz v2, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v20, v17, v2

    .line 52
    .local v20, "rotationOffset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v20, 0x0

    aget v6, v2, v3

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v20, 0x1

    aget v7, v2, v3

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v20, 0x2

    aget v8, v2, v3

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v20, 0x3

    aget v9, v2, v3

    .line 58
    .end local v20    # "rotationOffset":I
    :cond_0
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v19, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v19, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v11, v19, 0x2

    aget v5, v5, v11

    move v11, v10

    move v12, v10

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 63
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->hasColor:Z

    if-eqz v2, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v16, v17, v2

    .line 65
    .local v16, "colorOffset":I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    .line 66
    .local v15, "colorAttribute":Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .line 67
    .local v13, "blendingAttribute":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    iget-object v3, v15, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v16, 0x0

    aget v2, v2, v4

    iput v2, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 68
    iget-object v3, v15, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v16, 0x1

    aget v2, v2, v4

    iput v2, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 69
    iget-object v3, v15, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v4, v16, 0x2

    aget v2, v2, v4

    iput v2, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 70
    if-eqz v13, :cond_1

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v16, 0x3

    aget v2, v2, v3

    iput v2, v13, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    .line 46
    .end local v13    # "blendingAttribute":Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .end local v15    # "colorAttribute":Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .end local v16    # "colorOffset":I
    :cond_1
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int v19, v19, v2

    goto/16 :goto_0

    .line 48
    .end local v6    # "qx":F
    .end local v7    # "qy":F
    .end local v8    # "qz":F
    .end local v9    # "qw":F
    .end local v10    # "scale":F
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 74
    .end local v18    # "instance":Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->update()V

    .line 75
    return-void
.end method
