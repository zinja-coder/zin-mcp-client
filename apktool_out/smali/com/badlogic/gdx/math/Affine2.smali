.class public final Lcom/badlogic/gdx/math/Affine2;
.super Ljava/lang/Object;
.source "Affine2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x15285b8a50dae163L


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m10:F

.field public m11:F

.field public m12:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Affine2;)V
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 33
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 45
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    .line 46
    return-void
.end method


# virtual methods
.method public applyTo(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 656
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 657
    .local v0, "x":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 658
    .local v1, "y":F
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 659
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 660
    return-void
.end method

.method public det()F
    .locals 3

    .prologue
    .line 630
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 637
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 638
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 639
    return-object p1
.end method

.method public idt()Lcom/badlogic/gdx/math/Affine2;
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 51
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 52
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 53
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 54
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 55
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 56
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 57
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Affine2;
    .locals 11

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Affine2;->det()F

    move-result v0

    .line 341
    .local v0, "det":F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v9, "Can\'t invert a singular affine matrix"

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 343
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    div-float v1, v8, v0

    .line 345
    .local v1, "invDet":F
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 346
    .local v2, "tmp00":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    neg-float v3, v8

    .line 347
    .local v3, "tmp01":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v10, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 348
    .local v4, "tmp02":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    neg-float v5, v8

    .line 349
    .local v5, "tmp10":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 350
    .local v6, "tmp11":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v10, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v9, v10

    sub-float v7, v8, v9

    .line 352
    .local v7, "tmp12":F
    mul-float v8, v1, v2

    iput v8, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 353
    mul-float v8, v1, v3

    iput v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 354
    mul-float v8, v1, v4

    iput v8, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 355
    mul-float v8, v1, v5

    iput v8, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 356
    mul-float v8, v1, v6

    iput v8, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 357
    mul-float v8, v1, v7

    iput v8, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 358
    return-object p0
.end method

.method public isIdt()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 651
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTranslation()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 645
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 9
    .param p1, "other"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 369
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v8, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 370
    .local v0, "tmp00":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v8, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 371
    .local v1, "tmp01":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v8, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v2, v6, v7

    .line 372
    .local v2, "tmp02":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v8, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v7, v8

    add-float v3, v6, v7

    .line 373
    .local v3, "tmp10":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v8, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 374
    .local v4, "tmp11":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v8, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float v5, v6, v7

    .line 376
    .local v5, "tmp12":F
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 377
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 378
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 379
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 380
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 381
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 382
    return-object p0
.end method

.method public preMul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 9
    .param p1, "other"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 393
    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 394
    .local v0, "tmp00":F
    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 395
    .local v1, "tmp01":F
    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float v2, v6, v7

    .line 396
    .local v2, "tmp02":F
    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v7, v8

    add-float v3, v6, v7

    .line 397
    .local v3, "tmp10":F
    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v8

    add-float v4, v6, v7

    .line 398
    .local v4, "tmp11":F
    iget v6, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float v5, v6, v7

    .line 400
    .local v5, "tmp12":F
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 401
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 402
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 403
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 404
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 405
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 406
    return-object p0
.end method

.method public preRotate(F)Lcom/badlogic/gdx/math/Affine2;
    .locals 10
    .param p1, "degrees"    # F

    .prologue
    .line 529
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_0

    .line 547
    :goto_0
    return-object p0

    .line 531
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    .line 532
    .local v0, "cos":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v1

    .line 534
    .local v1, "sin":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v9, v1

    sub-float v2, v8, v9

    .line 535
    .local v2, "tmp00":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v9, v1

    sub-float v3, v8, v9

    .line 536
    .local v3, "tmp01":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v9, v1

    sub-float v4, v8, v9

    .line 537
    .local v4, "tmp02":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v9, v0

    add-float v5, v8, v9

    .line 538
    .local v5, "tmp10":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v9, v0

    add-float v6, v8, v9

    .line 539
    .local v6, "tmp11":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v9, v0

    add-float v7, v8, v9

    .line 541
    .local v7, "tmp12":F
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 542
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 543
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 544
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 545
    iput v6, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 546
    iput v7, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    goto :goto_0
.end method

.method public preRotateRad(F)Lcom/badlogic/gdx/math/Affine2;
    .locals 10
    .param p1, "radians"    # F

    .prologue
    .line 554
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_0

    .line 572
    :goto_0
    return-object p0

    .line 556
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v0

    .line 557
    .local v0, "cos":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    .line 559
    .local v1, "sin":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v9, v1

    sub-float v2, v8, v9

    .line 560
    .local v2, "tmp00":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v9, v1

    sub-float v3, v8, v9

    .line 561
    .local v3, "tmp01":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v9, v1

    sub-float v4, v8, v9

    .line 562
    .local v4, "tmp02":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v9, v0

    add-float v5, v8, v9

    .line 563
    .local v5, "tmp10":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v9, v0

    add-float v6, v8, v9

    .line 564
    .local v6, "tmp11":F
    iget v8, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v9, v0

    add-float v7, v8, v9

    .line 566
    .local v7, "tmp12":F
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 567
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 568
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 569
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 570
    iput v6, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 571
    iput v7, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    goto :goto_0
.end method

.method public preScale(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 467
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 468
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 469
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 470
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 471
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 472
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 473
    return-object p0
.end method

.method public preScale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 480
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->preScale(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public preShear(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 8
    .param p1, "shearX"    # F
    .param p2, "shearY"    # F

    .prologue
    .line 604
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v7, p1

    add-float v0, v6, v7

    .line 605
    .local v0, "tmp00":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, p1

    add-float v1, v6, v7

    .line 606
    .local v1, "tmp01":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v7, p1

    add-float v2, v6, v7

    .line 607
    .local v2, "tmp02":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v7, p2

    add-float v3, v6, v7

    .line 608
    .local v3, "tmp10":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, p2

    add-float v4, v6, v7

    .line 609
    .local v4, "tmp11":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v7, p2

    add-float v5, v6, v7

    .line 611
    .local v5, "tmp12":F
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 612
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 613
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 614
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 615
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 616
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 617
    return-object p0
.end method

.method public preShear(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "shear"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 624
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->preShear(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public preTranslate(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 431
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 432
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 433
    return-object p0
.end method

.method public preTranslate(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "trn"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 440
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->preTranslate(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Affine2;
    .locals 8
    .param p1, "degrees"    # F

    .prologue
    .line 487
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_0

    .line 501
    :goto_0
    return-object p0

    .line 489
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    .line 490
    .local v0, "cos":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v1

    .line 492
    .local v1, "sin":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, v1

    add-float v2, v6, v7

    .line 493
    .local v2, "tmp00":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    neg-float v7, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, v0

    add-float v3, v6, v7

    .line 494
    .local v3, "tmp01":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v1

    add-float v4, v6, v7

    .line 495
    .local v4, "tmp10":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    neg-float v7, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v0

    add-float v5, v6, v7

    .line 497
    .local v5, "tmp11":F
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 498
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 499
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 500
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    goto :goto_0
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Affine2;
    .locals 8
    .param p1, "radians"    # F

    .prologue
    .line 508
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_0

    .line 522
    :goto_0
    return-object p0

    .line 510
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v0

    .line 511
    .local v0, "cos":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    .line 513
    .local v1, "sin":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, v1

    add-float v2, v6, v7

    .line 514
    .local v2, "tmp00":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    neg-float v7, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, v0

    add-float v3, v6, v7

    .line 515
    .local v3, "tmp01":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v1

    add-float v4, v6, v7

    .line 516
    .local v4, "tmp10":F
    iget v6, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    neg-float v7, v1

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v0

    add-float v5, v6, v7

    .line 518
    .local v5, "tmp11":F
    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 519
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 520
    iput v4, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 521
    iput v5, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    goto :goto_0
.end method

.method public scale(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 448
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 449
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 450
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 451
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 452
    return-object p0
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 459
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->scale(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 64
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 65
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 66
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 68
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 69
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 70
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 77
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 79
    .local v0, "other":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 80
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 81
    const/4 v1, 0x6

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 82
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 83
    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 84
    const/4 v1, 0x7

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 85
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 98
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 100
    .local v0, "other":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 101
    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 102
    const/16 v1, 0xc

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 103
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 104
    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 105
    const/16 v1, 0xd

    aget v1, v0, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 106
    return-object p0
.end method

.method public setToProduct(Lcom/badlogic/gdx/math/Affine2;Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 3
    .param p1, "l"    # Lcom/badlogic/gdx/math/Affine2;
    .param p2, "r"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    .line 327
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v1, p2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v2, p2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 328
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v1, p2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v2, p2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 329
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v1, p2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v2, p2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 330
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v1, p2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v2, p2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 331
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v1, p2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v2, p2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 332
    iget v0, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v1, p2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v2, p2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 333
    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Affine2;
    .locals 4
    .param p1, "degrees"    # F

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    .line 156
    .local v0, "cos":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v1

    .line 158
    .local v1, "sin":F
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 159
    neg-float v2, v1

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 160
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 161
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 162
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 163
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 164
    return-object p0
.end method

.method public setToRotation(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "cos"    # F
    .param p2, "sin"    # F

    .prologue
    const/4 v1, 0x0

    .line 188
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 189
    neg-float v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 190
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 191
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 192
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 193
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 194
    return-object p0
.end method

.method public setToRotationRad(F)Lcom/badlogic/gdx/math/Affine2;
    .locals 4
    .param p1, "radians"    # F

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v0

    .line 172
    .local v0, "cos":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    .line 174
    .local v1, "sin":F
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 175
    neg-float v2, v1

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 176
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 177
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 178
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 179
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 180
    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v0, 0x0

    .line 135
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 136
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 137
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 138
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 139
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 140
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 141
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 148
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->setToScaling(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public setToShearing(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "shearX"    # F
    .param p2, "shearY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 202
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 203
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 204
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 205
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 206
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 207
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 208
    return-object p0
.end method

.method public setToShearing(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "shear"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 215
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->setToShearing(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 114
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 115
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 116
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 117
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 118
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 119
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 120
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "trn"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 127
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->setToTranslation(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public setToTrnRotRadScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radians"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F

    .prologue
    const/4 v3, 0x0

    .line 266
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 267
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 269
    cmpl-float v2, p3, v3

    if-nez v2, :cond_0

    .line 270
    iput p4, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 271
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 272
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 273
    iput p5, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 283
    :goto_0
    return-object p0

    .line 275
    :cond_0
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    .line 276
    .local v1, "sin":F
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v0

    .line 278
    .local v0, "cos":F
    mul-float v2, v0, p4

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 279
    neg-float v2, v1

    mul-float/2addr v2, p5

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 280
    mul-float v2, v1, p4

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 281
    mul-float v2, v0, p5

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    goto :goto_0
.end method

.method public setToTrnRotRadScl(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 6
    .param p1, "trn"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radians"    # F
    .param p3, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 293
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotRadScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "degrees"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F

    .prologue
    const/4 v3, 0x0

    .line 227
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 228
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 230
    cmpl-float v2, p3, v3

    if-nez v2, :cond_0

    .line 231
    iput p4, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 232
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 233
    iput v3, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 234
    iput p5, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 244
    :goto_0
    return-object p0

    .line 236
    :cond_0
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v1

    .line 237
    .local v1, "sin":F
    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    .line 239
    .local v0, "cos":F
    mul-float v2, v0, p4

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 240
    neg-float v2, v1

    mul-float/2addr v2, p5

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 241
    mul-float v2, v1, p4

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 242
    mul-float v2, v0, p5

    iput v2, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    goto :goto_0
.end method

.method public setToTrnRotScl(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 6
    .param p1, "trn"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "degrees"    # F
    .param p3, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 254
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public setToTrnScl(FFFF)Lcom/badlogic/gdx/math/Affine2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scaleX"    # F
    .param p4, "scaleY"    # F

    .prologue
    const/4 v0, 0x0

    .line 304
    iput p3, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 305
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 306
    iput p1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 307
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 308
    iput p4, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 309
    iput p2, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 310
    return-object p0
.end method

.method public setToTrnScl(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 4
    .param p1, "trn"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 319
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Affine2;->setToTrnScl(FFFF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public shear(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 4
    .param p1, "shearX"    # F
    .param p2, "shearY"    # F

    .prologue
    .line 580
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v3, p2

    add-float v0, v2, v3

    .line 581
    .local v0, "tmp0":F
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 582
    .local v1, "tmp1":F
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    .line 583
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    .line 585
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v3, p2

    add-float v0, v2, v3

    .line 586
    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    iget v3, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 587
    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    .line 588
    iput v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    .line 589
    return-object p0
.end method

.method public shear(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "shear"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 596
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->shear(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n[0.0|0.0|0.1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)Lcom/badlogic/gdx/math/Affine2;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 414
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 415
    iget v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    iget v1, p0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 416
    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Affine2;
    .locals 2
    .param p1, "trn"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 423
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->translate(FF)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v0

    return-object v0
.end method
