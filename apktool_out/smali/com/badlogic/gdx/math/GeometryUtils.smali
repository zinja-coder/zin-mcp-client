.class public final Lcom/badlogic/gdx/math/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# static fields
.field private static final tmp1:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areVerticesClockwise([FII)Z
    .locals 11
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 204
    const/4 v9, 0x2

    if-gt p2, v9, :cond_0

    .line 217
    :goto_0
    return v8

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 206
    .local v0, "area":F
    move v1, p1

    .local v1, "i":I
    add-int v9, p1, p2

    add-int/lit8 v2, v9, -0x3

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 207
    aget v3, p0, v1

    .line 208
    .local v3, "p1x":F
    add-int/lit8 v9, v1, 0x1

    aget v4, p0, v9

    .line 209
    .local v4, "p1y":F
    add-int/lit8 v9, v1, 0x2

    aget v5, p0, v9

    .line 210
    .local v5, "p2x":F
    add-int/lit8 v9, v1, 0x3

    aget v6, p0, v9

    .line 211
    .local v6, "p2y":F
    mul-float v9, v3, v6

    mul-float v10, v5, v4

    sub-float/2addr v9, v10

    add-float/2addr v0, v9

    .line 206
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 213
    .end local v3    # "p1x":F
    .end local v4    # "p1y":F
    .end local v5    # "p2x":F
    .end local v6    # "p2y":F
    :cond_1
    add-int/lit8 v9, p2, -0x2

    aget v3, p0, v9

    .line 214
    .restart local v3    # "p1x":F
    add-int/lit8 v9, p2, -0x1

    aget v4, p0, v9

    .line 215
    .restart local v4    # "p1y":F
    aget v5, p0, v8

    .line 216
    .restart local v5    # "p2x":F
    aget v6, p0, v7

    .line 217
    .restart local v6    # "p2y":F
    mul-float v9, v3, v6

    add-float/2addr v9, v0

    mul-float v10, v5, v4

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_2
.end method

.method public static barycoordInsideTriangle(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p0, "barycentric"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v1, 0x0

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static colinear(FFFFFF)Z
    .locals 9
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F

    .prologue
    .line 99
    sub-float v2, p2, p0

    .local v2, "dx21":F
    sub-float v5, p3, p1

    .line 100
    .local v5, "dy21":F
    sub-float v3, p4, p2

    .local v3, "dx32":F
    sub-float v6, p5, p3

    .line 101
    .local v6, "dy32":F
    sub-float v1, p0, p4

    .local v1, "dx13":F
    sub-float v4, p1, p5

    .line 102
    .local v4, "dy13":F
    mul-float v7, v3, v5

    mul-float v8, v2, v6

    sub-float v0, v7, v8

    .line 103
    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x358637bd    # 1.0E-6f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static ensureCCW([F)V
    .locals 8
    .param p0, "polygon"    # [F

    .prologue
    .line 190
    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v6, v7}, Lcom/badlogic/gdx/math/GeometryUtils;->areVerticesClockwise([FII)Z

    move-result v6

    if-nez v6, :cond_1

    .line 201
    :cond_0
    return-void

    .line 191
    :cond_1
    array-length v6, p0

    add-int/lit8 v1, v6, -0x2

    .line 192
    .local v1, "lastX":I
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v6, p0

    div-int/lit8 v2, v6, 0x2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 193
    sub-int v3, v1, v0

    .line 194
    .local v3, "other":I
    aget v4, p0, v0

    .line 195
    .local v4, "x":F
    add-int/lit8 v6, v0, 0x1

    aget v5, p0, v6

    .line 196
    .local v5, "y":F
    aget v6, p0, v3

    aput v6, p0, v0

    .line 197
    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v7, p0, v7

    aput v7, p0, v6

    .line 198
    aput v4, p0, v3

    .line 199
    add-int/lit8 v6, v3, 0x1

    aput v5, p0, v6

    .line 192
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static fromBarycoord(Lcom/badlogic/gdx/math/Vector2;FFF)F
    .locals 3
    .param p0, "barycentric"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F

    .prologue
    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v1, v2

    .line 69
    .local v0, "u":F
    mul-float v1, v0, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    return v1
.end method

.method public static fromBarycoord(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p0, "barycentric"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "interpolatedOut"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 59
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v1, v2

    .line 60
    .local v0, "u":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 61
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 62
    return-object p4
.end method

.method public static lowestPositiveRoot(FFF)F
    .locals 11
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    const/high16 v6, 0x7fc00000    # Float.NaN

    const/4 v10, 0x0

    .line 79
    mul-float v7, p1, p1

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, p0

    mul-float/2addr v8, p2

    sub-float v0, v7, v8

    .line 80
    .local v0, "det":F
    cmpg-float v7, v0, v10

    if-gez v7, :cond_1

    move v2, v6

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 82
    :cond_1
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 83
    .local v4, "sqrtD":F
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, p0

    div-float v1, v7, v8

    .line 84
    .local v1, "invA":F
    neg-float v7, p1

    sub-float/2addr v7, v4

    mul-float v2, v7, v1

    .line 85
    .local v2, "r1":F
    neg-float v7, p1

    add-float/2addr v7, v4

    mul-float v3, v7, v1

    .line 87
    .local v3, "r2":F
    cmpl-float v7, v2, v3

    if-lez v7, :cond_2

    .line 88
    move v5, v3

    .line 89
    .local v5, "tmp":F
    move v3, v2

    .line 90
    move v2, v5

    .line 93
    .end local v5    # "tmp":F
    :cond_2
    cmpl-float v7, v2, v10

    if-gtz v7, :cond_0

    .line 94
    cmpl-float v7, v3, v10

    if-lez v7, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v6

    .line 95
    goto :goto_0
.end method

.method public static polygonArea([FII)F
    .locals 9
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "area":F
    move v1, p1

    .local v1, "i":I
    add-int v2, p1, p2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 178
    move v3, v1

    .line 179
    .local v3, "x1":I
    add-int/lit8 v5, v1, 0x1

    .line 180
    .local v5, "y1":I
    add-int/lit8 v7, v1, 0x2

    rem-int v4, v7, v2

    .line 181
    .local v4, "x2":I
    add-int/lit8 v7, v1, 0x3

    rem-int v6, v7, v2

    .line 182
    .local v6, "y2":I
    aget v7, p0, v3

    aget v8, p0, v6

    mul-float/2addr v7, v8

    add-float/2addr v0, v7

    .line 183
    aget v7, p0, v4

    aget v8, p0, v5

    mul-float/2addr v7, v8

    sub-float/2addr v0, v7

    .line 177
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 185
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    .end local v5    # "y1":I
    .end local v6    # "y2":I
    :cond_0
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    .line 186
    return v0
.end method

.method public static polygonCentroid([FIILcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 12
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "centroid"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 143
    const/4 v10, 0x6

    if-ge p2, v10, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "A polygon must have 3 or more coordinate pairs."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 144
    :cond_0
    const/4 v4, 0x0

    .local v4, "x":F
    const/4 v7, 0x0

    .line 146
    .local v7, "y":F
    const/4 v3, 0x0

    .line 147
    .local v3, "signedArea":F
    move v1, p1

    .line 148
    .local v1, "i":I
    add-int v10, p1, p2

    add-int/lit8 v2, v10, -0x2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 149
    aget v5, p0, v1

    .line 150
    .local v5, "x0":F
    add-int/lit8 v10, v1, 0x1

    aget v8, p0, v10

    .line 151
    .local v8, "y0":F
    add-int/lit8 v10, v1, 0x2

    aget v6, p0, v10

    .line 152
    .local v6, "x1":F
    add-int/lit8 v10, v1, 0x3

    aget v9, p0, v10

    .line 153
    .local v9, "y1":F
    mul-float v10, v5, v9

    mul-float v11, v6, v8

    sub-float v0, v10, v11

    .line 154
    .local v0, "a":F
    add-float/2addr v3, v0

    .line 155
    add-float v10, v5, v6

    mul-float/2addr v10, v0

    add-float/2addr v4, v10

    .line 156
    add-float v10, v8, v9

    mul-float/2addr v10, v0

    add-float/2addr v7, v10

    .line 148
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 159
    .end local v0    # "a":F
    .end local v5    # "x0":F
    .end local v6    # "x1":F
    .end local v8    # "y0":F
    .end local v9    # "y1":F
    :cond_1
    aget v5, p0, v1

    .line 160
    .restart local v5    # "x0":F
    add-int/lit8 v10, v1, 0x1

    aget v8, p0, v10

    .line 161
    .restart local v8    # "y0":F
    aget v6, p0, p1

    .line 162
    .restart local v6    # "x1":F
    add-int/lit8 v10, p1, 0x1

    aget v9, p0, v10

    .line 163
    .restart local v9    # "y1":F
    mul-float v10, v5, v9

    mul-float v11, v6, v8

    sub-float v0, v10, v11

    .line 164
    .restart local v0    # "a":F
    add-float/2addr v3, v0

    .line 165
    add-float v10, v5, v6

    mul-float/2addr v10, v0

    add-float/2addr v4, v10

    .line 166
    add-float v10, v8, v9

    mul-float/2addr v10, v0

    add-float/2addr v7, v10

    .line 168
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v3, v10

    .line 169
    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v3

    div-float v10, v4, v10

    iput v10, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 170
    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v3

    div-float v10, v7, v10

    iput v10, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 171
    return-object p3
.end method

.method public static quadrilateralCentroid(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 7
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "x4"    # F
    .param p7, "y4"    # F
    .param p8, "centroid"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x40400000    # 3.0f

    .line 132
    add-float v4, p0, p2

    add-float/2addr v4, p4

    div-float v0, v4, v5

    .line 133
    .local v0, "avgX1":F
    add-float v4, p1, p3

    add-float/2addr v4, p5

    div-float v2, v4, v5

    .line 134
    .local v2, "avgY1":F
    add-float v4, p0, p6

    add-float/2addr v4, p4

    div-float v1, v4, v5

    .line 135
    .local v1, "avgX2":F
    add-float v4, p1, p7

    add-float/2addr v4, p5

    div-float v3, v4, v5

    .line 136
    .local v3, "avgY2":F
    sub-float v4, v0, v1

    div-float/2addr v4, v6

    sub-float v4, v0, v4

    iput v4, p8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 137
    sub-float v4, v2, v3

    div-float/2addr v4, v6

    sub-float v4, v2, v4

    iput v4, p8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 138
    return-object p8
.end method

.method public static toBarycoord(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 11
    .param p0, "p"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "barycentricOut"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 37
    sget-object v9, Lcom/badlogic/gdx/math/GeometryUtils;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 38
    .local v6, "v0":Lcom/badlogic/gdx/math/Vector2;
    sget-object v9, Lcom/badlogic/gdx/math/GeometryUtils;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 39
    .local v7, "v1":Lcom/badlogic/gdx/math/Vector2;
    sget-object v9, Lcom/badlogic/gdx/math/GeometryUtils;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    .line 40
    .local v8, "v2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v6, v6}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 41
    .local v0, "d00":F
    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    .line 42
    .local v1, "d01":F
    invoke-virtual {v7, v7}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    .line 43
    .local v2, "d11":F
    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v3

    .line 44
    .local v3, "d20":F
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    .line 45
    .local v4, "d21":F
    mul-float v9, v0, v2

    mul-float v10, v1, v1

    sub-float v5, v9, v10

    .line 46
    .local v5, "denom":F
    mul-float v9, v2, v3

    mul-float v10, v1, v4

    sub-float/2addr v9, v10

    div-float/2addr v9, v5

    iput v9, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 47
    mul-float v9, v0, v4

    mul-float v10, v1, v3

    sub-float/2addr v9, v10

    div-float/2addr v9, v5

    iput v9, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 48
    return-object p4
.end method

.method public static triangleArea(FFFFFF)F
    .locals 3
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F

    .prologue
    .line 127
    sub-float v0, p0, p4

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p0, p2

    sub-float v2, p5, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "centroid"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 107
    add-float v0, p0, p2

    add-float/2addr v0, p4

    div-float/2addr v0, v1

    iput v0, p6, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 108
    add-float v0, p1, p3

    add-float/2addr v0, p5

    div-float/2addr v0, v1

    iput v0, p6, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 109
    return-object p6
.end method

.method public static triangleCircumcenter(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 14
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "circumcenter"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 114
    sub-float v3, p2, p0

    .local v3, "dx21":F
    sub-float v6, p3, p1

    .line 115
    .local v6, "dy21":F
    sub-float v4, p4, p2

    .local v4, "dx32":F
    sub-float v7, p5, p3

    .line 116
    .local v7, "dy32":F
    sub-float v2, p0, p4

    .local v2, "dx13":F
    sub-float v5, p1, p5

    .line 117
    .local v5, "dy13":F
    mul-float v11, v4, v6

    mul-float v12, v3, v7

    sub-float v1, v11, v12

    .line 118
    .local v1, "det":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x358637bd    # 1.0E-6f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    .line 119
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Triangle points must not be colinear."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 120
    :cond_0
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v1, v11

    .line 121
    mul-float v11, p0, p0

    mul-float v12, p1, p1

    add-float v8, v11, v12

    .local v8, "sqr1":F
    mul-float v11, p2, p2

    mul-float v12, p3, p3

    add-float v9, v11, v12

    .local v9, "sqr2":F
    mul-float v11, p4, p4

    mul-float v12, p5, p5

    add-float v10, v11, v12

    .line 122
    .local v10, "sqr3":F
    mul-float v11, v8, v7

    mul-float v12, v9, v5

    add-float/2addr v11, v12

    mul-float v12, v10, v6

    add-float/2addr v11, v12

    div-float/2addr v11, v1

    mul-float v12, v8, v4

    mul-float v13, v9, v2

    add-float/2addr v12, v13

    mul-float v13, v10, v3

    add-float/2addr v12, v13

    neg-float v12, v12

    div-float/2addr v12, v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 123
    return-object p6
.end method
