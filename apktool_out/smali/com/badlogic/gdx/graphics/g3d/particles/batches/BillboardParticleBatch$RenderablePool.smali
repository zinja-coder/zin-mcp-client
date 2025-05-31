.class Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "BillboardParticleBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderablePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch;->allocRenderable()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BillboardParticleBatch$RenderablePool;->newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method
