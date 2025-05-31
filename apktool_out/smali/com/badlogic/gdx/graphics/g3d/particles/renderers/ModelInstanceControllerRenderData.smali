.class public Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ModelInstanceControllerRenderData;
.super Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;
.source "ModelInstanceControllerRenderData.java"


# instance fields
.field public colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public modelInstanceChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/ModelInstance;",
            ">;"
        }
    .end annotation
.end field

.field public rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

.field public scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;-><init>()V

    return-void
.end method
