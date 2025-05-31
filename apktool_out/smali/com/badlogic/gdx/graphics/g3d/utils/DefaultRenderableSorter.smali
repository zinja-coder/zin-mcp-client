.class public Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;
.super Ljava/lang/Object;
.source "DefaultRenderableSorter.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g3d/utils/RenderableSorter;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
        ">;"
    }
.end annotation


# instance fields
.field private camera:Lcom/badlogic/gdx/graphics/Camera;

.field private final tmpV1:Lcom/badlogic/gdx/math/Vector3;

.field private final tmpV2:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Renderable;)I
    .locals 12
    .param p1, "o1"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "o2"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    const/4 v7, -0x1

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Material;->has(J)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget-boolean v4, v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    if-eqz v4, :cond_0

    move v0, v5

    .line 42
    .local v0, "b1":Z
    :goto_0
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Material;->has(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v8, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iget-boolean v4, v4, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    if-eqz v4, :cond_1

    move v1, v5

    .line 43
    .local v1, "b2":Z
    :goto_1
    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 51
    :goto_2
    return v5

    .end local v0    # "b1":Z
    .end local v1    # "b2":Z
    :cond_0
    move v0, v6

    .line 41
    goto :goto_0

    .restart local v0    # "b1":Z
    :cond_1
    move v1, v6

    .line 42
    goto :goto_1

    .restart local v1    # "b2":Z
    :cond_2
    move v5, v7

    .line 43
    goto :goto_2

    .line 47
    :cond_3
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 48
    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 49
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v8, v8, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    mul-float/2addr v8, v11

    float-to-int v8, v8

    sub-int/2addr v4, v8

    int-to-float v2, v4

    .line 50
    .local v2, "dst":F
    cmpg-float v4, v2, v10

    if-gez v4, :cond_5

    move v3, v7

    .line 51
    .local v3, "result":I
    :goto_3
    if-eqz v0, :cond_4

    neg-int v3, v3

    .end local v3    # "result":I
    :cond_4
    move v5, v3

    goto :goto_2

    .line 50
    :cond_5
    cmpl-float v4, v2, v10

    if-lez v4, :cond_6

    move v3, v5

    goto :goto_3

    :cond_6
    move v3, v6

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->compare(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Renderable;)I

    move-result v0

    return v0
.end method

.method public sort(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/Camera;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultRenderableSorter;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 36
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 37
    return-void
.end method
