.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Group.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final children:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final computedTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private final oldTransform:Lcom/badlogic/gdx/math/Matrix4;

.field transform:Z

.field private final worldTransform:Lcom/badlogic/gdx/math/Affine2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 42
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 47
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 48
    .local v0, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 49
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 51
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 262
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 265
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 266
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 267
    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actorAfter"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 296
    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 298
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 302
    :goto_0
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 303
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 304
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 305
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 272
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt p1, v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 277
    :goto_0
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 278
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 279
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 280
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actorBefore"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 285
    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 287
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 288
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 289
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 290
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 291
    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 208
    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 209
    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
    .param p2, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 222
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 223
    return-void
.end method

.method protected childrenChanged()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    .line 345
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    .line 346
    return-void
.end method

.method public clearChildren()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 332
    .local v0, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v3, v4, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 333
    aget-object v1, v0, v2

    .line 334
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 335
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 338
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    .line 339
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    .line 340
    return-void
.end method

.method protected computeTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 183
    .local v0, "worldTransform":Lcom/badlogic/gdx/math/Affine2;
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    .line 184
    .local v6, "originX":F
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    .line 185
    .local v7, "originY":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    .line 186
    .local v3, "rotation":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    .line 187
    .local v4, "scaleX":F
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    .line 189
    .local v5, "scaleY":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    add-float/2addr v1, v6

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    add-float/2addr v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    .line 190
    cmpl-float v1, v6, v9

    if-nez v1, :cond_0

    cmpl-float v1, v7, v9

    if-eqz v1, :cond_1

    :cond_0
    neg-float v1, v6

    neg-float v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Affine2;->translate(FF)Lcom/badlogic/gdx/math/Affine2;

    .line 193
    :cond_1
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 194
    .local v8, "parentGroup":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_0
    if-eqz v8, :cond_2

    .line 195
    iget-boolean v1, v8, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_4

    .line 198
    :cond_2
    if-eqz v8, :cond_3

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Affine2;->preMul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v1

    .line 196
    :cond_4
    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 438
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    .line 439
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 58
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 59
    :cond_1
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 17
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v16, v0

    mul-float p2, p2, v16

    .line 67
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 68
    .local v4, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 69
    .local v2, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 70
    .local v9, "cullingArea":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v9, :cond_7

    .line 72
    iget v6, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 73
    .local v6, "cullLeft":F
    iget v0, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v16, v0

    add-float v7, v6, v16

    .line 74
    .local v7, "cullRight":F
    iget v5, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 75
    .local v5, "cullBottom":F
    iget v0, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v16, v0

    add-float v8, v5, v16

    .line 76
    .local v8, "cullTop":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 77
    const/4 v12, 0x0

    .local v12, "i":I
    iget v13, v4, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v13, "n":I
    :goto_0
    if-ge v12, v13, :cond_6

    .line 78
    aget-object v3, v2, v12

    .line 79
    .local v3, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v16

    if-nez v16, :cond_1

    .line 77
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget v10, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .local v10, "cx":F
    iget v11, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 81
    .local v11, "cy":F
    cmpg-float v16, v10, v7

    if-gtz v16, :cond_0

    cmpg-float v16, v11, v8

    if-gtz v16, :cond_0

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    move/from16 v16, v0

    add-float v16, v16, v10

    cmpl-float v16, v16, v6

    if-ltz v16, :cond_0

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    move/from16 v16, v0

    add-float v16, v16, v11

    cmpl-float v16, v16, v5

    if-ltz v16, :cond_0

    .line 82
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    goto :goto_1

    .line 86
    .end local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10    # "cx":F
    .end local v11    # "cy":F
    .end local v12    # "i":I
    .end local v13    # "n":I
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .local v14, "offsetX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 87
    .local v15, "offsetY":F
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 88
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 89
    const/4 v12, 0x0

    .restart local v12    # "i":I
    iget v13, v4, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .restart local v13    # "n":I
    :goto_2
    if-ge v12, v13, :cond_5

    .line 90
    aget-object v3, v2, v12

    .line 91
    .restart local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v16

    if-nez v16, :cond_4

    .line 89
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 92
    :cond_4
    iget v10, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .restart local v10    # "cx":F
    iget v11, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 93
    .restart local v11    # "cy":F
    cmpg-float v16, v10, v7

    if-gtz v16, :cond_3

    cmpg-float v16, v11, v8

    if-gtz v16, :cond_3

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    move/from16 v16, v0

    add-float v16, v16, v10

    cmpl-float v16, v16, v6

    if-ltz v16, :cond_3

    iget v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    move/from16 v16, v0

    add-float v16, v16, v11

    cmpl-float v16, v16, v5

    if-ltz v16, :cond_3

    .line 94
    add-float v16, v10, v14

    move/from16 v0, v16

    iput v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 95
    add-float v16, v11, v15

    move/from16 v0, v16

    iput v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 96
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 97
    iput v10, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 98
    iput v11, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_3

    .line 101
    .end local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10    # "cx":F
    .end local v11    # "cy":F
    :cond_5
    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 102
    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 131
    .end local v5    # "cullBottom":F
    .end local v6    # "cullLeft":F
    .end local v7    # "cullRight":F
    .end local v8    # "cullTop":F
    .end local v14    # "offsetX":F
    .end local v15    # "offsetY":F
    :cond_6
    :goto_4
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 132
    return-void

    .line 106
    .end local v12    # "i":I
    .end local v13    # "n":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 107
    const/4 v12, 0x0

    .restart local v12    # "i":I
    iget v13, v4, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .restart local v13    # "n":I
    :goto_5
    if-ge v12, v13, :cond_6

    .line 108
    aget-object v3, v2, v12

    .line 109
    .restart local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v16

    if-nez v16, :cond_8

    .line 107
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 110
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    goto :goto_6

    .line 114
    .end local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v12    # "i":I
    .end local v13    # "n":I
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .restart local v14    # "offsetX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 115
    .restart local v15    # "offsetY":F
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 116
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 117
    const/4 v12, 0x0

    .restart local v12    # "i":I
    iget v13, v4, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .restart local v13    # "n":I
    :goto_7
    if-ge v12, v13, :cond_b

    .line 118
    aget-object v3, v2, v12

    .line 119
    .restart local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v16

    if-nez v16, :cond_a

    .line 117
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 120
    :cond_a
    iget v10, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .restart local v10    # "cx":F
    iget v11, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 121
    .restart local v11    # "cy":F
    add-float v16, v10, v14

    move/from16 v0, v16

    iput v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 122
    add-float v16, v11, v15

    move/from16 v0, v16

    iput v0, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 123
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 124
    iput v10, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 125
    iput v11, v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_8

    .line 127
    .end local v3    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10    # "cx":F
    .end local v11    # "cy":F
    :cond_b
    move-object/from16 v0, p0

    iput v14, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 128
    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    goto :goto_4
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 138
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 140
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 141
    :cond_1
    return-void
