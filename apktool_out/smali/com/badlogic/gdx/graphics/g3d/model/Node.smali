.class public Lcom/badlogic/gdx/graphics/g3d/model/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field public final children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final globalTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public id:Ljava/lang/String;

.field public inheritTransform:Z

.field public isAnimated:Z

.field public final localTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public parts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/badlogic/gdx/math/Quaternion;

.field public final scale:Lcom/badlogic/gdx/math/Vector3;

.field public final translation:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/Node;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 263
    .local v1, "n":I
    if-eqz p3, :cond_2

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 265
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_0
    :goto_1
    return-object v2

    .line 264
    .restart local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 268
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .restart local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 270
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_3
    if-eqz p2, :cond_4

    .line 271
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 272
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v2

    .restart local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-nez v2, :cond_0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 274
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)I"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move-result v0

    return v0
.end method

.method public addChildren(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChildren(ILjava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public attachTo(Lcom/badlogic/gdx/graphics/g3d/model/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "parent":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    .line 146
    return-void
.end method

.method public calculateBoneTransforms(Z)V
    .locals 7
    .param p1, "recursive"    # Z

    .prologue
    .line 90
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 91
    .local v4, "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 93
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v3, v5, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 94
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 95
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v6, v5, v1

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/graphics/g3d/model/Node;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/math/Matrix4;

    aget-object v5, v5, v1

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_1
    if-eqz p1, :cond_2

    .line 98
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 99
    .local v0, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    goto :goto_1

    .line 102
    .end local v0    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_2
    return-void
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 107
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "transform"    # Z

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public calculateTransforms(Z)V
    .locals 3
    .param p1, "recursive"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateLocalTransform()Lcom/badlogic/gdx/math/Matrix4;

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 84
    .local v0, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    goto :goto_0

    .line 87
    .end local v0    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public calculateWorldTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->inheritTransform:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 154
    :cond_0
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;Z)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 9
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "transform"    # Z

    .prologue
    .line 125
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    iget v4, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 126
    .local v4, "partCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 127
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    .line 128
    .local v3, "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iget-boolean v5, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->enabled:Z

    if-eqz v5, :cond_0

    .line 129
    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 130
    .local v2, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    if-eqz p2, :cond_1

    .line 131
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->globalTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;IILcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 126
    .end local v2    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .restart local v2    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_1
    iget-object v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget v6, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    iget v7, v2, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    invoke-virtual {v5, p1, v6, v7}, Lcom/badlogic/gdx/graphics/Mesh;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;II)Lcom/badlogic/gdx/math/collision/BoundingBox;

    goto :goto_1

    .line 136
    .end local v2    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v3    # "part":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 137
    .local v0, "childCount":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 138
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :cond_3
    return-object p1
.end method

.method public getChild(I)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParent()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(ITT;)I"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    move-object v0, p0

    .local v0, "p":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 203
    if-ne v0, p2, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Cannot add a parent as a child"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getParent()Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Could not remove child from its current parent"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_2
    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v1, :cond_4

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 209
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 212
    :goto_1
    iput-object p0, p2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 213
    return p1

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public insertChildren(ILjava/lang/Iterable;)I
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(I",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le p1, v4, :cond_1

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget p1, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 225
    :cond_1
    move v1, p1

    .line 226
    .local v1, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 227
    .local v0, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->insertChild(ILcom/badlogic/gdx/graphics/g3d/model/Node;)I

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 228
    .end local v0    # "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    :cond_2
    return p1
.end method

.method public removeChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "child":Lcom/badlogic/gdx/graphics/g3d/model/Node;, "TT;"
    const/4 v0, 0x1

    .line 237
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    .line 238
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parent:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    goto :goto_0
.end method
