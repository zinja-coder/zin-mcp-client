.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "ParticleControllerFinalizerInfluencer.java"


# instance fields
.field controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;",
            ">;"
        }
    .end annotation
.end field

.field hasRotation:Z

.field hasScale:Z

.field positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 34
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;-><init>()V

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "ParticleController channel not found, specify an influencer which will allocate it please."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasScale:Z

    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasRotation:Z

    .line 29
    return-void

    :cond_1
    move v0, v2

    .line 27
    goto :goto_0

    :cond_2
    move v1, v2

    .line 28
    goto :goto_1
.end method

.method public update()V
    .locals 14

    .prologue
    .line 38
    const/4 v10, 0x0

    .local v10, "i":I
    const/4 v11, 0x0

    .local v11, "positionOffset":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v9, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 39
    .local v9, "c":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 41
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->controllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v0, v1, v10

    .line 42
    .local v0, "particleController":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasScale:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v8, v1, v10

    .line 43
    .local v8, "scale":F
    :goto_1
    const/4 v4, 0x0

    .local v4, "qx":F
    const/4 v5, 0x0

    .local v5, "qy":F
    const/4 v6, 0x0

    .local v6, "qz":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 44
    .local v7, "qw":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->hasRotation:Z

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int v12, v10, v1

    .line 46
    .local v12, "rotationOffset":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v2, v12, 0x0

    aget v4, v1, v2

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v2, v12, 0x1

    aget v5, v1, v2

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v2, v12, 0x2

    aget v6, v1, v2

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v2, v12, 0x3

    aget v7, v1, v2

    .line 51
    .end local v12    # "rotationOffset":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v2, v11, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v3, v11, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v11, 0x2

    aget v3, v3, v13

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTransform(FFFFFFFF)V

    .line 55
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->update()V

    .line 40
    add-int/lit8 v10, v10, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerFinalizerInfluencer;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v11, v1

    goto :goto_0

    .line 42
    .end local v4    # "qx":F
    .end local v5    # "qy":F
    .end local v6    # "qz":F
    .end local v7    # "qw":F
    .end local v8    # "scale":F
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    .line 57
    .end local v0    # "particleController":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_2
    return-void
.end method
