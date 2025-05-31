.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;
.super Ljava/lang/Object;
.source "ParticleChannels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation3dInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$Rotation2dInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ScaleInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$TextureRegionInitializer;
    }
.end annotation


# static fields
.field public static final Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final AlphaOffset:I = 0x3

.field public static final AngularVelocity2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final AngularVelocity3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final BlueOffset:I = 0x2

.field public static final Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final CosineOffset:I = 0x0

.field public static final CurrentLifeOffset:I = 0x0

.field public static final GreenOffset:I = 0x1

.field public static final HalfHeightOffset:I = 0x5

.field public static final HalfWidthOffset:I = 0x4

.field public static final Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final Interpolation4:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final Interpolation6:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final InterpolationDiffOffset:I = 0x1

.field public static final InterpolationStartOffset:I = 0x0

.field public static final Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final LifePercentOffset:I = 0x2

.field public static final ModelInstance:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final PreviousPosition:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final RedOffset:I = 0x0

.field public static final Rotation2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final SineOffset:I = 0x1

.field public static final TextureRegion:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

.field public static final TotalLifeOffset:I = 0x1

.field public static final U2Offset:I = 0x2

.field public static final UOffset:I = 0x0

.field public static final V2Offset:I = 0x3

.field public static final VOffset:I = 0x1

.field public static final VelocityPhiDiffOffset:I = 0x3

.field public static final VelocityPhiStartOffset:I = 0x2

.field public static final VelocityStrengthDiffOffset:I = 0x1

.field public static final VelocityStrengthStartOffset:I = 0x0

.field public static final VelocityThetaDiffOffset:I = 0x1

.field public static final VelocityThetaStartOffset:I = 0x0

.field public static final WOffset:I = 0x3

.field public static final XOffset:I = 0x0

.field public static final YOffset:I = 0x1

.field public static final ZOffset:I = 0x2

.field private static currentGlobalId:I


# instance fields
.field private currentId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 103
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Life:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Position:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 105
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->PreviousPosition:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 106
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Color:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 107
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->TextureRegion:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 108
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v8}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 109
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Rotation3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Scale:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ModelInstance:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 112
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    const-class v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->ParticleController:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 113
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Acceleration:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity2D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 115
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->newGlobalId()I

    move-result v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->AngularVelocity3D:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 116
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v6, v1, v8}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 117
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v6, v1, v7}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation4:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    .line 118
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-direct {v0, v6, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;-><init>(ILjava/lang/Class;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->Interpolation6:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->resetIds()V

    .line 137
    return-void
.end method

.method public static newGlobalId()I
    .locals 2

    .prologue
    .line 16
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->currentGlobalId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->currentGlobalId:I

    return v0
.end method


# virtual methods
.method public newId()I
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->currentId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->currentId:I

    return v0
.end method

.method protected resetIds()V
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->currentGlobalId:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;->currentId:I

    .line 145
    return-void
.end method
