.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;
.source "ParticleControllerInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Single"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;)V
    .locals 0
    .param p1, "particleControllerSingle"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;)V

    .line 34
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V
    .locals 0
    .param p1, "templates"    # [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 26
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 48
    move v1, p1

    .local v1, "i":I
    add-int v0, p1, p2

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;)V

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 38
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;->templates:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    .line 39
    .local v2, "first":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    .local v0, "c":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 40
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    move-result-object v1

    .line 41
    .local v1, "copy":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->init()V

    .line 42
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aput-object v1, v4, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "copy":Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    :cond_0
    return-void
.end method

.method public killParticles(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 55
    move v1, p1

    .local v1, "i":I
    add-int v0, p1, p2

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ParticleControllerInfluencer$Single;->particleControllerChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
