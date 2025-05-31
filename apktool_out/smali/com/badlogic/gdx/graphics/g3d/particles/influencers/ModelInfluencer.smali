.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "ModelInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Random;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer$Single;
    }
.end annotation


# instance fields
.field modelChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/ModelInstance;",
            ">;"
        }
    .end annotation
.end field

.field public models:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 104
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->models:Lcom/badlogic/gdx/utils/Array;

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;)V
    .locals 2
    .param p1, "influencer"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;

    .prologue
    .line 112
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->models:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/Model;

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;-><init>([Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 113
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 1
    .param p1, "models"    # [Lcom/badlogic/gdx/graphics/g3d/Model;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 108
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->models:Lcom/badlogic/gdx/utils/Array;

    .line 109
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ModelInstance:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->modelChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    .line 118
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 129
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 131
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object v1

    .local v1, "descriptor":Lcom/badlogic/gdx/assets/AssetDescriptor;
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 133
    .local v2, "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    if-nez v2, :cond_0

    .line 134
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Model is null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->models:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    .end local v2    # "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    :cond_1
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "resources"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 122
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData()Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object v0

    .line 123
    .local v0, "data":Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ModelInfluencer;->models:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 124
    .local v2, "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/badlogic/gdx/graphics/g3d/Model;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 125
    .end local v2    # "model":Lcom/badlogic/gdx/graphics/g3d/Model;
    :cond_0
    return-void
.end method
