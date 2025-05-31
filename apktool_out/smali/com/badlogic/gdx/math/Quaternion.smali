.class public Lcom/badlogic/gdx/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6a54731e78ad5e10L

.field private static tmp1:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp2:Lcom/badlogic/gdx/math/Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 0
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 0
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 64
    return-void
.end method

.method public static final dot(FFFFFFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "w1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "w2"    # F

    .prologue
    .line 721
    mul-float v0, p0, p4

    mul-float v1, p1, p5

    add-float/2addr v0, v1

    mul-float v1, p2, p6

    add-float/2addr v0, v1

    mul-float v1, p3, p7

    add-float/2addr v0, v1

    return v0
.end method

.method public static final len(FFFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "w"    # F

    .prologue
    .line 103
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final len2(FFFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "w"    # F

    .prologue
    .line 199
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "qx"    # F
    .param p2, "qy"    # F
    .param p3, "qz"    # F
    .param p4, "qw"    # F

    .prologue
    .line 327
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 328
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 331
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 2
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 318
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 319
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 320
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 321
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 322
    return-object p0
.end method

.method public conjugate()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 226
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 228
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    return-object v0
.end method

.method public dot(FFFF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 738
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Quaternion;)F
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 728
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 693
    if-ne p0, p1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 696
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 697
    goto :goto_0

    .line 699
    :cond_2
    instance-of v3, p1, Lcom/badlogic/gdx/math/Quaternion;

    if-nez v3, :cond_3

    move v1, v2

    .line 700
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 702
    check-cast v0, Lcom/badlogic/gdx/math/Quaternion;

    .line 703
    .local v0, "other":Lcom/badlogic/gdx/math/Quaternion;
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public exp(F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 10
    .param p1, "alpha"    # F

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len()F

    move-result v1

    .line 656
    .local v1, "norm":F
    float-to-double v4, v1

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 659
    .local v2, "normExp":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 662
    .local v3, "theta":F
    const/4 v0, 0x0

    .line 663
    .local v0, "coeff":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 664
    mul-float v4, v2, p1

    div-float v0, v4, v1

    .line 669
    :goto_0
    float-to-double v4, v2

    mul-float v6, p1, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 670
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 671
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 672
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 675
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 677
    return-object p0

    .line 666
    :cond_0
    float-to-double v4, v2

    mul-float v6, p1, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v1

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_0
.end method

.method public getAngle()F
    .locals 2

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getAngleRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAngleAround(FFF)F
    .locals 2
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F

    .prologue
    .line 866
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->getAngleAroundRad(FFF)F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAngleAround(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 873
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->getAngleAround(FFF)F

    move-result v0

    return v0
.end method

.method public getAngleAroundRad(FFF)F
    .locals 8
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F

    .prologue
    .line 848
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/Vector3;->dot(FFFFFF)F

    move-result v6

    .line 849
    .local v6, "d":F
    mul-float v0, p1, v6

    mul-float v1, p2, v6

    mul-float v2, p3, v6

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->len2(FFFF)F

    move-result v7

    .line 850
    .local v7, "l2":F
    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    float-to-double v2, v2

    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public getAngleAroundRad(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 857
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->getAngleAroundRad(FFF)F

    move-result v0

    return v0
.end method

.method public getAngleRad()F
    .locals 4

    .prologue
    .line 799
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getAxisAngle(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 2
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->getAxisAngleRad(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAxisAngleRad(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 9
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 777
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 778
    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 779
    .local v0, "angle":F
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v4

    sub-float v1, v8, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 780
    .local v2, "s":D
    const-wide v4, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 782
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 783
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 784
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 791
    :goto_0
    return v0

    .line 786
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 787
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 788
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-float v1, v4

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_0
.end method

.method public getGimbalPole()I
    .locals 4

    .prologue
    .line 156
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 157
    .local v0, "t":F
    const v1, 0x3eff7cee    # 0.499f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const v1, -0x41008312    # -0.499f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getPitchRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPitchRad()F
    .locals 5

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getGimbalPole()I

    move-result v0

    .line 177
    .local v0, "pole":I
    if-nez v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v1, v2

    :goto_0
    return v1

    :cond_0
    int-to-float v1, v0

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    goto :goto_0
.end method

.method public getRoll()F
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getRollRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRollRad()F
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 163
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getGimbalPole()I

    move-result v0

    .line 164
    .local v0, "pole":I
    if-nez v0, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v2

    mul-float/2addr v1, v2

    goto :goto_0
.end method

.method public getSwingTwist(FFFLcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 7
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "swing"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p5, "twist"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 823
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/Vector3;->dot(FFFFFF)F

    move-result v6

    .line 824
    .local v6, "d":F
    mul-float v0, p1, v6

    mul-float v1, p2, v6

    mul-float v2, p3, v6

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p5, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 825
    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 826
    return-void
.end method

.method public getSwingTwist(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 6
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "swing"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "twist"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 839
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Quaternion;->getSwingTwist(FFFLcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Quaternion;)V

    .line 840
    return-void
.end method

.method public getYaw()F
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getYawRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getYawRad()F
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 189
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getGimbalPole()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 682
    const/16 v0, 0x1f

    .line 683
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 684
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 685
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 686
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 687
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 688
    return v1
.end method

.method public idt()Lcom/badlogic/gdx/math/Quaternion;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public isIdentity()Z
    .locals 2

    .prologue
    .line 376
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdentity(F)Z
    .locals 2
    .param p1, "tolerance"    # F

    .prologue
    .line 381
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 108
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 204
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 745
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 746
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 747
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 748
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 749
    return-object p0
.end method

.method public mul(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 270
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, p2

    sub-float v1, v4, v5

    .line 271
    .local v1, "newX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, p2

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, p3

    sub-float v2, v4, v5

    .line 272
    .local v2, "newY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, p3

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, p1

    sub-float v3, v4, v5

    .line 273
    .local v3, "newZ":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, p2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, p3

    sub-float v0, v4, v5

    .line 274
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 275
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 276
    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 277
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 278
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 251
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 252
    .local v1, "newX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 253
    .local v2, "newY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 254
    .local v3, "newZ":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 255
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 256
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 257
    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 258
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 259
    return-object p0
.end method

.method public mulLeft(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 305
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    mul-float v5, p3, p2

    sub-float v1, v4, v5

    .line 306
    .local v1, "newX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    mul-float v5, p1, p3

    sub-float v2, v4, v5

    .line 307
    .local v2, "newY":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    mul-float v5, p2, p1

    sub-float v3, v4, v5

    .line 308
    .local v3, "newZ":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, p4

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, p2

    sub-float/2addr v4, v5

    mul-float v5, p3, p3

    sub-float v0, v4, v5

    .line 309
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 310
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 311
    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 312
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 313
    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 286
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 287
    .local v1, "newX":F
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 288
    .local v2, "newY":F
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 289
    .local v3, "newZ":F
    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 290
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 291
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 292
    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 293
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 294
    return-object p0
.end method

.method public nor()Lcom/badlogic/gdx/math/Quaternion;
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len2()F

    move-result v0

    .line 211
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 213
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 214
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 215
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 216
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 218
    :cond_0
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 73
    iput p1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 75
    iput p3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 76
    iput p4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 77
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 84
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 93
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    const v2, 0x3c8efa35

    .line 122
    mul-float v0, p1, v2

    mul-float v1, p2, v2

    mul-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 18
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    .line 132
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v8, p3, v15

    .line 133
    .local v8, "hr":F
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    .line 134
    .local v11, "shr":F
    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    .line 135
    .local v3, "chr":F
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v7, p2, v15

    .line 136
    .local v7, "hp":F
    float-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v10, v0

    .line 137
    .local v10, "shp":F
    float-to-double v0, v7

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    .line 138
    .local v2, "chp":F
    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v9, p1, v15

    .line 139
    .local v9, "hy":F
    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 140
    .local v12, "shy":F
    float-to-double v0, v9

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 141
    .local v4, "chy":F
    mul-float v6, v4, v10

    .line 142
    .local v6, "chy_shp":F
    mul-float v13, v12, v2

    .line 143
    .local v13, "shy_chp":F
    mul-float v5, v4, v2

    .line 144
    .local v5, "chy_chp":F
    mul-float v14, v12, v10

    .line 146
    .local v14, "shy_shp":F
    mul-float v15, v6, v3

    mul-float v16, v13, v11

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 147
    mul-float v15, v13, v3

    mul-float v16, v6, v11

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 148
    mul-float v15, v5, v11

    mul-float v16, v14, v3

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 149
    mul-float v15, v5, v3

    mul-float v16, v14, v11

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 150
    return-object p0
.end method

.method public setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 11
    .param p1, "xx"    # F
    .param p2, "xy"    # F
    .param p3, "xz"    # F
    .param p4, "yx"    # F
    .param p5, "yy"    # F
    .param p6, "yz"    # F
    .param p7, "zx"    # F
    .param p8, "zy"    # F
    .param p9, "zz"    # F

    .prologue
    .line 473
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 12
    .param p1, "normalizeAxes"    # Z
    .param p2, "xx"    # F
    .param p3, "xy"    # F
    .param p4, "xz"    # F
    .param p5, "yx"    # F
    .param p6, "yy"    # F
    .param p7, "yz"    # F
    .param p8, "zx"    # F
    .param p9, "zy"    # F
    .param p10, "zz"    # F

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p4}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v8

    div-float v2, v7, v8

    .line 499
    .local v2, "lx":F
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {p5 .. p7}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v8

    div-float v3, v7, v8

    .line 500
    .local v3, "ly":F
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {p8 .. p10}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v8

    div-float v4, v7, v8

    .line 501
    .local v4, "lz":F
    mul-float/2addr p2, v2

    .line 502
    mul-float/2addr p3, v2

    .line 503
    mul-float p4, p4, v2

    .line 504
    mul-float p7, p7, v3

    .line 505
    mul-float p6, p6, v3

    .line 506
    mul-float p7, p7, v3

    .line 507
    mul-float p8, p8, v4

    .line 508
    mul-float p9, p9, v4

    .line 509
    mul-float p10, p10, v4

    .line 513
    .end local v2    # "lx":F
    .end local v3    # "ly":F
    .end local v4    # "lz":F
    :cond_0
    add-float v7, p2, p6

    add-float v6, v7, p10

    .line 516
    .local v6, "t":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    .line 517
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v6

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 518
    .local v5, "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 519
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v5, v7, v5

    .line 520
    sub-float v7, p9, p7

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 521
    sub-float v7, p4, p8

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 522
    sub-float v7, p5, p3

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 546
    :goto_0
    return-object p0

    .line 523
    .end local v5    # "s":F
    :cond_1
    cmpl-float v7, p2, p6

    if-lez v7, :cond_2

    cmpl-float v7, p2, p10

    if-lez v7, :cond_2

    .line 524
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    float-to-double v10, p2

    add-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    sub-double/2addr v8, v10

    move/from16 v0, p10

    float-to-double v10, v0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 525
    .restart local v5    # "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 526
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v5, v7, v5

    .line 527
    add-float v7, p5, p3

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 528
    add-float v7, p4, p8

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 529
    sub-float v7, p9, p7

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    goto :goto_0

    .line 530
    .end local v5    # "s":F
    :cond_2
    cmpl-float v7, p6, p10

    if-lez v7, :cond_3

    .line 531
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p6

    float-to-double v10, v0

    add-double/2addr v8, v10

    float-to-double v10, p2

    sub-double/2addr v8, v10

    move/from16 v0, p10

    float-to-double v10, v0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 532
    .restart local v5    # "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 533
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v5, v7, v5

    .line 534
    add-float v7, p5, p3

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 535
    add-float v7, p9, p7

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 536
    sub-float v7, p4, p8

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    goto :goto_0

    .line 538
    .end local v5    # "s":F
    :cond_3
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p10

    float-to-double v10, v0

    add-double/2addr v8, v10

    float-to-double v10, p2

    sub-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 539
    .restart local v5    # "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 540
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v5, v7, v5

    .line 541
    add-float v7, p4, p8

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 542
    add-float v7, p9, p7

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 543
    sub-float v7, p5, p3

    mul-float/2addr v7, v5

    iput v7, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    goto/16 :goto_0
.end method

.method public setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 411
    const v0, 0x3c8efa35

    mul-float/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .prologue
    .line 392
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radians"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const v5, 0x40c90fdb

    .line 421
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v0

    .line 422
    .local v0, "d":F
    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v4

    .line 427
    :goto_0
    return-object v4

    .line 423
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, v4, v0

    .line 424
    cmpg-float v4, p4, v6

    if-gez v4, :cond_1

    neg-float v4, p4

    rem-float/2addr v4, v5

    sub-float v1, v5, v4

    .line 425
    .local v1, "l_ang":F
    :goto_1
    div-float v4, v1, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 426
    .local v3, "l_sin":F
    div-float v4, v1, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 427
    .local v2, "l_cos":F
    mul-float v4, v0, p1

    mul-float/2addr v4, v3

    mul-float v5, v0, p2

    mul-float/2addr v5, v3

    mul-float v6, v0, p3

    mul-float/2addr v6, v3

    invoke-virtual {p0, v4, v5, v6, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v4

    goto :goto_0

    .line 424
    .end local v1    # "l_ang":F
    .end local v2    # "l_cos":F
    .end local v3    # "l_sin":F
    :cond_1
    rem-float v1, p4, v5

    goto :goto_1
.end method

.method public setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"    # F

    .prologue
    .line 401
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromCross(FFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F

    .prologue
    .line 568
    invoke-static/range {p1 .. p6}, Lcom/badlogic/gdx/math/Vector3;->dot(FFFFFF)F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 569
    .local v1, "dot":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 570
    .local v0, "angle":F
    mul-float v2, p2, p6

    mul-float v3, p3, p5

    sub-float/2addr v2, v3

    mul-float v3, p3, p4

    mul-float v4, p1, p6

    sub-float/2addr v3, v4

    mul-float v4, p1, p5

    mul-float v5, p2, p4

    sub-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    return-object v2
.end method

.method public setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "v1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v2"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 554
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 555
    .local v1, "dot":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 556
    .local v0, "angle":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    return-object v2
.end method

.method public setFromMatrix(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(ZLcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 11
    .param p1, "normalizeAxes"    # Z
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 444
    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aget v3, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v4, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v6, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v7, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aget v8, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aget v9, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aget v10, v0, v1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 11
    .param p1, "normalizeAxes"    # Z
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 432
    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v3, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v4, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v6, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v7, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v8, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v9, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v10, v0, v1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 12
    .param p1, "end"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "alpha"    # F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 579
    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v8, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v8, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v8, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 580
    .local v2, "d":F
    cmpg-float v6, v2, v11

    if-gez v6, :cond_2

    neg-float v0, v2

    .line 583
    .local v0, "absDot":F
    :goto_0
    sub-float v4, v10, p2

    .line 584
    .local v4, "scale0":F
    move v5, p2

    .line 588
    .local v5, "scale1":F
    sub-float v6, v10, v0

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 590
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 591
    .local v1, "angle":F
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v3, v10, v6

    .line 595
    .local v3, "invSinTheta":F
    sub-float v6, v10, p2

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v4, v6, v3

    .line 596
    mul-float v6, p2, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v5, v6, v3

    .line 599
    .end local v1    # "angle":F
    .end local v3    # "invSinTheta":F
    :cond_0
    cmpg-float v6, v2, v11

    if-gez v6, :cond_1

    neg-float v5, v5

    .line 603
    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v6, v4

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 604
    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v6, v4

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 605
    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v6, v4

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 606
    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v6, v4

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 609
    return-object p0

    .end local v0    # "absDot":F
    .end local v4    # "scale0":F
    .end local v5    # "scale1":F
    :cond_2
    move v0, v2

    .line 580
    goto :goto_0
.end method

.method public slerp([Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4
    .param p1, "q"    # [Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 621
    const/high16 v2, 0x3f800000    # 1.0f

    array-length v3, p1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 622
    .local v1, "w":F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    .line 623
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 624
    sget-object v2, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 626
    return-object p0
.end method

.method public slerp([Lcom/badlogic/gdx/math/Quaternion;[F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "q"    # [Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "w"    # [F

    .prologue
    const/4 v2, 0x0

    .line 640
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    .line 641
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 642
    sget-object v1, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 644
    return-object p0
.end method

.method public toMatrix([F)V
    .locals 14
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 340
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v1, v9, v10

    .line 341
    .local v1, "xx":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v2, v9, v10

    .line 342
    .local v2, "xy":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v3, v9, v10

    .line 343
    .local v3, "xz":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v0, v9, v10

    .line 344
    .local v0, "xw":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v5, v9, v10

    .line 345
    .local v5, "yy":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v6, v9, v10

    .line 346
    .local v6, "yz":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v4, v9, v10

    .line 347
    .local v4, "yw":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v8, v9, v10

    .line 348
    .local v8, "zz":F
    iget v9, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v10, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v7, v9, v10

    .line 350
    .local v7, "zw":F
    const/4 v9, 0x0

    add-float v10, v5, v8

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    .line 351
    const/4 v9, 0x4

    sub-float v10, v2, v7

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 352
    const/16 v9, 0x8

    add-float v10, v3, v4

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 353
    const/16 v9, 0xc

    aput v12, p1, v9

    .line 354
    const/4 v9, 0x1

    add-float v10, v2, v7

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 355
    const/4 v9, 0x5

    add-float v10, v1, v8

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    .line 356
    const/16 v9, 0x9

    sub-float v10, v6, v0

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 357
    const/16 v9, 0xd

    aput v12, p1, v9

    .line 358
    const/4 v9, 0x2

    sub-float v10, v3, v4

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 359
    const/4 v9, 0x6

    add-float v10, v6, v0

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 360
    const/16 v9, 0xa

    add-float v10, v1, v5

    mul-float/2addr v10, v11

    sub-float v10, v13, v10

    aput v10, p1, v9

    .line 361
    const/16 v9, 0xe

    aput v12, p1, v9

    .line 362
    const/4 v9, 0x3

    aput v12, p1, v9

    .line 363
    const/4 v9, 0x7

    aput v12, p1, v9

    .line 364
    const/16 v9, 0xb

    aput v12, p1, v9

    .line 365
    const/16 v9, 0xf

    aput v13, p1, v9

    .line 366
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 236
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 237
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 238
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 240
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 241
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 242
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 243
    return-object p1
.end method
