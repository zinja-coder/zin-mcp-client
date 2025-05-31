.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;,
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;

.field static v2tmp:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 303
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 304
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 343
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 344
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 507
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 508
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 509
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 510
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 511
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 512
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 1112
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    return-void
.end method

.method static det(FFFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 774
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method static detd(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .prologue
    .line 778
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 4
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .prologue
    .line 144
    sub-float v1, p2, p0

    sub-float v2, p2, p0

    mul-float/2addr v1, v2

    sub-float v2, p3, p1

    sub-float v3, p3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 145
    .local v0, "normalLength":F
    sub-float v1, p4, p0

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float v2, p5, p1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static distanceSegmentPoint(FFFFFF)F
    .locals 7
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .prologue
    .line 150
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v0

    return v0
.end method

.method public static distanceSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 1
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 155
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F
    .param p6, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p7, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 288
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 289
    .local v1, "direction":Lcom/badlogic/gdx/math/Vector3;
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 290
    .local v2, "origin":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 291
    .local v0, "denom":F
    cmpl-float v4, v0, v3

    if-eqz v4, :cond_1

    .line 292
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v4, v5

    neg-float v4, v4

    div-float v3, v4, v0

    .line 293
    .local v3, "t":F
    if-eqz p7, :cond_0

    invoke-virtual {p7, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 300
    .end local v3    # "t":F
    :cond_0
    :goto_0
    return v3

    .line 295
    :cond_1
    invoke-virtual {p6, v2}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v4, v5, :cond_2

    .line 296
    if-eqz p7, :cond_0

    invoke-virtual {p7, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 300
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static intersectLinePolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 19
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "polygon"    # Lcom/badlogic/gdx/math/Polygon;

    .prologue
    .line 665
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v5

    .line 666
    .local v5, "vertices":[F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x1":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v11, "y1":F
    move-object/from16 v0, p1

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x2":F
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 667
    .local v12, "y2":F
    array-length v3, v5

    .line 668
    .local v3, "n":I
    add-int/lit8 v16, v3, -0x2

    aget v8, v5, v16

    .local v8, "x3":F
    add-int/lit8 v16, v3, -0x1

    aget v13, v5, v16

    .line 669
    .local v13, "y3":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 670
    aget v9, v5, v2

    .local v9, "x4":F
    add-int/lit8 v16, v2, 0x1

    aget v14, v5, v16

    .line 671
    .local v14, "y4":F
    sub-float v16, v14, v13

    sub-float v17, v7, v6

    mul-float v16, v16, v17

    sub-float v17, v9, v8

    sub-float v18, v12, v11

    mul-float v17, v17, v18

    sub-float v1, v16, v17

    .line 672
    .local v1, "d":F
    const/16 v16, 0x0

    cmpl-float v16, v1, v16

    if-eqz v16, :cond_0

    .line 673
    sub-float v15, v11, v13

    .line 674
    .local v15, "yd":F
    sub-float v10, v6, v8

    .line 675
    .local v10, "xd":F
    sub-float v16, v9, v8

    mul-float v16, v16, v15

    sub-float v17, v14, v13

    mul-float v17, v17, v10

    sub-float v16, v16, v17

    div-float v4, v16, v1

    .line 676
    .local v4, "ua":F
    const/16 v16, 0x0

    cmpl-float v16, v4, v16

    if-ltz v16, :cond_0

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v16, v4, v16

    if-gtz v16, :cond_0

    .line 677
    const/16 v16, 0x1

    .line 683
    .end local v1    # "d":F
    .end local v4    # "ua":F
    .end local v9    # "x4":F
    .end local v10    # "xd":F
    .end local v14    # "y4":F
    .end local v15    # "yd":F
    :goto_1
    return v16

    .line 680
    .restart local v1    # "d":F
    .restart local v9    # "x4":F
    .restart local v14    # "y4":F
    :cond_0
    move v8, v9

    .line 681
    move v13, v14

    .line 669
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 683
    .end local v1    # "d":F
    .end local v9    # "x4":F
    .end local v14    # "y4":F
    :cond_1
    const/16 v16, 0x0

    goto :goto_1
.end method

.method public static intersectLines(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "x4"    # F
    .param p7, "y4"    # F
    .param p8, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 649
    sub-float v2, p7, p5

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    sub-float v3, p6, p4

    sub-float v4, p3, p1

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 650
    .local v0, "d":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 656
    :goto_0
    return v2

    .line 652
    :cond_0
    if-eqz p8, :cond_1

    .line 653
    sub-float v2, p6, p4

    sub-float v3, p1, p5

    mul-float/2addr v2, v3

    sub-float v3, p7, p5

    sub-float v4, p0, p4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float v1, v2, v0

    .line 654
    .local v1, "ua":F
    sub-float v2, p2, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, p0

    sub-float v3, p3, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    invoke-virtual {p8, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 656
    .end local v1    # "ua":F
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 14
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 632
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v3, "x1":F
    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v7, "y1":F
    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v4, "x2":F
    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y2":F
    move-object/from16 v0, p2

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x3":F
    move-object/from16 v0, p2

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v9, "y3":F
    move-object/from16 v0, p3

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x4":F
    move-object/from16 v0, p3

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 634
    .local v10, "y4":F
    sub-float v11, v10, v9

    sub-float v12, v4, v3

    mul-float/2addr v11, v12

    sub-float v12, v6, v5

    sub-float v13, v8, v7

    mul-float/2addr v12, v13

    sub-float v1, v11, v12

    .line 635
    .local v1, "d":F
    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    .line 641
    :goto_0
    return v11

    .line 637
    :cond_0
    if-eqz p4, :cond_1

    .line 638
    sub-float v11, v6, v5

    sub-float v12, v7, v9

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, v3, v5

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    div-float v2, v11, v1

    .line 639
    .local v2, "ua":F
    sub-float v11, v4, v3

    mul-float/2addr v11, v2

    add-float/2addr v11, v3

    sub-float v12, v8, v7

    mul-float/2addr v12, v2

    add-float/2addr v12, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 641
    .end local v2    # "ua":F
    :cond_1
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v5, 0x0

    .line 372
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 373
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 374
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 375
    const/4 v0, 0x1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    const/4 v1, 0x0

    .line 378
    .local v1, "lowest":F
    const/4 v0, 0x0

    .line 381
    .local v0, "hit":Z
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 382
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v2, v3, v4

    .line 383
    .local v2, "t":F
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_3

    .line 384
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 385
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    if-eqz v0, :cond_2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_3

    .line 386
    :cond_2
    const/4 v0, 0x1

    .line 387
    move v1, v2

    .line 392
    .end local v2    # "t":F
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    .line 393
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v2, v3, v4

    .line 394
    .restart local v2    # "t":F
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_5

    .line 395
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 396
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    if-eqz v0, :cond_4

    cmpg-float v3, v2, v1

    if-gez v3, :cond_5

    .line 397
    :cond_4
    const/4 v0, 0x1

    .line 398
    move v1, v2

    .line 403
    .end local v2    # "t":F
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 404
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v3, v4

    .line 405
    .restart local v2    # "t":F
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_7

    .line 406
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 407
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_7

    if-eqz v0, :cond_6

    cmpg-float v3, v2, v1

    if-gez v3, :cond_7

    .line 408
    :cond_6
    const/4 v0, 0x1

    .line 409
    move v1, v2

    .line 414
    .end local v2    # "t":F
    :cond_7
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    .line 415
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v3, v4

    .line 416
    .restart local v2    # "t":F
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_9

    .line 417
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 418
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_9

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_9

    if-eqz v0, :cond_8

    cmpg-float v3, v2, v1

    if-gez v3, :cond_9

    .line 419
    :cond_8
    const/4 v0, 0x1

    .line 420
    move v1, v2

    .line 425
    .end local v2    # "t":F
    :cond_9
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    .line 426
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v2, v3, v4

    .line 427
    .restart local v2    # "t":F
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_b

    .line 428
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 429
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_b

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    if-eqz v0, :cond_a

    cmpg-float v3, v2, v1

    if-gez v3, :cond_b

    .line 430
    :cond_a
    const/4 v0, 0x1

    .line 431
    move v1, v2

    .line 436
    .end local v2    # "t":F
    :cond_b
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_d

    .line 437
    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v2, v3, v4

    .line 438
    .restart local v2    # "t":F
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_d

    .line 439
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 440
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_d

    if-eqz v0, :cond_c

    cmpg-float v3, v2, v1

    if-gez v3, :cond_d

    .line 441
    :cond_c
    const/4 v0, 0x1

    .line 442
    move v1, v2

    .line 446
    .end local v2    # "t":F
    :cond_d
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 447
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto/16 :goto_0
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 16
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "dimensions"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 473
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v1, v13, v14

    .line 474
    .local v1, "divX":F
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v13, v14

    .line 475
    .local v2, "divY":F
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v3, v13, v14

    .line 477
    .local v3, "divZ":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v13, v14

    mul-float v9, v13, v1

    .line 478
    .local v9, "minx":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v13, v14

    mul-float v5, v13, v1

    .line 479
    .local v5, "maxx":F
    cmpl-float v13, v9, v5

    if-lez v13, :cond_0

    .line 480
    move v12, v9

    .line 481
    .local v12, "t":F
    move v9, v5

    .line 482
    move v5, v12

    .line 485
    .end local v12    # "t":F
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    mul-float v10, v13, v2

    .line 486
    .local v10, "miny":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v13, v14

    mul-float v6, v13, v2

    .line 487
    .local v6, "maxy":F
    cmpl-float v13, v10, v6

    if-lez v13, :cond_1

    .line 488
    move v12, v10

    .line 489
    .restart local v12    # "t":F
    move v10, v6

    .line 490
    move v6, v12

    .line 493
    .end local v12    # "t":F
    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v13, v14

    mul-float v11, v13, v3

    .line 494
    .local v11, "minz":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object/from16 v0, p2

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v13, v14

    mul-float v7, v13, v3

    .line 495
    .local v7, "maxz":F
    cmpl-float v13, v11, v7

    if-lez v13, :cond_2

    .line 496
    move v12, v11

    .line 497
    .restart local v12    # "t":F
    move v11, v7

    .line 498
    move v7, v12

    .line 501
    .end local v12    # "t":F
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 502
    .local v8, "min":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 504
    .local v4, "max":F
    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_3

    cmpl-float v13, v4, v8

    if-ltz v13, :cond_3

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_3
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 2
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 463
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 262
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 263
    .local v0, "denom":F
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_3

    .line 264
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v4, v5

    neg-float v4, v4

    div-float v1, v4, v0

    .line 265
    .local v1, "t":F
    cmpg-float v4, v1, v6

    if-gez v4, :cond_1

    .line 273
    .end local v1    # "t":F
    :cond_0
    :goto_0
    return v2

    .line 267
    .restart local v1    # "t":F
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    move v2, v3

    .line 268
    goto :goto_0

    .line 269
    .end local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v4, v5, :cond_0

    .line 270
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public static intersectRayRay(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 8
    .param p0, "start1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "direction1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "start2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "direction2"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 243
    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v3, v5, v6

    .line 244
    .local v3, "difx":F
    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v5, v6

    .line 245
    .local v4, "dify":F
    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 246
    .local v0, "d1xd2":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_0

    .line 247
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 251
    :goto_0
    return v5

    .line 249
    :cond_0
    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v1, v5, v0

    .line 250
    .local v1, "d2sx":F
    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v2, v5, v0

    .line 251
    .local v2, "d2sy":F
    mul-float v5, v3, v2

    mul-float v6, v4, v1

    sub-float/2addr v5, v6

    goto :goto_0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v1

    .line 355
    .local v1, "len":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v3

    .line 357
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    invoke-virtual {p1, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result v0

    .line 359
    .local v0, "dst2":F
    mul-float v2, p2, p2

    .line 360
    .local v2, "r2":F
    cmpl-float v4, v0, v2

    if-gtz v4, :cond_0

    .line 361
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sub-float v4, v2, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 362
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 10
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 315
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v8, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 316
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v8, v9}, Lcom/badlogic/gdx/math/Intersector;->intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 338
    :goto_0
    return v8

    .line 318
    :cond_0
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 319
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 320
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 322
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 323
    .local v1, "dot00":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 324
    .local v2, "dot01":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 325
    .local v3, "dot02":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 326
    .local v4, "dot11":F
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v5

    .line 328
    .local v5, "dot12":F
    mul-float v8, v1, v4

    mul-float v9, v2, v2

    sub-float v0, v8, v9

    .line 329
    .local v0, "denom":F
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 331
    :cond_1
    mul-float v8, v4, v3

    mul-float v9, v2, v5

    sub-float/2addr v8, v9

    div-float v6, v8, v0

    .line 332
    .local v6, "u":F
    mul-float v8, v1, v5

    mul-float v9, v2, v3

    sub-float/2addr v8, v9

    div-float v7, v8, v0

    .line 334
    .local v7, "v":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_3

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_3

    add-float v8, v6, v7

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 335
    if-eqz p4, :cond_2

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 336
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 338
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 10
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "triangles":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    const/4 v8, 0x1

    .line 597
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 598
    .local v3, "min_dist":F
    const/4 v1, 0x0

    .line 600
    .local v1, "hit":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 602
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_2

    .line 603
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector3;

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v5, v6, v7, v9}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    .line 605
    .local v4, "result":Z
    if-ne v4, v8, :cond_1

    .line 606
    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 607
    .local v0, "dist":F
    cmpg-float v5, v0, v3

    if-gez v5, :cond_1

    .line 608
    move v3, v0

    .line 609
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 610
    const/4 v1, 0x1

    .line 602
    .end local v0    # "dist":F
    :cond_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 615
    .end local v4    # "result":Z
    :cond_2
    if-nez v1, :cond_3

    .line 616
    const/4 v5, 0x0

    .line 619
    :goto_1
    return v5

    .line 618
    :cond_3
    if-eqz p2, :cond_4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_4
    move v5, v8

    .line 619
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 12
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "triangles"    # [F
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v5, 0x1

    .line 521
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 522
    .local v3, "min_dist":F
    const/4 v1, 0x0

    .line 524
    .local v1, "hit":Z
    array-length v6, p1

    div-int/lit8 v6, v6, 0x3

    rem-int/lit8 v6, v6, 0x3

    if-eqz v6, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 526
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x6

    if-ge v2, v6, :cond_2

    .line 527
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v7, p1, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x2

    aget v9, p1, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v2, 0x3

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x4

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x5

    aget v10, p1, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v9, v2, 0x6

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x7

    aget v10, p1, v10

    add-int/lit8 v11, v2, 0x8

    aget v11, p1, v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    .line 531
    .local v4, "result":Z
    if-ne v4, v5, :cond_1

    .line 532
    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 533
    .local v0, "dist":F
    cmpg-float v6, v0, v3

    if-gez v6, :cond_1

    .line 534
    move v3, v0

    .line 535
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 536
    const/4 v1, 0x1

    .line 526
    .end local v0    # "dist":F
    :cond_1
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    .line 541
    .end local v4    # "result":Z
    :cond_2
    if-nez v1, :cond_4

    .line 542
    const/4 v5, 0x0

    .line 545
    :cond_3
    :goto_1
    return v5

    .line 544
    :cond_4
    if-eqz p2, :cond_3

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 15
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "vertices"    # [F
    .param p2, "indices"    # [S
    .param p3, "vertexSize"    # I
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 558
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 559
    .local v7, "min_dist":F
    const/4 v2, 0x0

    .line 561
    .local v2, "hit":Z
    move-object/from16 v0, p2

    array-length v9, v0

    rem-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "triangle list size is not a multiple of 3"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 563
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v9, v0

    if-ge v3, v9, :cond_2

    .line 564
    aget-short v9, p2, v3

    mul-int v4, v9, p3

    .line 565
    .local v4, "i1":I
    add-int/lit8 v9, v3, 0x1

    aget-short v9, p2, v9

    mul-int v5, v9, p3

    .line 566
    .local v5, "i2":I
    add-int/lit8 v9, v3, 0x2

    aget-short v9, p2, v9

    mul-int v6, v9, p3

    .line 568
    .local v6, "i3":I
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v10, p1, v4

    add-int/lit8 v11, v4, 0x1

    aget v11, p1, v11

    add-int/lit8 v12, v4, 0x2

    aget v12, p1, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v11, p1, v5

    add-int/lit8 v12, v5, 0x1

    aget v12, p1, v12

    add-int/lit8 v13, v5, 0x2

    aget v13, p1, v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v12, p1, v6

    add-int/lit8 v13, v6, 0x1

    aget v13, p1, v13

    add-int/lit8 v14, v6, 0x2

    aget v14, p1, v14

    invoke-virtual {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v8

    .line 572
    .local v8, "result":Z
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 573
    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 574
    .local v1, "dist":F
    cmpg-float v9, v1, v7

    if-gez v9, :cond_1

    .line 575
    move v7, v1

    .line 576
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 577
    const/4 v2, 0x1

    .line 563
    .end local v1    # "dist":F
    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 582
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    .end local v6    # "i3":I
    .end local v8    # "result":Z
    :cond_2
    if-nez v2, :cond_3

    .line 583
    const/4 v9, 0x0

    .line 586
    :goto_1
    return v9

    .line 585
    :cond_3
    if-eqz p4, :cond_4

    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 586
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p0, "rectangle1"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "rectangle2"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 693
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 694
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 695
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 696
    const/4 v0, 0x1

    .line 698
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 9
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "squareRadius"    # F

    .prologue
    const/4 v8, 0x0

    .line 188
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 189
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 190
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 191
    .local v0, "l":F
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 192
    .local v1, "u":F
    cmpg-float v4, v1, v8

    if-gtz v4, :cond_0

    .line 193
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 201
    :goto_0
    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v2, v4, v5

    .line 202
    .local v2, "x":F
    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v3, v4, v5

    .line 204
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 194
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    cmpl-float v4, v1, v0

    if-ltz v4, :cond_1

    .line 195
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 197
    :cond_1
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 198
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 204
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static intersectSegmentCircleDisplace(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)F
    .locals 8
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "radius"    # F
    .param p4, "displacement"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v7, 0x0

    .line 218
    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 219
    .local v1, "u":F
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 220
    .local v0, "d":F
    mul-float v3, v0, v0

    div-float/2addr v1, v3

    .line 221
    cmpg-float v3, v1, v7

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v2

    .line 222
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 223
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 224
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result v0

    .line 225
    cmpg-float v3, v0, p3

    if-gez v3, :cond_0

    .line 226
    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move v2, v0

    .line 227
    goto :goto_0
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 5
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 82
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 83
    .local v1, "dir":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 84
    .local v0, "denom":F
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    div-float v2, v3, v0

    .line 85
    .local v2, "t":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 88
    :goto_0
    return v3

    .line 87
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 88
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 20
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "polygon"    # Lcom/badlogic/gdx/math/Polygon;

    .prologue
    .line 706
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v6

    .line 707
    .local v6, "vertices":[F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x1":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v12, "y1":F
    move-object/from16 v0, p1

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v8, "x2":F
    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 708
    .local v13, "y2":F
    array-length v3, v6

    .line 709
    .local v3, "n":I
    add-int/lit8 v17, v3, -0x2

    aget v9, v6, v17

    .local v9, "x3":F
    add-int/lit8 v17, v3, -0x1

    aget v14, v6, v17

    .line 710
    .local v14, "y3":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 711
    aget v10, v6, v2

    .local v10, "x4":F
    add-int/lit8 v17, v2, 0x1

    aget v15, v6, v17

    .line 712
    .local v15, "y4":F
    sub-float v17, v15, v14

    sub-float v18, v8, v7

    mul-float v17, v17, v18

    sub-float v18, v10, v9

    sub-float v19, v13, v12

    mul-float v18, v18, v19

    sub-float v1, v17, v18

    .line 713
    .local v1, "d":F
    const/16 v17, 0x0

    cmpl-float v17, v1, v17

    if-eqz v17, :cond_0

    .line 714
    sub-float v16, v12, v14

    .line 715
    .local v16, "yd":F
    sub-float v11, v7, v9

    .line 716
    .local v11, "xd":F
    sub-float v17, v10, v9

    mul-float v17, v17, v16

    sub-float v18, v15, v14

    mul-float v18, v18, v11

    sub-float v17, v17, v18

    div-float v4, v17, v1

    .line 717
    .local v4, "ua":F
    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-ltz v17, :cond_0

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v4, v17

    if-gtz v17, :cond_0

    .line 718
    sub-float v17, v8, v7

    mul-float v17, v17, v16

    sub-float v18, v13, v12

    mul-float v18, v18, v11

    sub-float v17, v17, v18

    div-float v5, v17, v1

    .line 719
    .local v5, "ub":F
    const/16 v17, 0x0

    cmpl-float v17, v5, v17

    if-ltz v17, :cond_0

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v5, v17

    if-gtz v17, :cond_0

    .line 720
    const/16 v17, 0x1

    .line 727
    .end local v1    # "d":F
    .end local v4    # "ua":F
    .end local v5    # "ub":F
    .end local v10    # "x4":F
    .end local v11    # "xd":F
    .end local v15    # "y4":F
    .end local v16    # "yd":F
    :goto_1
    return v17

    .line 724
    .restart local v1    # "d":F
    .restart local v10    # "x4":F
    .restart local v15    # "y4":F
    :cond_0
    move v9, v10

    .line 725
    move v14, v15

    .line 710
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 727
    .end local v1    # "d":F
    .end local v10    # "x4":F
    .end local v15    # "y4":F
    :cond_1
    const/16 v17, 0x0

    goto :goto_1
.end method

.method public static intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 9
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "x4"    # F
    .param p7, "y4"    # F
    .param p8, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 758
    sub-float v6, p7, p5

    sub-float v7, p2, p0

    mul-float/2addr v6, v7

    sub-float v7, p6, p4

    sub-float v8, p3, p1

    mul-float/2addr v7, v8

    sub-float v1, v6, v7

    .line 759
    .local v1, "d":F
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 770
    :goto_0
    return v6

    .line 761
    :cond_0
    sub-float v5, p1, p5

    .line 762
    .local v5, "yd":F
    sub-float v4, p0, p4

    .line 763
    .local v4, "xd":F
    sub-float v6, p6, p4

    mul-float/2addr v6, v5

    sub-float v7, p7, p5

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    div-float v2, v6, v1

    .line 764
    .local v2, "ua":F
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 766
    :cond_2
    sub-float v6, p2, p0

    mul-float/2addr v6, v5

    sub-float v7, p3, p1

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    div-float v3, v6, v1

    .line 767
    .local v3, "ub":F
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 769
    :cond_4
    if-eqz p8, :cond_5

    sub-float v6, p2, p0

    mul-float/2addr v6, v2

    add-float/2addr v6, p0

    sub-float v7, p3, p1

    mul-float/2addr v7, v2

    add-float/2addr v7, p1

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 770
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 17
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 739
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v4, "x1":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v9, "y1":F
    move-object/from16 v0, p1

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    move-object/from16 v0, p1

    iget v10, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y2":F
    move-object/from16 v0, p2

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v6, "x3":F
    move-object/from16 v0, p2

    iget v11, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v11, "y3":F
    move-object/from16 v0, p3

    iget v7, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x4":F
    move-object/from16 v0, p3

    iget v12, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 741
    .local v12, "y4":F
    sub-float v14, v12, v11

    sub-float v15, v5, v4

    mul-float/2addr v14, v15

    sub-float v15, v7, v6

    sub-float v16, v10, v9

    mul-float v15, v15, v16

    sub-float v1, v14, v15

    .line 742
    .local v1, "d":F
    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    .line 753
    :goto_0
    return v14

    .line 744
    :cond_0
    sub-float v13, v9, v11

    .line 745
    .local v13, "yd":F
    sub-float v8, v4, v6

    .line 746
    .local v8, "xd":F
    sub-float v14, v7, v6

    mul-float/2addr v14, v13

    sub-float v15, v12, v11

    mul-float/2addr v15, v8

    sub-float/2addr v14, v15

    div-float v2, v14, v1

    .line 747
    .local v2, "ua":F
    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-ltz v14, :cond_1

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v2, v14

    if-lez v14, :cond_2

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 749
    :cond_2
    sub-float v14, v5, v4

    mul-float/2addr v14, v13

    sub-float v15, v10, v9

    mul-float/2addr v15, v8

    sub-float/2addr v14, v15

    div-float v3, v14, v1

    .line 750
    .local v3, "ub":F
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-ltz v14, :cond_3

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v3, v14

    if-lez v14, :cond_4

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 752
    :cond_4
    if-eqz p4, :cond_5

    sub-float v14, v5, v4

    mul-float/2addr v14, v2

    add-float/2addr v14, v4

    sub-float v15, v10, v9

    mul-float/2addr v15, v2

    add-float/2addr v15, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 753
    :cond_5
    const/4 v14, 0x1

    goto :goto_0
.end method

.method public static isPointInPolygon(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "polygon":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    .line 111
    .local v1, "lastVertice":Lcom/badlogic/gdx/math/Vector2;
    const/4 v2, 0x0

    .line 112
    .local v2, "oddNodes":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v4, :cond_4

    .line 113
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector2;

    .line 114
    .local v3, "vertice":Lcom/badlogic/gdx/math/Vector2;
    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_0
    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 115
    :cond_1
    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 116
    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 119
    :cond_2
    :goto_1
    move-object v1, v3

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 121
    .end local v3    # "vertice":Lcom/badlogic/gdx/math/Vector2;
    :cond_4
    return v2
.end method

.method public static isPointInPolygon([FIIFF)Z
    .locals 9
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "oddNodes":Z
    add-int v7, p1, p2

    add-int/lit8 v1, v7, -0x2

    .line 130
    .local v1, "j":I
    move v0, p1

    .local v0, "i":I
    move v2, v1

    .local v2, "n":I
    :goto_0
    if-gt v0, v2, :cond_4

    .line 131
    add-int/lit8 v7, v0, 0x1

    aget v5, p0, v7

    .line 132
    .local v5, "yi":F
    add-int/lit8 v7, v1, 0x1

    aget v6, p0, v7

    .line 133
    .local v6, "yj":F
    cmpg-float v7, v5, p4

    if-gez v7, :cond_0

    cmpl-float v7, v6, p4

    if-gez v7, :cond_1

    :cond_0
    cmpg-float v7, v6, p4

    if-gez v7, :cond_2

    cmpl-float v7, v5, p4

    if-ltz v7, :cond_2

    .line 134
    :cond_1
    aget v4, p0, v0

    .line 135
    .local v4, "xi":F
    sub-float v7, p4, v5

    sub-float v8, v6, v5

    div-float/2addr v7, v8

    aget v8, p0, v1

    sub-float/2addr v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    cmpg-float v7, v7, p3

    if-gez v7, :cond_2

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 137
    .end local v4    # "xi":F
    :cond_2
    :goto_1
    move v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 135
    .restart local v4    # "xi":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 139
    .end local v4    # "xi":F
    .end local v5    # "yi":F
    .end local v6    # "yj":F
    :cond_4
    return v3
.end method

.method public static isPointInTriangle(FFFFFFFF)Z
    .locals 6
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "cx"    # F
    .param p7, "cy"    # F

    .prologue
    .line 73
    sub-float v0, p0, p2

    .line 74
    .local v0, "px1":F
    sub-float v1, p1, p3

    .line 75
    .local v1, "py1":F
    sub-float v3, p4, p2

    mul-float/2addr v3, v1

    sub-float v4, p5, p3

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 76
    .local v2, "side12":Z
    :goto_0
    sub-float v3, p6, p2

    mul-float/2addr v3, v1

    sub-float v4, p7, p3

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    .line 78
    :goto_2
    return v3

    .line 75
    .end local v2    # "side12":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    .restart local v2    # "side12":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 77
    :cond_2
    sub-float v3, p6, p4

    sub-float v4, p1, p5

    mul-float/2addr v3, v4

    sub-float v4, p7, p5

    sub-float v5, p0, p4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    if-eq v3, v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 78
    :cond_4
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 10
    .param p0, "p"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v5, v6

    .line 64
    .local v0, "px1":F
    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v5, v6

    .line 65
    .local v1, "py1":F
    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1

    move v2, v3

    .line 66
    .local v2, "side12":Z
    :goto_0
    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_2

    move v5, v3

    :goto_1
    if-ne v5, v2, :cond_3

    .line 68
    :cond_0
    :goto_2
    return v4

    .end local v2    # "side12":Z
    :cond_1
    move v2, v4

    .line 65
    goto :goto_0

    .restart local v2    # "side12":Z
    :cond_2
    move v5, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v9

    if-lez v5, :cond_4

    move v5, v3

    :goto_3
    if-ne v5, v2, :cond_0

    move v4, v3

    .line 68
    goto :goto_2

    :cond_4
    move v5, v4

    .line 67
    goto :goto_3
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 46
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 47
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 48
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 51
    .local v0, "ab":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 52
    .local v1, "ac":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 53
    .local v3, "bc":F
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 55
    .local v4, "cc":F
    mul-float v6, v3, v1

    mul-float v7, v4, v0

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-gez v6, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v5

    .line 56
    :cond_1
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 57
    .local v2, "bb":F
    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_0

    .line 58
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 1128
    new-instance v7, Lcom/badlogic/gdx/math/Plane;

    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    const/4 v13, 0x0

    invoke-direct {v7, v12, v13}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 1129
    .local v7, "plane":Lcom/badlogic/gdx/math/Plane;
    new-instance v10, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    const/4 v12, 0x3

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;-><init>(I)V

    .line 1130
    .local v10, "split":Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    const/16 v12, 0x9

    new-array v6, v12, [F

    fill-array-data v6, :array_0

    .line 1131
    .local v6, "fTriangle":[F
    invoke-static {v6, v7, v10}, Lcom/badlogic/gdx/math/Intersector;->splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V

    .line 1132
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1134
    const/16 v12, 0x9

    new-array v11, v12, [F

    fill-array-data v11, :array_1

    .line 1135
    .local v11, "triangle":[F
    invoke-static {v11, v7, v10}, Lcom/badlogic/gdx/math/Intersector;->splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V

    .line 1136
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1138
    new-instance v2, Lcom/badlogic/gdx/math/Circle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v13, v14}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 1139
    .local v2, "c1":Lcom/badlogic/gdx/math/Circle;
    new-instance v3, Lcom/badlogic/gdx/math/Circle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v3, v12, v13, v14}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 1140
    .local v3, "c2":Lcom/badlogic/gdx/math/Circle;
    new-instance v4, Lcom/badlogic/gdx/math/Circle;

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v4, v12, v13, v14}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 1141
    .local v4, "c3":Lcom/badlogic/gdx/math/Circle;
    new-instance v5, Lcom/badlogic/gdx/math/Circle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v5, v12, v13, v14}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 1142
    .local v5, "c4":Lcom/badlogic/gdx/math/Circle;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Circle test cases"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1143
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v2}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1144
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1145
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1146
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1147
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1148
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v2, v13, v14}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1149
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v2, v13, v14}, Lcom/badlogic/gdx/math/Circle;->contains(FF)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1150
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v2}, Lcom/badlogic/gdx/math/Circle;->contains(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1151
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Circle;->contains(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1152
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Circle;->contains(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1154
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "Rectangle test cases"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v8, Lcom/badlogic/gdx/math/Rectangle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v8, v12, v13, v14, v15}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 1156
    .local v8, "r1":Lcom/badlogic/gdx/math/Rectangle;
    new-instance v9, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 1157
    .local v9, "r2":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v8}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1158
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1159
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1161
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "BoundingBox test cases"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    sget-object v12, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    new-instance v13, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-direct {v0, v12, v13}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 1163
    .local v0, "b1":Lcom/badlogic/gdx/math/collision/BoundingBox;
    new-instance v1, Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14, v15}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v13, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x40000000    # 2.0f

    const/high16 v16, 0x40000000    # 2.0f

    invoke-direct/range {v13 .. v16}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-direct {v1, v12, v13}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 1164
    .local v1, "b2":Lcom/badlogic/gdx/math/collision/BoundingBox;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v13, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1165
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1166
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Z)V

    .line 1169
    return-void

    .line 1130
    :array_0
    .array-data 4
        -0x3ee00000    # -10.0f
        0x0
        0x41200000    # 10.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x3ee00000    # -10.0f
        0x0
        0x41200000    # 10.0f
    .end array-data

    .line 1134
    :array_1
    .array-data 4
        -0x3ee00000    # -10.0f
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        -0x3ee00000    # -10.0f
        0x0
        -0x3ee00000    # -10.0f
    .end array-data
.end method

.method public static nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 8
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F
    .param p6, "nearest"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v7, 0x0

    .line 171
    sub-float v2, p2, p0

    .line 172
    .local v2, "xDiff":F
    sub-float v3, p3, p1

    .line 173
    .local v3, "yDiff":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float v0, v4, v5

    .line 174
    .local v0, "length2":F
    cmpl-float v4, v0, v7

    if-nez v4, :cond_0

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    .line 178
    :goto_0
    return-object v4

    .line 175
    :cond_0
    sub-float v4, p4, p0

    sub-float v5, p2, p0

    mul-float/2addr v4, v5

    sub-float v5, p5, p1

    sub-float v6, p3, p1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float v1, v4, v0

    .line 176
    .local v1, "t":F
    cmpg-float v4, v1, v7

    if-gez v4, :cond_1

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    invoke-virtual {p6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    goto :goto_0

    .line 178
    :cond_2
    sub-float v4, p2, p0

    mul-float/2addr v4, v1

    add-float/2addr v4, p0

    sub-float v5, p3, p1

    mul-float/2addr v5, v1

    add-float/2addr v5, p1

    invoke-virtual {p6, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    goto :goto_0
.end method

.method public static nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 7
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "nearest"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 161
    .local v0, "length2":F
    cmpl-float v2, v0, v6

    if-nez v2, :cond_0

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 165
    :goto_0
    return-object v2

    .line 162
    :cond_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    div-float v1, v2, v0

    .line 163
    .local v1, "t":F
    cmpg-float v2, v1, v6

    if-gez v2, :cond_1

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    goto :goto_0

    .line 164
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p3, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    goto :goto_0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 2
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;
    .param p2, "mtv"    # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 27
    .param p0, "verts1"    # [F
    .param p1, "offset1"    # I
    .param p2, "count1"    # I
    .param p3, "verts2"    # [F
    .param p4, "offset2"    # I
    .param p5, "count2"    # I
    .param p6, "mtv"    # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .prologue
    .line 847
    const v23, 0x7f7fffff    # Float.MAX_VALUE

    .line 848
    .local v23, "overlap":F
    const/16 v25, 0x0

    .line 849
    .local v25, "smallestAxisX":F
    const/16 v26, 0x0

    .line 852
    .local v26, "smallestAxisY":F
    add-int v10, p1, p2

    .line 853
    .local v10, "end1":I
    add-int v11, p4, p5

    .line 856
    .local v11, "end2":I
    move/from16 v12, p1

    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_10

    .line 857
    aget v2, p0, v12

    .line 858
    .local v2, "x1":F
    add-int/lit8 v6, v12, 0x1

    aget v3, p0, v6

    .line 859
    .local v3, "y1":F
    add-int/lit8 v6, v12, 0x2

    rem-int v6, v6, p2

    aget v4, p0, v6

    .line 860
    .local v4, "x2":F
    add-int/lit8 v6, v12, 0x3

    rem-int v6, v6, p2

    aget v5, p0, v6

    .line 862
    .local v5, "y2":F
    sub-float v8, v3, v5

    .line 863
    .local v8, "axisX":F
    sub-float v6, v2, v4

    neg-float v9, v6

    .line 865
    .local v9, "axisY":F
    mul-float v6, v8, v8

    mul-float v7, v9, v9

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v14, v6

    .line 866
    .local v14, "length":F
    div-float/2addr v8, v14

    .line 867
    div-float/2addr v9, v14

    .line 872
    const/4 v6, 0x0

    aget v6, p0, v6

    mul-float/2addr v6, v8

    const/4 v7, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v9

    add-float v18, v6, v7

    .line 873
    .local v18, "min1":F
    move/from16 v15, v18

    .line 874
    .local v15, "max1":F
    move/from16 v13, p1

    .local v13, "j":I
    :goto_1
    if-ge v13, v10, :cond_2

    .line 875
    aget v6, p0, v13

    mul-float/2addr v6, v8

    add-int/lit8 v7, v13, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v9

    add-float v24, v6, v7

    .line 876
    .local v24, "p":F
    cmpg-float v6, v24, v18

    if-gez v6, :cond_1

    .line 877
    move/from16 v18, v24

    .line 874
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 878
    :cond_1
    cmpl-float v6, v24, v15

    if-lez v6, :cond_0

    .line 879
    move/from16 v15, v24

    goto :goto_2

    .line 884
    .end local v24    # "p":F
    :cond_2
    const/16 v21, 0x0

    .line 885
    .local v21, "numInNormalDir":I
    const/4 v6, 0x0

    aget v6, p3, v6

    mul-float/2addr v6, v8

    const/4 v7, 0x1

    aget v7, p3, v7

    mul-float/2addr v7, v9

    add-float v19, v6, v7

    .line 886
    .local v19, "min2":F
    move/from16 v16, v19

    .line 887
    .local v16, "max2":F
    move/from16 v13, p4

    :goto_3
    if-ge v13, v11, :cond_5

    .line 889
    aget v6, p3, v13

    add-int/lit8 v7, v13, 0x1

    aget v7, p3, v7

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(FFFFFF)I

    move-result v6

    sub-int v21, v21, v6

    .line 890
    aget v6, p3, v13

    mul-float/2addr v6, v8

    add-int/lit8 v7, v13, 0x1

    aget v7, p3, v7

    mul-float/2addr v7, v9

    add-float v24, v6, v7

    .line 891
    .restart local v24    # "p":F
    cmpg-float v6, v24, v19

    if-gez v6, :cond_4

    .line 892
    move/from16 v19, v24

    .line 887
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x2

    goto :goto_3

    .line 893
    :cond_4
    cmpl-float v6, v24, v16

    if-lez v6, :cond_3

    .line 894
    move/from16 v16, v24

    goto :goto_4

    .line 898
    .end local v24    # "p":F
    :cond_5
    cmpg-float v6, v18, v19

    if-gtz v6, :cond_6

    cmpl-float v6, v15, v19

    if-gez v6, :cond_8

    :cond_6
    cmpg-float v6, v19, v18

    if-gtz v6, :cond_7

    cmpl-float v6, v16, v18

    if-gez v6, :cond_8

    .line 899
    :cond_7
    const/4 v6, 0x0

    .line 992
    .end local v2    # "x1":F
    .end local v3    # "y1":F
    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .end local v8    # "axisX":F
    .end local v9    # "axisY":F
    .end local v13    # "j":I
    .end local v14    # "length":F
    .end local v15    # "max1":F
    .end local v16    # "max2":F
    .end local v18    # "min1":F
    .end local v19    # "min2":F
    .end local v21    # "numInNormalDir":I
    :goto_5
    return v6

    .line 901
    .restart local v2    # "x1":F
    .restart local v3    # "y1":F
    .restart local v4    # "x2":F
    .restart local v5    # "y2":F
    .restart local v8    # "axisX":F
    .restart local v9    # "axisY":F
    .restart local v13    # "j":I
    .restart local v14    # "length":F
    .restart local v15    # "max1":F
    .restart local v16    # "max2":F
    .restart local v18    # "min1":F
    .restart local v19    # "min2":F
    .restart local v21    # "numInNormalDir":I
    :cond_8
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v22, v6, v7

    .line 902
    .local v22, "o":F
    cmpg-float v6, v18, v19

    if-gez v6, :cond_9

    cmpl-float v6, v15, v16

    if-gtz v6, :cond_a

    :cond_9
    cmpg-float v6, v19, v18

    if-gez v6, :cond_b

    cmpl-float v6, v16, v15

    if-lez v6, :cond_b

    .line 903
    :cond_a
    sub-float v6, v18, v19

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 904
    .local v20, "mins":F
    sub-float v6, v15, v16

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 905
    .local v17, "maxs":F
    cmpg-float v6, v20, v17

    if-gez v6, :cond_d

    .line 906
    add-float v22, v22, v20

    .line 911
    .end local v17    # "maxs":F
    .end local v20    # "mins":F
    :cond_b
    :goto_6
    cmpg-float v6, v22, v23

    if-gez v6, :cond_c

    .line 912
    move/from16 v23, v22

    .line 914
    if-ltz v21, :cond_e

    move/from16 v25, v8

    .line 915
    :goto_7
    if-ltz v21, :cond_f

    move/from16 v26, v9

    .line 856
    :cond_c
    :goto_8
    add-int/lit8 v12, v12, 0x2

    goto/16 :goto_0

    .line 908
    .restart local v17    # "maxs":F
    .restart local v20    # "mins":F
    :cond_d
    add-float v22, v22, v17

    goto :goto_6

    .line 914
    .end local v17    # "maxs":F
    .end local v20    # "mins":F
    :cond_e
    neg-float v0, v8

    move/from16 v25, v0

    goto :goto_7

    .line 915
    :cond_f
    neg-float v0, v9

    move/from16 v26, v0

    goto :goto_8

    .line 922
    .end local v2    # "x1":F
    .end local v3    # "y1":F
    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .end local v8    # "axisX":F
    .end local v9    # "axisY":F
    .end local v13    # "j":I
    .end local v14    # "length":F
    .end local v15    # "max1":F
    .end local v16    # "max2":F
    .end local v18    # "min1":F
    .end local v19    # "min2":F
    .end local v21    # "numInNormalDir":I
    .end local v22    # "o":F
    :cond_10
    move/from16 v12, p4

    :goto_9
    if-ge v12, v11, :cond_21

    .line 923
    aget v2, p3, v12

    .line 924
    .restart local v2    # "x1":F
    add-int/lit8 v6, v12, 0x1

    aget v3, p3, v6

    .line 925
    .restart local v3    # "y1":F
    add-int/lit8 v6, v12, 0x2

    rem-int v6, v6, p5

    aget v4, p3, v6

    .line 926
    .restart local v4    # "x2":F
    add-int/lit8 v6, v12, 0x3

    rem-int v6, v6, p5

    aget v5, p3, v6

    .line 928
    .restart local v5    # "y2":F
    sub-float v8, v3, v5

    .line 929
    .restart local v8    # "axisX":F
    sub-float v6, v2, v4

    neg-float v9, v6

    .line 931
    .restart local v9    # "axisY":F
    mul-float v6, v8, v8

    mul-float v7, v9, v9

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v14, v6

    .line 932
    .restart local v14    # "length":F
    div-float/2addr v8, v14

    .line 933
    div-float/2addr v9, v14

    .line 936
    const/16 v21, 0x0

    .line 939
    .restart local v21    # "numInNormalDir":I
    const/4 v6, 0x0

    aget v6, p0, v6

    mul-float/2addr v6, v8

    const/4 v7, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v9

    add-float v18, v6, v7

    .line 940
    .restart local v18    # "min1":F
    move/from16 v15, v18

    .line 941
    .restart local v15    # "max1":F
    move/from16 v13, p1

    .restart local v13    # "j":I
    :goto_a
    if-ge v13, v10, :cond_13

    .line 942
    aget v6, p0, v13

    mul-float/2addr v6, v8

    add-int/lit8 v7, v13, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v9

    add-float v24, v6, v7

    .line 944
    .restart local v24    # "p":F
    aget v6, p0, v13

    add-int/lit8 v7, v13, 0x1

    aget v7, p0, v7

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(FFFFFF)I

    move-result v6

    sub-int v21, v21, v6

    .line 945
    cmpg-float v6, v24, v18

    if-gez v6, :cond_12

    .line 946
    move/from16 v18, v24

    .line 941
    :cond_11
    :goto_b
    add-int/lit8 v13, v13, 0x2

    goto :goto_a

    .line 947
    :cond_12
    cmpl-float v6, v24, v15

    if-lez v6, :cond_11

    .line 948
    move/from16 v15, v24

    goto :goto_b

    .line 953
    .end local v24    # "p":F
    :cond_13
    const/4 v6, 0x0

    aget v6, p3, v6

    mul-float/2addr v6, v8

    const/4 v7, 0x1

    aget v7, p3, v7

    mul-float/2addr v7, v9

    add-float v19, v6, v7

    .line 954
    .restart local v19    # "min2":F
    move/from16 v16, v19

    .line 955
    .restart local v16    # "max2":F
    move/from16 v13, p4

    :goto_c
    if-ge v13, v11, :cond_16

    .line 956
    aget v6, p3, v13

    mul-float/2addr v6, v8

    add-int/lit8 v7, v13, 0x1

    aget v7, p3, v7

    mul-float/2addr v7, v9

    add-float v24, v6, v7

    .line 957
    .restart local v24    # "p":F
    cmpg-float v6, v24, v19

    if-gez v6, :cond_15

    .line 958
    move/from16 v19, v24

    .line 955
    :cond_14
    :goto_d
    add-int/lit8 v13, v13, 0x2

    goto :goto_c

    .line 959
    :cond_15
    cmpl-float v6, v24, v16

    if-lez v6, :cond_14

    .line 960
    move/from16 v16, v24

    goto :goto_d

    .line 964
    .end local v24    # "p":F
    :cond_16
    cmpg-float v6, v18, v19

    if-gtz v6, :cond_17

    cmpl-float v6, v15, v19

    if-gez v6, :cond_19

    :cond_17
    cmpg-float v6, v19, v18

    if-gtz v6, :cond_18

    cmpl-float v6, v16, v18

    if-gez v6, :cond_19

    .line 965
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 967
    :cond_19
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v22, v6, v7

    .line 969
    .restart local v22    # "o":F
    cmpg-float v6, v18, v19

    if-gez v6, :cond_1a

    cmpl-float v6, v15, v16

    if-gtz v6, :cond_1b

    :cond_1a
    cmpg-float v6, v19, v18

    if-gez v6, :cond_1c

    cmpl-float v6, v16, v15

    if-lez v6, :cond_1c

    .line 970
    :cond_1b
    sub-float v6, v18, v19

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 971
    .restart local v20    # "mins":F
    sub-float v6, v15, v16

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 972
    .restart local v17    # "maxs":F
    cmpg-float v6, v20, v17

    if-gez v6, :cond_1e

    .line 973
    add-float v22, v22, v20

    .line 979
    .end local v17    # "maxs":F
    .end local v20    # "mins":F
    :cond_1c
    :goto_e
    cmpg-float v6, v22, v23

    if-gez v6, :cond_1d

    .line 980
    move/from16 v23, v22

    .line 982
    if-gez v21, :cond_1f

    move/from16 v25, v8

    .line 983
    :goto_f
    if-gez v21, :cond_20

    move/from16 v26, v9

    .line 922
    :cond_1d
    :goto_10
    add-int/lit8 v12, v12, 0x2

    goto/16 :goto_9

    .line 975
    .restart local v17    # "maxs":F
    .restart local v20    # "mins":F
    :cond_1e
    add-float v22, v22, v17

    goto :goto_e

    .line 982
    .end local v17    # "maxs":F
    .end local v20    # "mins":F
    :cond_1f
    neg-float v0, v8

    move/from16 v25, v0

    goto :goto_f

    .line 983
    :cond_20
    neg-float v0, v9

    move/from16 v26, v0

    goto :goto_10

    .line 988
    .end local v2    # "x1":F
    .end local v3    # "y1":F
    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .end local v8    # "axisX":F
    .end local v9    # "axisY":F
    .end local v13    # "j":I
    .end local v14    # "length":F
    .end local v15    # "max1":F
    .end local v16    # "max2":F
    .end local v18    # "min1":F
    .end local v19    # "min2":F
    .end local v21    # "numInNormalDir":I
    .end local v22    # "o":F
    :cond_21
    if-eqz p6, :cond_22

    .line 989
    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 990
    move/from16 v0, v23

    move-object/from16 v1, p6

    iput v0, v1, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 992
    :cond_22
    const/4 v6, 0x1

    goto/16 :goto_5
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 7
    .param p0, "verts1"    # [F
    .param p1, "verts2"    # [F
    .param p2, "mtv"    # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .prologue
    const/4 v1, 0x0

    .line 835
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 1
    .param p0, "c1"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "c2"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v0

    return v0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5
    .param p0, "c"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "r"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 790
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 791
    .local v0, "closestX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 793
    .local v1, "closestY":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 794
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 799
    :cond_0
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 800
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 805
    :cond_1
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v2

    .line 806
    mul-float/2addr v0, v0

    .line 807
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 808
    mul-float/2addr v1, v1

    .line 810
    add-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 795
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 796
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v2, v3

    goto :goto_0

    .line 801
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 802
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v2, v3

    goto :goto_1

    .line 810
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 1
    .param p0, "r1"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "r2"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 786
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 3
    .param p0, "linePoint1X"    # F
    .param p1, "linePoint1Y"    # F
    .param p2, "linePoint2X"    # F
    .param p3, "linePoint2Y"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .prologue
    .line 101
    sub-float v0, p2, p0

    sub-float v1, p5, p1

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p4, p0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 4
    .param p0, "linePoint1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "linePoint2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 95
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 12
    .param p0, "vertices"    # [F
    .param p1, "s"    # I
    .param p2, "e"    # I
    .param p3, "stride"    # I
    .param p4, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p5, "split"    # [F
    .param p6, "offset"    # I

    .prologue
    .line 1115
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result v11

    .line 1117
    .local v11, "t":F
    add-int/lit8 v0, p6, 0x0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p5, v0

    .line 1118
    add-int/lit8 v0, p6, 0x1

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p5, v0

    .line 1119
    add-int/lit8 v0, p6, 0x2

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p5, v0

    .line 1120
    const/4 v10, 0x3

    .local v10, "i":I
    :goto_0
    if-ge v10, p3, :cond_0

    .line 1121
    add-int v0, p1, v10

    aget v8, p0, v0

    .line 1122
    .local v8, "a":F
    add-int v0, p2, v10

    aget v9, p0, v0

    .line 1123
    .local v9, "b":F
    add-int v0, p6, v10

    sub-float v1, v9, v8

    mul-float/2addr v1, v11

    add-float/2addr v1, v8

    aput v1, p5, v0

    .line 1120
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1125
    .end local v8    # "a":F
    .end local v9    # "b":F
    :cond_0
    return-void
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 12
    .param p0, "triangle"    # [F
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "split"    # Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1015
    array-length v0, p0

    div-int/lit8 v3, v0, 0x3

    .line 1016
    .local v3, "stride":I
    aget v0, p0, v6

    aget v4, p0, v10

    aget v5, p0, v11

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v4, :cond_0

    move v7, v10

    .line 1017
    .local v7, "r1":Z
    :goto_0
    add-int/lit8 v0, v3, 0x0

    aget v0, p0, v0

    add-int/lit8 v4, v3, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v4, :cond_1

    move v8, v10

    .line 1018
    .local v8, "r2":Z
    :goto_1
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x0

    aget v0, p0, v0

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p0, v4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, p0, v5

    invoke-virtual {p1, v0, v4, v5}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v4, :cond_2

    move v9, v10

    .line 1020
    .local v9, "r3":Z
    :goto_2
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    .line 1023
    if-ne v7, v8, :cond_4

    if-ne v8, v9, :cond_4

    .line 1024
    iput v10, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 1025
    if-eqz v7, :cond_3

    .line 1026
    iput v10, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1027
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v4, p0

    invoke-static {p0, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1110
    :goto_3
    return-void

    .end local v7    # "r1":Z
    .end local v8    # "r2":Z
    .end local v9    # "r3":Z
    :cond_0
    move v7, v6

    .line 1016
    goto :goto_0

    .restart local v7    # "r1":Z
    :cond_1
    move v8, v6

    .line 1017
    goto :goto_1

    .restart local v8    # "r2":Z
    :cond_2
    move v9, v6

    .line 1018
    goto :goto_2

    .line 1029
    .restart local v9    # "r3":Z
    :cond_3
    iput v10, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1030
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v4, p0

    invoke-static {p0, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1036
    :cond_4
    const/4 v0, 0x3

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 1037
    if-eqz v7, :cond_5

    move v4, v10

    :goto_4
    if-eqz v8, :cond_6

    move v0, v10

    :goto_5
    add-int/2addr v4, v0

    if-eqz v9, :cond_7

    move v0, v10

    :goto_6
    add-int/2addr v0, v4

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1038
    iget v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v4, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v4

    iput v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1043
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1046
    const/4 v1, 0x0

    .line 1047
    .local v1, "first":I
    move v2, v3

    .line 1048
    .local v2, "second":I
    if-eq v7, v8, :cond_9

    .line 1050
    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1053
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1054
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1057
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v10

    :goto_7
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1058
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1065
    :goto_8
    move v1, v3

    .line 1066
    add-int v2, v3, v3

    .line 1067
    if-eq v8, v9, :cond_b

    .line 1069
    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1072
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1073
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1076
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v10

    :goto_9
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1077
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1084
    :goto_a
    add-int v1, v3, v3

    .line 1085
    const/4 v2, 0x0

    .line 1086
    if-eq v9, v7, :cond_d

    .line 1088
    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1091
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1092
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1095
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    invoke-virtual {p2, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1096
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {p2, v0, v6, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1103
    :goto_c
    iget v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    if-ne v0, v11, :cond_e

    .line 1104
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v4, v3, 0x2

    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v10, v3, 0x3

    mul-int/lit8 v11, v3, 0x2

    invoke-static {v0, v4, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v4, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v5, v3, 0x5

    invoke-static {v0, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    .end local v1    # "first":I
    .end local v2    # "second":I
    :cond_5
    move v4, v6

    .line 1037
    goto/16 :goto_4

    :cond_6
    move v0, v6

    goto/16 :goto_5

    :cond_7
    move v0, v6

    goto/16 :goto_6

    .restart local v1    # "first":I
    .restart local v2    # "second":I
    :cond_8
    move v0, v6

    .line 1057
    goto :goto_7

    .line 1061
    :cond_9
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_8

    :cond_a
    move v0, v6

    .line 1076
    goto :goto_9

    .line 1080
    :cond_b
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_a

    :cond_c
    move v10, v6

    .line 1095
    goto :goto_b

    .line 1099
    :cond_d
    invoke-virtual {p2, p0, v1, v3}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_c

    .line 1107
    :cond_e
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v4, v3, 0x2

    iget-object v5, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v10, v3, 0x3

    mul-int/lit8 v11, v3, 0x2

    invoke-static {v0, v4, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1108
    iget-object v0, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v4, p2, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v5, v3, 0x5

    invoke-static {v0, v6, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3
.end method
