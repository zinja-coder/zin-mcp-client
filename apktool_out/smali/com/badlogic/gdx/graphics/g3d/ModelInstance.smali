.class public Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
.super Ljava/lang/Object;
.source "ModelInstance.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field public static defaultShareKeyframes:Z


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final model:Lcom/badlogic/gdx/graphics/g3d/Model;

.field private nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Lcom/badlogic/gdx/math/Matrix4;

.field public userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .prologue
    .line 63
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;FFF)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 196
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p4, "shareKeyframes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p3, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 223
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 175
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 176
    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    .end local p2    # "transform":Lcom/badlogic/gdx/math/Matrix4;
    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 177
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V

    .line 178
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 179
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "mergeTransform"    # Z

    .prologue
    const/4 v4, 0x0

    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "parentTransform"    # Z
    .param p5, "mergeTransform"    # Z

    .prologue
    .line 98
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V
    .locals 8
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "recursive"    # Z
    .param p5, "parentTransform"    # Z
    .param p6, "mergeTransform"    # Z

    .prologue
    .line 119
    sget-boolean v7, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "nodeId"    # Ljava/lang/String;
    .param p4, "recursive"    # Z
    .param p5, "parentTransform"    # Z
    .param p6, "mergeTransform"    # Z
    .param p7, "shareKeyframes"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 52
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 223
    new-instance v2, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 130
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 131
    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    .end local p2    # "transform":Lcom/badlogic/gdx/math/Matrix4;
    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 132
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 133
    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v1

    .line 134
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    .local v0, "copy":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 135
    if-eqz p6, :cond_3

    .line 136
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p5, :cond_2

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 137
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v4, v4, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 138
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    .line 139
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v5, v5, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 141
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    .line 142
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2, p7}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 143
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 144
    return-void

    .line 136
    :cond_2
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    .line 140
    :cond_3
    if-eqz p5, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_1
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V
    .locals 2
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "rootNodeIds"    # [Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 223
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 153
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 154
    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    .end local p2    # "transform":Lcom/badlogic/gdx/math/Matrix4;
    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 155
    if-nez p3, :cond_1

    .line 156
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    .line 159
    :goto_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    sget-boolean v1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 160
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 161
    return-void

    .line 158
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "position"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/Model;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "rootNodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/utils/Array;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "mergeTransform"    # Z

    .prologue
    const/4 v4, 0x0

    .line 70
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "parentTransform"    # Z
    .param p4, "mergeTransform"    # Z

    .prologue
    .line 87
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "nodeId"    # Ljava/lang/String;
    .param p3, "recursive"    # Z
    .param p4, "parentTransform"    # Z
    .param p5, "mergeTransform"    # Z

    .prologue
    .line 108
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;Ljava/lang/String;ZZZ)V

    .line 109
    return-void
.end method

