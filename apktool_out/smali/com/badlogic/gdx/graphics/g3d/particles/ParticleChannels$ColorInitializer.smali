.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;
.super Ljava/lang/Object;
.source "ParticleChannels.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorInitializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;

    .line 46
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    .prologue
    .line 41
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .end local p1    # "x0":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleChannels$ColorInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V

    return-void
.end method

.method public init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;)V
    .locals 4
    .param p1, "channel"    # Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    .prologue
    .line 50
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 51
    return-void
.end method
