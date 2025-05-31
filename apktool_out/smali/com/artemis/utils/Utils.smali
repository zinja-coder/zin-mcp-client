.class public Lcom/artemis/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static angleInDegrees(FFFF)F
    .locals 4
    .param p0, "originX"    # F
    .param p1, "originY"    # F
    .param p2, "targetX"    # F
    .param p3, "targetY"    # F

    .prologue
    .line 91
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static angleInDegrees(FFFFF)F
    .locals 2
    .param p0, "ownerRotation"    # F
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 87
    invoke-static {p1, p2, p3, p4}, Lcom/artemis/utils/Utils;->angleInDegrees(FFFF)F

    move-result v0

    sub-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method public static angleInRadians(FFFF)F
    .locals 4
    .param p0, "originX"    # F
    .param p1, "originY"    # F
    .param p2, "targetX"    # F
    .param p3, "targetY"    # F

    .prologue
    .line 95
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static collides(FFFFFF)Z
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "radius1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "radius2"    # F

    .prologue
    .line 126
    invoke-static {p0, p1, p3, p4}, Lcom/artemis/utils/Utils;->distance(FFFF)F

    move-result v0

    .line 128
    .local v0, "d":F
    add-float v1, p2, p5

    sub-float/2addr v0, v1

    .line 130
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cubicInterpolation(FFFFF)F
    .locals 7
    .param p0, "v0"    # F
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F
    .param p4, "t"    # F

    .prologue
    .line 16
    mul-float v4, p4, p4

    .line 17
    .local v4, "t2":F
    sub-float v5, p3, p2

    sub-float/2addr v5, p0

    add-float v0, v5, p1

    .line 18
    .local v0, "a0":F
    sub-float v5, p0, p1

    sub-float v1, v5, v0

    .line 19
    .local v1, "a1":F
    sub-float v2, p2, p0

    .line 20
    .local v2, "a2":F
    move v3, p1

    .line 22
    .local v3, "a3":F
    mul-float v5, p4, v4

    mul-float/2addr v5, v0

    mul-float v6, v1, v4

    add-float/2addr v5, v6

    mul-float v6, v2, p4

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    return v5
.end method

.method public static distance(FFFF)F
    .locals 1
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/artemis/utils/Utils;->euclideanDistance(FFFF)F

    move-result v0

    return v0
.end method

