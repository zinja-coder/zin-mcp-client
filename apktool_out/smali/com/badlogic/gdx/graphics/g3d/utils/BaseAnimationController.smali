.class public Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.super Ljava/lang/Object;
.source "BaseAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    }
.end annotation


# static fields
.field private static final tmpT:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

.field private static final transforms:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applying:Z

.field public final target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

.field private final transformPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 159
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->tmpT:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transformPool:Lcom/badlogic/gdx/utils/Pool;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    .line 106
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    .line 107
    return-void
.end method

.method protected static applyAnimation(Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FLcom/badlogic/gdx/graphics/g3d/model/Animation;F)V
    .locals 8
    .param p2, "alpha"    # F
    .param p3, "animation"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p4, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;F",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "out":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    .local p1, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    if-nez p0, :cond_0

    .line 260
    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 261
    .local v3, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    invoke-static {v3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyNodeAnimationDirectly(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)V

    goto :goto_0

    .line 263
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 264
    .local v2, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    goto :goto_1

    .line 265
    .end local v2    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    :cond_1
    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 266
    .restart local v3    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    invoke-static {v3, p0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyNodeAnimationBlending(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FF)V

    goto :goto_2

    .line 267
    .end local v3    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 268
    .local v0, "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    iget-object v4, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-boolean v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    if-nez v4, :cond_3

    .line 269
    iget-object v4, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 270
    iget-object v4, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6, v7, v5, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    goto :goto_3

    .line 274
    .end local v0    # "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    :cond_4
    return-void
.end method

.method private static final applyNodeAnimationBlending(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FF)V
    .locals 7
    .param p0, "nodeAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .param p3, "alpha"    # F
    .param p4, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .local p1, "out":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    .local p2, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    const v4, 0x3f7fffef    # 0.999999f

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 238
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 239
    invoke-static {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getNodeAnimationTransform(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v2

    .line 241
    .local v2, "transform":Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    .line 242
    .local v1, "t":Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    if-eqz v1, :cond_1

    .line 243
    cmpl-float v3, p3, v4

    if-lez v3, :cond_0

    .line 244
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {v1, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    goto :goto_0

    .line 248
    :cond_1
    cmpl-float v3, p3, v4

    if-lez v3, :cond_2

    .line 249
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static final applyNodeAnimationDirectly(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)V
    .locals 3
    .param p0, "nodeAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .param p1, "time"    # F

    .prologue
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 229
    .local v0, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    .line 230
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getNodeAnimationTransform(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v1

    .line 231
    .local v1, "transform":Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->toMatrix4(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 232
    return-void
.end method

.method private static final getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I
    .locals 3
    .param p1, "time"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe",
            "<TT;>;>;F)I"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "arr":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<TT;>;>;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v2, -0x1

    .line 163
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 168
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 163
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final getNodeAnimationTransform(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 2
    .param p0, "nodeAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .param p1, "time"    # F

    .prologue
    .line 220
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->tmpT:Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    .line 221
    .local v0, "transform":Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getTranslationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 222
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getRotationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 223
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getScalingAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 224
    return-object v0
.end method

.method private static final getRotationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p0, "nodeAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .param p1, "time"    # F
    .param p2, "out"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 188
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p2

    .line 200
    .end local p2    # "out":Lcom/badlogic/gdx/math/Quaternion;
    :cond_0
    :goto_0
    return-object p2

    .line 189
    .restart local p2    # "out":Lcom/badlogic/gdx/math/Quaternion;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p2

    goto :goto_0

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I

    move-result v1

    .line 192
    .local v1, "index":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 193
    .local v0, "firstKeyframe":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 195
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_0

    .line 196
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 197
    .local v2, "secondKeyframe":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float v4, p1, v4

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr v5, v6

    div-float v3, v4, v5

    .line 198
    .local v3, "t":F
    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p2, v4, v3}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    goto :goto_0
.end method

.method private static final getScalingAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p0, "nodeAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .param p1, "time"    # F
    .param p2, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 204
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    .line 216
    .end local p2    # "out":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    :goto_0
    return-object p2

    .line 205
    .restart local p2    # "out":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    goto :goto_0

    .line 207
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I

    move-result v1

    .line 208
    .local v1, "index":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 209
    .local v0, "firstKeyframe":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 211
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 213
    .local v2, "secondKeyframe":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float v4, p1, v4

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr v5, v6

    div-float v3, v4, v5

    .line 214
    .local v3, "t":F
    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4, v3}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0
.end method

.method private static final getTranslationAtTime(Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;FLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p0, "nodeAnim"    # Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    .param p1, "time"    # F
    .param p2, "out"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 172
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    .line 184
    .end local p2    # "out":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    :goto_0
    return-object p2

    .line 173
    .restart local p2    # "out":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    goto :goto_0

    .line 175
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->getFirstKeyframeIndexAtTime(Lcom/badlogic/gdx/utils/Array;F)I

    move-result v1

    .line 176
    .local v1, "index":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 177
    .local v0, "firstKeyframe":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 179
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    .line 181
    .local v2, "secondKeyframe":Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float v4, p1, v4

    iget v5, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->keytime:F

    sub-float/2addr v5, v6

    div-float v3, v4, v5

    .line 182
    .local v3, "t":F
    iget-object v4, v2, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;->value:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v4, v3}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0
.end method


# virtual methods
.method protected apply(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V
    .locals 2
    .param p1, "animation"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "time"    # F
    .param p3, "weight"    # F

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "You must call begin() before adding an animation"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transformPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-static {v0, v1, p3, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FLcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    .line 121
    return-void
.end method

.method protected applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V
    .locals 2
    .param p1, "animation"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "time"    # F

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/utils/ObjectMap;Lcom/badlogic/gdx/utils/Pool;FLcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 140
    return-void
.end method

.method protected applyAnimations(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V
    .locals 2
    .param p1, "anim1"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p2, "time1"    # F
    .param p3, "anim2"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .param p4, "time2"    # F
    .param p5, "weight"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    .line 157
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p1, :cond_2

    cmpl-float v0, p5, v1

    if-nez v0, :cond_3

    .line 148
    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applyAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    goto :goto_0

    .line 149
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-eqz v0, :cond_4

    .line 150
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call end() first"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->begin()V

    .line 153
    invoke-virtual {p0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->apply(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    .line 154
    invoke-virtual {p0, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->apply(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    .line 155
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->end()V

    goto :goto_0
.end method

.method protected begin()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "You must call end() after each call to being()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    .line 114
    return-void
.end method

.method protected end()V
    .locals 4

    .prologue
    .line 125
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "You must call begin() first"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 127
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g3d/model/Node;->localTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->toMatrix4(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transformPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v3, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/Node;Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;>;"
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->transforms:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 131
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    .line 132
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->applying:Z

    .line 133
    return-void
.end method

.method protected removeAnimation(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .prologue
    .line 279
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    .line 280
    .local v1, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;->isAnimated:Z

    goto :goto_0

    .line 282
    .end local v1    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_0
    return-void
.end method
