.class public Lcom/badlogic/gdx/math/Matrix3;
.super Ljava/lang/Object;
.source "Matrix3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x3

.field public static final M02:I = 0x6

.field public static final M10:I = 0x1

.field public static final M11:I = 0x4

.field public static final M12:I = 0x7

.field public static final M20:I = 0x2

.field public static final M21:I = 0x5

.field public static final M22:I = 0x8

.field private static final serialVersionUID:J = 0x6dbd5498495b94acL


# instance fields
.field private tmp:[F

.field public val:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 42
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 2
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/16 v1, 0x9

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 47
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "values"    # [F

    .prologue
    const/16 v1, 0x9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    .line 54
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set([F)Lcom/badlogic/gdx/math/Matrix3;

    .line 55
    return-void
.end method

.method private static mul([F[F)V
    .locals 12
    .param p0, "mata"    # [F
    .param p1, "matb"    # [F

    .prologue
    .line 571
    const/4 v9, 0x0

    aget v9, p0, v9

    const/4 v10, 0x0

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p0, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x6

    aget v10, p0, v10

    const/4 v11, 0x2

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 572
    .local v0, "v00":F
    const/4 v9, 0x0

    aget v9, p0, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x6

    aget v10, p0, v10

    const/4 v11, 0x5

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 573
    .local v1, "v01":F
    const/4 v9, 0x0

    aget v9, p0, v9

    const/4 v10, 0x6

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x3

    aget v10, p0, v10

    const/4 v11, 0x7

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x6

    aget v10, p0, v10

    const/16 v11, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 575
    .local v2, "v02":F
    const/4 v9, 0x1

    aget v9, p0, v9

    const/4 v10, 0x0

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    const/4 v11, 0x2

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 576
    .local v3, "v10":F
    const/4 v9, 0x1

    aget v9, p0, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    const/4 v11, 0x5

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 577
    .local v4, "v11":F
    const/4 v9, 0x1

    aget v9, p0, v9

    const/4 v10, 0x6

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x7

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x7

    aget v10, p0, v10

    const/16 v11, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 579
    .local v5, "v12":F
    const/4 v9, 0x2

    aget v9, p0, v9

    const/4 v10, 0x0

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x5

    aget v10, p0, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/16 v10, 0x8

    aget v10, p0, v10

    const/4 v11, 0x2

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 580
    .local v6, "v20":F
    const/4 v9, 0x2

    aget v9, p0, v9

    const/4 v10, 0x3

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x5

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/16 v10, 0x8

    aget v10, p0, v10

    const/4 v11, 0x5

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 581
    .local v7, "v21":F
    const/4 v9, 0x2

    aget v9, p0, v9

    const/4 v10, 0x6

    aget v10, p1, v10

    mul-float/2addr v9, v10

    const/4 v10, 0x5

    aget v10, p0, v10

    const/4 v11, 0x7

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/16 v10, 0x8

    aget v10, p0, v10

    const/16 v11, 0x8

    aget v11, p1, v11

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 583
    .local v8, "v22":F
    const/4 v9, 0x0

    aput v0, p0, v9

    .line 584
    const/4 v9, 0x1

    aput v3, p0, v9

    .line 585
    const/4 v9, 0x2

    aput v6, p0, v9

    .line 586
    const/4 v9, 0x3

    aput v1, p0, v9

    .line 587
    const/4 v9, 0x4

    aput v4, p0, v9

    .line 588
    const/4 v9, 0x5

    aput v7, p0, v9

    .line 589
    const/4 v9, 0x6

    aput v2, p0, v9

    .line 590
    const/4 v9, 0x7

    aput v5, p0, v9

    .line 591
    const/16 v9, 0x8

    aput v8, p0, v9

    .line 592
    return-void
.end method


# virtual methods
.method public det()F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v8

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 6

    .prologue
    .line 510
    const v0, 0x42652ee0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-double v2, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x0

    aget v1, v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRotationRad()F
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 506
    return-object p1
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 500
    return-object p1
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 69
    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix3;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->det()F

    move-result v0

    .line 274
    .local v0, "det":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Can\'t invert a singular matrix"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v0

    .line 278
    .local v1, "inv_det":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v12

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v8

    .line 279
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 280
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v10

    .line 281
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v11

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    aput v3, v2, v12

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v11

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v9

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v12

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v5, v9

    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v6, v6, v11

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    .line 288
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v8

    mul-float/2addr v3, v1

    aput v3, v2, v8

    .line 289
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v9

    mul-float/2addr v3, v1

    aput v3, v2, v9

    .line 290
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v10

    mul-float/2addr v3, v1

    aput v3, v2, v10

    .line 291
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v11

    mul-float/2addr v3, v1

    aput v3, v2, v11

    .line 292
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    aget v3, v3, v12

    mul-float/2addr v3, v1

    aput v3, v2, v12

    .line 293
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 294
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 295
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 296
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v4, v1

    aput v4, v2, v3

    .line 298
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 13
    .param p1, "m"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 80
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 81
    .local v0, "v00":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 82
    .local v1, "v01":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 84
    .local v2, "v02":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 85
    .local v3, "v10":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 86
    .local v4, "v11":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 88
    .local v5, "v12":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 89
    .local v6, "v20":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 90
    .local v7, "v21":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 92
    .local v8, "v22":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aput v0, v9, v10

    .line 93
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aput v3, v9, v10

    .line 94
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aput v6, v9, v10

    .line 95
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x3

    aput v1, v9, v10

    .line 96
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x4

    aput v4, v9, v10

    .line 97
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x5

    aput v7, v9, v10

    .line 98
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x6

    aput v2, v9, v10

    .line 99
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x7

    aput v5, v9, v10

    .line 100
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v10, 0x8

    aput v8, v9, v10

    .line 102
    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 13
    .param p1, "m"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 113
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v0, v9, v10

    .line 114
    .local v0, "v00":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v1, v9, v10

    .line 115
    .local v1, "v01":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v2, v9, v10

    .line 117
    .local v2, "v02":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v3, v9, v10

    .line 118
    .local v3, "v10":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v4, v9, v10

    .line 119
    .local v4, "v11":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x7

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v5, v9, v10

    .line 121
    .local v5, "v12":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 122
    .local v6, "v20":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 123
    .local v7, "v21":F
    iget-object v9, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x6

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v11, 0x5

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v11, 0x8

    aget v10, v10, v11

    iget-object v11, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v12, 0x8

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 125
    .local v8, "v22":F
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x0

    aput v0, v9, v10

    .line 126
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x1

    aput v3, v9, v10

    .line 127
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x2

    aput v6, v9, v10

    .line 128
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x3

    aput v1, v9, v10

    .line 129
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x4

    aput v4, v9, v10

    .line 130
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x5

    aput v7, v9, v10

    .line 131
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x6

    aput v2, v9, v10

    .line 132
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v10, 0x7

    aput v5, v9, v10

    .line 133
    iget-object v9, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v10, 0x8

    aput v8, v9, v10

    .line 135
    return-object p0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 427
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix3;->rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 6
    .param p1, "radians"    # F

    .prologue
    const/4 v5, 0x0

    .line 435
    cmpl-float v2, p1, v5

    if-nez v2, :cond_0

    .line 451
    :goto_0
    return-object p0

    .line 436
    :cond_0
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 437
    .local v0, "cos":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 439
    .local v1, "sin":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 440
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 441
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 443
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x3

    neg-float v4, v1

    aput v4, v2, v3

    .line 444
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 445
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x5

    aput v5, v2, v3

    .line 447
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    .line 448
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x7

    aput v5, v2, v3

    .line 449
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 450
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    goto :goto_0
.end method

.method public scale(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 464
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 470
    return-object p0
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v3, 0x0

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 485
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 488
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 521
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 522
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 523
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 532
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 541
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "affine"    # Lcom/badlogic/gdx/math/Affine2;

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    aput v2, v0, v1

    .line 314
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    aput v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 316
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    aput v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    aput v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 319
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    aput v2, v0, v1

    .line 320
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    aput v2, v0, v1

    .line 321
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 323
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    const/4 v3, 0x0

    .line 305
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 7
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v5

    aput v2, v0, v1

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v6

    aput v1, v0, v5

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v6

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    aput v2, v0, v1

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v0, v1

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    aput v2, v0, v1

    .line 339
    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 142
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix3;->setToRotationRad(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 2
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .prologue
    .line 168
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 5
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "cos"    # F
    .param p3, "sin"    # F

    .prologue
    .line 172
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p2

    .line 173
    .local v0, "oc":F
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    aput v3, v1, v2

    .line 174
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 177
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x4

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    aput v3, v1, v2

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x5

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 179
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 180
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x7

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 181
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v0

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    aput v3, v1, v2

    .line 182
    return-object p0
.end method

.method public setToRotationRad(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 6
    .param p1, "radians"    # F

    .prologue
    const/4 v5, 0x0

    .line 149
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 150
    .local v0, "cos":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 152
    .local v1, "sin":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 153
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 154
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    neg-float v4, v1

    aput v4, v2, v3

    .line 157
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 158
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x5

    aput v5, v2, v3

    .line 160
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x6

    aput v5, v2, v3

    .line 161
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aput v5, v2, v3

    .line 162
    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 164
    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 239
    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "scale"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 255
    return-object p0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 202
    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 221
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 391
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 392
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 398
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 399
    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "translation"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x6

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 416
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x7

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    .line 419
    return-object p0
.end method

.method public transpose()Lcom/badlogic/gdx/math/Matrix3;
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 548
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v0, v6, v8

    .line 549
    .local v0, "v01":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v1, v6, v9

    .line 550
    .local v1, "v02":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v2, v6, v10

    .line 551
    .local v2, "v10":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v3, v6, v11

    .line 552
    .local v3, "v12":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v4, v6, v12

    .line 553
    .local v4, "v20":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x7

    aget v5, v6, v7

    .line 554
    .local v5, "v21":F
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v0, v6, v10

    .line 555
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v1, v6, v12

    .line 556
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v2, v6, v8

    .line 557
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v7, 0x7

    aput v3, v6, v7

    .line 558
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v4, v6, v9

    .line 559
    iget-object v6, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aput v5, v6, v11

    .line 560
    return-object p0
.end method

.method public trn(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 369
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 359
    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 378
    return-object p0
.end method
