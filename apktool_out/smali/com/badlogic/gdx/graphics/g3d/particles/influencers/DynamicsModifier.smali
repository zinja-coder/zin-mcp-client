.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;
.super Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;
.source "DynamicsModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$BrownianAcceleration;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$TangentialAcceleration;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$PolarAcceleration;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$CentripetalAcceleration;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational3D;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Rotational2D;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Angular;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$Strength;,
        Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier$FaceDirection;
    }
.end annotation


# static fields
.field protected static final TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V2:Lcom/badlogic/gdx/math/Vector3;

.field protected static final TMP_V3:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public isGlobal:Z

.field protected lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    .line 20
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->TMP_V2:Lcom/badlogic/gdx/math/Vector3;

    .line 21
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->TMP_V3:Lcom/badlogic/gdx/math/Vector3;

    .line 22
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->TMP_Q:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    .line 479
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;)V
    .locals 1
    .param p1, "modifier"    # Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;-><init>()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    .line 482
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    .line 483
    return-void
.end method


# virtual methods
.method public allocateChannels()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->lifeChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .line 488
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 498
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 499
    const-string v0, "isGlobal"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    .line 500
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/Influencer;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 493
    const-string v0, "isGlobal"

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/DynamicsModifier;->isGlobal:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    return-void
.end method
