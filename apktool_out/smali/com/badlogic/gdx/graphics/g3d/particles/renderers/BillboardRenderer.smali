.class public Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
.source "BillboardRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->setBatch(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->TextureRegion:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ScaleInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ScaleInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->renderData:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;->get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 32
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 2

    .prologue
    .line 36
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;->batch:Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/BillboardRenderer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;)V

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
    .line 41
    .local p1, "batch":Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;, "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<*>;"
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;

    return v0
.end method