.method public static doCirclesCollide(FFFFFF)Z
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "radius1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "radius2"    # F

    .prologue
    .line 63
    sub-float v1, p3, p0

    .line 64
    .local v1, "dx":F
    sub-float v2, p4, p1

    .line 65
    .local v2, "dy":F
    add-float v0, p2, p5

    .line 66
    .local v0, "d":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    mul-float v4, v0, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static euclideanDistance(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 80
    sub-float v0, p0, p2

    .line 81
    .local v0, "a":F
    sub-float v1, p1, p3

    .line 83
    .local v1, "b":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/artemis/utils/FastMath;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static euclideanDistanceSq2D(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 70
    sub-float v0, p0, p2

    .line 71
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 72
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static getRotatedX(FFFFF)F
    .locals 5
    .param p0, "currentX"    # F
    .param p1, "currentY"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "angleDegrees"    # F

    .prologue
    .line 104
    sub-float v0, p0, p2

    .line 105
    .local v0, "x":F
    sub-float v2, p1, p3

    .line 106
    .local v2, "y":F
    invoke-static {p4}, Lcom/artemis/utils/TrigLUT;->cosDeg(F)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {p4}, Lcom/artemis/utils/TrigLUT;->sinDeg(F)F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v1, v3, v4

    .line 107
    .local v1, "xr":F
    add-float v3, v1, p2

    return v3
.end method

.method public static getRotatedY(FFFFF)F
    .locals 5
    .param p0, "currentX"    # F
    .param p1, "currentY"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "angleDegrees"    # F

    .prologue
    .line 111
    sub-float v0, p0, p2

    .line 112
    .local v0, "x":F
    sub-float v1, p1, p3

    .line 113
    .local v1, "y":F
    invoke-static {p4}, Lcom/artemis/utils/TrigLUT;->sinDeg(F)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {p4}, Lcom/artemis/utils/TrigLUT;->cosDeg(F)F

    move-result v4

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 114
    .local v2, "yr":F
    add-float v3, v2, p3

    return v3
.end method

.method public static getXAtEndOfRotatedLineByOrigin(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "lineLength"    # F
    .param p2, "angleDegrees"    # F

    .prologue
    .line 118
    invoke-static {p2}, Lcom/artemis/utils/TrigLUT;->cosDeg(F)F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static getYAtEndOfRotatedLineByOrigin(FFF)F
    .locals 1
    .param p0, "y"    # F
    .param p1, "lineLength"    # F
    .param p2, "angleDegrees"    # F

    .prologue
    .line 122
    invoke-static {p2}, Lcom/artemis/utils/TrigLUT;->sinDeg(F)F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static lengthOfQuadraticBezierCurve(FFFFFF)F
    .locals 20
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F

    .prologue
    .line 30
    cmpl-float v16, p0, p2

    if-nez v16, :cond_0

    cmpl-float v16, p1, p3

    if-eqz v16, :cond_1

    :cond_0
    cmpl-float v16, p2, p4

    if-nez v16, :cond_2

    cmpl-float v16, p3, p5

    if-nez v16, :cond_2

    .line 31
    :cond_1
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/artemis/utils/Utils;->distance(FFFF)F

    move-result v16

    .line 49
    :goto_0
    return v16

    .line 35
    :cond_2
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, p2

    sub-float v16, p0, v16

    add-float v12, v16, p4

    .line 36
    .local v12, "ax":F
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, p3

    sub-float v16, p1, v16

    add-float v13, v16, p5

    .line 37
    .local v13, "ay":F
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, p2

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, p0

    sub-float v14, v16, v17

    .line 38
    .local v14, "bx":F
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, p3

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, p1

    sub-float v15, v16, v17

    .line 39
    .local v15, "by":F
    const/high16 v16, 0x40800000    # 4.0f

    mul-float v17, v12, v12

    mul-float v18, v13, v13

    add-float v17, v17, v18

    mul-float v4, v16, v17

    .line 40
    .local v4, "A":F
    const/high16 v16, 0x40800000    # 4.0f

    mul-float v17, v12, v14

    mul-float v18, v13, v15

    add-float v17, v17, v18

    mul-float v7, v16, v17

    .line 41
    .local v7, "B":F
    mul-float v16, v14, v14

    mul-float v17, v15, v15

    add-float v9, v16, v17

    .line 43
    .local v9, "C":F
    const/high16 v16, 0x40000000    # 2.0f

    add-float v17, v4, v7

    add-float v17, v17, v9

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v11, v16, v17

    .line 44
    .local v11, "Sabc":F
    float-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 45
    .local v5, "A_2":F
    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v4

    mul-float v6, v16, v5

    .line 46
    .local v6, "A_32":F
    const/high16 v16, 0x40000000    # 2.0f

    float-to-double v0, v9

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v10, v16, v17

    .line 47
    .local v10, "C_2":F
    div-float v8, v7, v5

    .line 49
    .local v8, "BA":F
    mul-float v16, v6, v11

    mul-float v17, v5, v7

    sub-float v18, v11, v10

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v17, v17, v9

    mul-float v17, v17, v4

    mul-float v18, v7, v7

    sub-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v5

    add-float v18, v18, v8

    add-float v18, v18, v11

    add-float v19, v8, v10

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v17, v17, v6

    div-float v16, v16, v17

    goto/16 :goto_0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .prologue
    .line 53
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 55
    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr p0, v0

    goto :goto_0
.end method

.method public static manhattanDistance(FFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 76
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static quadraticBezierInterpolation(FFFF)F
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    sub-float v0, v2, p3

    sub-float v1, v2, p3

    mul-float/2addr v0, v1

    mul-float/2addr v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p3

    sub-float/2addr v2, p3

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static shouldRotateCounterClockwise(FF)Z
    .locals 5
    .param p0, "angleFrom"    # F
    .param p1, "angleTo"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    sub-float v3, p0, p1

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float v0, v3, v4

    .line 100
    .local v0, "diff":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
