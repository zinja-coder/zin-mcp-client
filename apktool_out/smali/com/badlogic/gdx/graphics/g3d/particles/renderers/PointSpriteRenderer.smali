.class public Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
.source "PointSpriteRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->setBatch(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->TextureRegion:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ScaleInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ScaleInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 32
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 2

    .prologue
    .line 41
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;->batch:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;)V

    return-object v1
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
    .line 36
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;

    return v0
.end method
