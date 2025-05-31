.class public Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
.super Ljava/lang/Object;
.source "MeshPartBuilder.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VertexInfo"
.end annotation


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;

.field public hasColor:Z

.field public hasNormal:Z

.field public hasPosition:Z

.field public hasUV:Z

.field public final normal:Lcom/badlogic/gdx/math/Vector3;

.field public final position:Lcom/badlogic/gdx/math/Vector3;

.field public final uv:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 308
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 310
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 312
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public lerp(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;F)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .param p2, "alpha"    # F

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 392
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    .line 393
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    .line 394
    :cond_3
    return-object p0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 321
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    .prologue
    const/4 v0, 0x0

    .line 333
    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object p0

    .line 342
    .end local p0    # "this":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :goto_0
    return-object p0

    .line 334
    .restart local p0    # "this":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :cond_0
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 336
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 338
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 340
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 3
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "nor"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "col"    # Lcom/badlogic/gdx/graphics/Color;
    .param p4, "uv"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->reset()V

    .line 325
    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 326
    :cond_0
    if-eqz p2, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 327
    :cond_1
    if-eqz p3, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 328
    :cond_2
    if-eqz p4, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-ne v2, v1, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 329
    :cond_4
    return-object p0

    :cond_5
    move v0, v2

    .line 325
    goto :goto_0

    :cond_6
    move v0, v2

    .line 326
    goto :goto_1

    :cond_7
    move v0, v2

    .line 327
    goto :goto_2
.end method

.method public setCol(FFFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    .line 370
    return-object p0
.end method

.method public setCol(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 2
    .param p1, "col"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v1, 0x1

    .line 374
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasColor:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 375
    :cond_0
    return-object p0

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    .line 359
    return-object p0
.end method

.method public setNor(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 2
    .param p1, "nor"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v1, 0x1

    .line 363
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 364
    :cond_0
    return-object p0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    .line 348
    return-object p0
.end method

.method public setPos(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 2
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v1, 0x1

    .line 352
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 353
    :cond_0
    return-object p0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 1
    .param p1, "u"    # F
    .param p2, "v"    # F

    .prologue
    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 381
    return-object p0
.end method

.method public setUV(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .locals 2
    .param p1, "uv"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v1, 0x1

    .line 385
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 386
    :cond_0
    return-object p0

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
