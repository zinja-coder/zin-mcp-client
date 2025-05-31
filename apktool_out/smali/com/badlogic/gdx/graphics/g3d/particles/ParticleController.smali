.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
.super Ljava/lang/Object;
.source "ParticleController.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;


# static fields
.field protected static final DEFAULT_TIME_STEP:F = 0.016666668f


# instance fields
.field protected boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public deltaTime:F

.field public deltaTimeSqr:F

.field public emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

.field public influencers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

.field public particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

.field public renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer",
            "<**>;"
        }
    .end annotation
.end field

.field public scale:Lcom/badlogic/gdx/math/Vector3;

.field public transform:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    .line 58
    const v0, 0x3c888889

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->setTimeStep(F)V

    .line 59
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "emitter"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
    .param p4, "influencers"    # [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer",
            "<**>;[",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "renderer":Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;, "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer<**>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 65
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    .line 68
    return-void
.end method

.method private findIndex(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 258
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    .end local v0    # "i":I
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :goto_1
    return v0

    .line 256
    .restart local v0    # "i":I
    .restart local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setTimeStep(F)V
    .locals 2
    .param p1, "timeStep"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    .line 73
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTime:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->deltaTimeSqr:F

    .line 74
    return-void
.end method


# virtual methods
.method public activateParticles(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 191
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->activateParticles(II)V

    .line 192
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 193
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->activateParticles(II)V

    goto :goto_0

    .line 194
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    return-void
.end method

.method protected allocateChannels(I)V
    .locals 3
    .param p1, "maxParticleCount"    # I

    .prologue
    .line 150
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;-><init>(I)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 152
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->allocateChannels()V

    .line 153
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 154
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->allocateChannels()V

    goto :goto_0

    .line 155
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->allocateChannels()V

    .line 156
    return-void
.end method

.method protected bind()V
    .locals 3

    .prologue
    .line 161
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 162
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 163
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    goto :goto_0

    .line 164
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->set(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;)V

    .line 165
    return-void
.end method

.method protected calculateBoundingBox()V
    .locals 8

    .prologue
    .line 245
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 246
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 247
    .local v2, "positionChannel":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
    const/4 v1, 0x0

    .local v1, "pos":I
    iget v3, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int v0, v3, v4

    .local v0, "c":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 248
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v5, v1, 0x0

    aget v4, v4, v5

    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v7, v1, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 247
    iget v3, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;
    .locals 9

    .prologue
    .line 221
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 222
    .local v0, "emitter":Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v5, v6, [Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 223
    .local v5, "influencers":[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    const/4 v1, 0x0

    .line 224
    .local v1, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 225
    .local v4, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    aput-object v6, v5, v1

    move v1, v2

    .line 226
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 227
    .end local v4    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    new-instance v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    new-instance v8, Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->copy()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-direct {v7, v8, v0, v6, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;[Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)V

    return-object v7
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 231
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->dispose()V

    .line 232
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 233
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->dispose()V

    goto :goto_0

    .line 234
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->update()V

    .line 217
    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 183
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->end()V

    goto :goto_0

    .line 184
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->end()V

    .line 185
    return-void
.end method

.method public findInfluencer(Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)TK;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "influencerClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->findIndex(Ljava/lang/Class;)I

    move-result v0

    .line 268
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->calculateBoundingBox()V

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->boundingBox:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-object v0
.end method

.method public getTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 130
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->bind()V

    .line 137
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 139
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particleChannels:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->resetIds()V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->allocateChannels(I)V

    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->init()V

    .line 144
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 145
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->init()V

    goto :goto_0

    .line 146
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->init()V

    .line 147
    return-void
.end method

.method public killParticles(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "count"    # I

    .prologue
    .line 200
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->killParticles(II)V

    .line 201
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 202
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->killParticles(II)V

    goto :goto_0

    .line 203
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 315
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 316
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 317
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    .line 318
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 319
    return-void
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 125
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonMap"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 299
    const-string v0, "name"

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    .line 300
    const-string v0, "emitter"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .line 301
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const-string v0, "influencers"

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {p1, v0, v2, v3, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 302
    const-string v0, "renderer"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    .line 303
    return-void
.end method

.method public removeInfluencer(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->findIndex(Ljava/lang/Class;)I

    move-result v0

    .line 274
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 276
    :cond_0
    return-void
.end method

.method public replaceInfluencer(Ljava/lang/Class;Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;TK;)Z"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "newInfluencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;, "TK;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->findIndex(Ljava/lang/Class;)I

    move-result v0

    .line 281
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 284
    const/4 v1, 0x1

    .line 286
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->end()V

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->start()V

    .line 178
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1
    .param p1, "rotation"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    .line 92
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 99
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 309
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    goto :goto_0

    .line 310
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;->save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V

    .line 311
    return-void
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 114
    return-void
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 118
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale(FFF)V

    .line 119
    return-void
.end method

.method public setTransform(FFFFFFFF)V
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "qx"    # F
    .param p5, "qy"    # F
    .param p6, "qz"    # F
    .param p7, "qw"    # F
    .param p8, "scale"    # F

    .prologue
    .line 85
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p8

    move/from16 v13, p8

    invoke-virtual/range {v3 .. v13}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 86
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    move/from16 v0, p8

    move/from16 v1, p8

    move/from16 v2, p8

    invoke-virtual {v3, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 81
    return-void
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 108
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->start()V

    .line 170
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 171
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->start()V

    goto :goto_0

    .line 172
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 104
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 207
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->update()V

    .line 208
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    .line 209
    .local v1, "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->update()V

    goto :goto_0

    .line 210
    .end local v1    # "influencer":Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
    :cond_0
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 291
    const-string v0, "name"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string v0, "emitter"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->emitter:Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 293
    const-string v0, "influencers"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->influencers:Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 294
    const-string v0, "renderer"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->renderer:Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 295
    return-void
.end method