.end method

.method protected drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 11
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    const/4 v10, 0x0

    .line 148
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 149
    .local v2, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 151
    .local v0, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v9, :cond_2

    .line 152
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 153
    aget-object v1, v0, v5

    .line 154
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v9

    if-nez v9, :cond_0

    .line 152
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_1

    .line 157
    .end local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 176
    :goto_2
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 177
    return-void

    .line 160
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_2
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .local v7, "offsetX":F
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 161
    .local v8, "offsetY":F
    iput v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 162
    iput v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 163
    const/4 v5, 0x0

    .restart local v5    # "i":I
    iget v6, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .restart local v6    # "n":I
    :goto_3
    if-ge v5, v6, :cond_4

    .line 164
    aget-object v1, v0, v5

    .line 165
    .restart local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v9

    if-nez v9, :cond_3

    .line 163
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 166
    :cond_3
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .local v3, "cx":F
    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 167
    .local v4, "cy":F
    add-float v9, v3, v7

    iput v9, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 168
    add-float v9, v4, v8

    iput v9, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 169
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 170
    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 171
    iput v4, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_4

    .line 173
    .end local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v3    # "cx":F
    .end local v4    # "cy":F
    :cond_4
    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 174
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    goto :goto_2
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 351
    .local v2, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 352
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 360
    :goto_1
    return-object v5

    .line 351
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v3, 0x0

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v3, v4, :cond_3

    .line 354
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 355
    .local v1, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v5, :cond_2

    .line 356
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v1    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 357
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_2

    move-object v5, v0

    goto :goto_1

    .line 353
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 360
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    .line 243
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v5, v6, :cond_0

    const/4 v2, 0x0

    .line 253
    :goto_0
    return-object v2

    .line 244
    :cond_0
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 245
    .local v4, "point":Lcom/badlogic/gdx/math/Vector2;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v1, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 246
    .local v1, "childrenArray":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 247
    aget-object v0, v1, v3

    .line 248
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    .line 246
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {v4, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 250
    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 251
    .local v2, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v2, :cond_1

    goto :goto_0

    .line 253
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v2    # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    goto :goto_0
.end method

.method public isTransform()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return v0
.end method

.method public localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "descendant"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "localCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 413
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 414
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child is not a descendant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 418
    :cond_1
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 419
    return-object p2
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 4
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "unfocus"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 318
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v2, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 326
    :goto_0
    return v1

    .line 319
    :cond_0
    if-eqz p2, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 321
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 323
    .end local v0    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_1
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 324
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 325
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    goto :goto_0
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 215
    return-void
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 229
    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0
    .param p1, "cullingArea"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 235
    return-void
.end method

.method public setDebug(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "recursively"    # Z

    .prologue
    .line 424
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(Z)V

    .line 425
    if-eqz p2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 427
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_0

    .line 428
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0

    .line 430
    .restart local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_0

    .line 434
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 365
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v0, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 366
    .local v0, "childrenArray":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 367
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public setTransform(Z)V
    .locals 0
    .param p1, "transform"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    .line 404
    return-void
.end method

.method public swapActor(II)Z
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 373
    .local v0, "maxIndex":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v1

    .line 374
    :cond_1
    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    .line 376
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 5
    .param p1, "first"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "second"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 381
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 382
    .local v0, "firstIndex":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3, p2, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    .line 383
    .local v1, "secondIndex":I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 385
    :goto_0
    return v2

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 445
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toString(Ljava/lang/StringBuilder;I)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .prologue
    const/16 v6, 0xa

    .line 451
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 455
    .local v1, "actors":[Lcom/badlogic/gdx/scenes/scene2d/Actor;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v4, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 456
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 457
    const-string v5, "|  "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 458
    :cond_0
    aget-object v0, v1, v2

    .line 459
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v5, :cond_1

    .line 460
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v0, p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    .line 455
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .restart local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 466
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v3    # "ii":I
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 467
    return-void
.end method
