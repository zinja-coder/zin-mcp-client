.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "ColorInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Single;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer$Random;
    }
.end annotation


# instance fields
.field colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/ColorInfluencer;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 130
    return-void
.end method