.method public varargs constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Model;[Ljava/lang/String;)V
    .locals 1
    .param p1, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;
    .param p2, "rootNodeIds"    # [Ljava/lang/String;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/Model;Lcom/badlogic/gdx/math/Matrix4;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .prologue
    .line 201
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 206
    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->defaultShareKeyframes:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;Lcom/badlogic/gdx/math/Matrix4;Z)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p3, "shareKeyframes"    # Z

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 223
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 211
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->model:Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 212
    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/math/Matrix4;

    .end local p2    # "transform":Lcom/badlogic/gdx/math/Matrix4;
    invoke-direct {p2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    .line 213
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodes(Lcom/badlogic/gdx/utils/Array;)V

    .line 214
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyAnimations(Ljava/lang/Iterable;Z)V

    .line 215
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 216
    return-void
.end method

.method private copyAnimations(Ljava/lang/Iterable;Z)V
    .locals 14
    .param p2, "shareKeyframes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/Animation;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .line 317
    .local v0, "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    .line 318
    .local v1, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    iput-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    .line 319
    iget v10, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    iput v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 320
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 321
    .local v7, "nanim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v8

    .line 322
    .local v8, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-eqz v8, :cond_1

    .line 323
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    .line 324
    .local v9, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iput-object v8, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 325
    if-eqz p2, :cond_4

    .line 326
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 327
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 328
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 346
    :cond_2
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v10, :cond_3

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v10, :cond_3

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_1

    .line 347
    :cond_3
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 330
    :cond_4
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_5

    .line 331
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 332
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 333
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v12, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 335
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    :cond_5
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_6

    .line 336
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 337
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 338
    .local v5, "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v12, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 340
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    :cond_6
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_2

    .line 341
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 342
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 343
    .restart local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v12, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 349
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    .end local v7    # "nanim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .end local v8    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v9    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_7
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 351
    .end local v0    # "anim":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .end local v1    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_8
    return-void
.end method

.method private copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 6
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .prologue
    .line 278
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 279
    .local v1, "copy":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    iput-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 280
    iget-boolean v4, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    iput-boolean v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    .line 281
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 282
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 283
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 284
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 285
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 286
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 287
    .local v3, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNodePart(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 289
    .end local v3    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 290
    .local v0, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    goto :goto_1

    .line 292
    .end local v0    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_1
    return-object v1
.end method

.method private copyNodePart(Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    .locals 5
    .param p1, "nodePart"    # Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .prologue
    .line 296
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    .line 297
    .local v0, "copy":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 298
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 299
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iput v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    .line 300
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iput v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    .line 301
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iput v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 302
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 304
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    .line 307
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->copy()Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v3

    iput-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 312
    :goto_0
    return-object v0

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    goto :goto_0
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 228
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 229
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    .line 232
    return-void
.end method

.method private copyNodes(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    .local p2, "nodeIds":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 251
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 252
    .local v3, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 253
    .local v4, "nodeId":Ljava/lang/String;
    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 250
    .end local v4    # "nodeId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    .line 260
    return-void
.end method

.method private varargs copyNodes(Lcom/badlogic/gdx/utils/Array;[Ljava/lang/String;)V
    .locals 9
    .param p2, "nodeIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 236
    const/4 v1, 0x0

    .local v1, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 237
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 238
    .local v5, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 239
    .local v6, "nodeId":Ljava/lang/String;
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->copyNode(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 236
    .end local v6    # "nodeId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .restart local v6    # "nodeId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v6    # "nodeId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->setBones()V

    .line 246
    return-void
.end method

.method private setBones()V
    .locals 11

    .prologue
    .line 263
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 264
    .local v1, "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v5, :cond_1

    .line 265
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    new-instance v7, Lcom/badlogic/gdx/utils/ArrayMap;

    const/4 v8, 0x1

    iget-object v6, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v6, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v6, v6, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    const-class v9, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v10, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    iput-object v7, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 266
    :cond_1
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 268
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 269
    .local v0, "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;"
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v5

    iget-object v7, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    .line 271
    .end local v0    # "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;"
    :cond_2
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v6, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v6, Lcom/badlogic/gdx/utils/ArrayMap;

    iget v6, v6, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    new-array v6, v6, [Lcom/badlogic/gdx/math/Matrix4;

    iput-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    .line 272
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 273
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    aput-object v6, v5, v2

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 275
    .end local v1    # "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    .end local v2    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 419
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 420
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateTransforms()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 406
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 407
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    :cond_1
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/ModelInstance;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 428
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 429
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 430
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 444
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 446
    .local v2, "n":I
    if-eqz p2, :cond_2

    .line 447
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 448
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .local v0, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    .end local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_0
    :goto_1
    return-object v0

    .line 447
    .restart local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 451
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .restart local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 453
    .end local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 466
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 468
    .local v2, "n":I
    if-eqz p2, :cond_2

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 470
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    .local v1, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    .end local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_0
    :goto_1
    return-object v1

    .line 469
    .restart local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "i":I
    .end local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 473
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    .restart local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 475
    .end local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .prologue
    .line 371
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v0

    return-object v0
.end method

.method public getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .locals 2
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;
    .param p2, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .param p3, "nodePart"    # Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .prologue
    .line 375
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->setRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 376
    iget-object v0, p3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->userData:Ljava/lang/Object;

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->userData:Ljava/lang/Object;

    .line 383
    return-object p1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->worldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0
.end method

.method protected getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 4
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p3, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v3, :cond_1

    .line 388
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 389
    .local v2, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p0, v3, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderable(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/model/NodePart;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getChildren()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 394
    .local v0, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_1

    .line 396
    .end local v0    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_2
    return-void
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "renderables":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/Renderable;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 360
    .local v1, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    invoke-virtual {p0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getRenderables(Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_0

    .line 362
    .end local v1    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_0
    return-void
.end method
