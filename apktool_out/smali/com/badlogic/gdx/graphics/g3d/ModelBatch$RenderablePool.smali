.class public Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;
.super Lcom/badlogic/gdx/utils/Pool;
.source "ModelBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/ModelBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
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
.field protected obtained:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 66
    return-void
.end method

.method protected newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->newObject()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public obtain()Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 55
    .local v0, "renderable":Lcom/badlogic/gdx/graphics/g3d/Renderable;
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 56
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 57
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 58
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 59
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->obtained:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 60
    return-object v0
.end method

.method public bridge synthetic obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelBatch$RenderablePool;->obtain()Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method
