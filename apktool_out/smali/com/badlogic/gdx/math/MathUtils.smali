.class public final Lcom/badlogic/gdx/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/MathUtils$Atan2;,
        Lcom/badlogic/gdx/math/MathUtils$Sin;
    }
.end annotation


# static fields
.field private static final ATAN2_BITS:I = 0x7

.field private static final ATAN2_BITS2:I = 0xe

.field private static final ATAN2_COUNT:I = 0x4000

.field static final ATAN2_DIM:I

.field private static final ATAN2_MASK:I = 0x3fff

.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000

.field private static final BIG_ENOUGH_ROUND:D = 16384.5

.field private static final CEIL:D = 0.9999999

.field public static final E:F = 2.7182817f

.field public static final FLOAT_ROUNDING_ERROR:F = 1.0E-6f

.field private static final INV_ATAN2_DIM_MINUS_1:F

.field public static final PI:F = 3.1415927f

.field public static final PI2:F = 6.2831855f

.field private static final SIN_BITS:I = 0xe

.field private static final SIN_COUNT:I = 0x4000

.field private static final SIN_MASK:I = 0x3fff

.field private static final degFull:F = 360.0f

.field public static final degRad:F = 0.017453292f

.field private static final degToIndex:F = 45.511112f

.field public static final degreesToRadians:F = 0.017453292f

.field public static final nanoToSec:F = 1.0E-9f

.field public static final radDeg:F = 57.295776f

.field private static final radFull:F = 6.2831855f

.field private static final radToIndex:F = 2607.5945f

.field public static final radiansToDegrees:F = 57.295776f

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-wide/high16 v0, 0x40d0000000000000L    # 16384.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    .line 133
    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static atan2(FF)F
    .locals 10
    .param p0, "y"    # F
    .param p1, "x"    # F

    .prologue
    const/4 v6, 0x0

    .line 106
    cmpg-float v5, p1, v6

    if-gez v5, :cond_1

    .line 107
    cmpg-float v5, p0, v6

    if-gez v5, :cond_0

    .line 108
    neg-float p0, p0

    .line 109
    const/high16 v2, 0x3f800000    # 1.0f

    .line 112
    .local v2, "mul":F
    :goto_0
    neg-float p1, p1

    .line 113
    const v0, -0x3fb6f025

    .line 122
    .local v0, "add":F
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, p1, p0

    if-gez v5, :cond_3

    move v5, p0

    :goto_2
    sget v7, Lcom/badlogic/gdx/math/MathUtils;->INV_ATAN2_DIM_MINUS_1:F

    mul-float/2addr v5, v7

    div-float v1, v6, v5

    .line 124
    .local v1, "invDiv":F
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v5, v1, v5

    if-nez v5, :cond_4

    float-to-double v6, p0

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v5, v6

    add-float/2addr v5, v0

    mul-float/2addr v5, v2

    .line 128
    :goto_3
    return v5

    .line 111
    .end local v0    # "add":F
    .end local v1    # "invDiv":F
    .end local v2    # "mul":F
    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    .restart local v2    # "mul":F
    goto :goto_0

    .line 115
    .end local v2    # "mul":F
    :cond_1
    cmpg-float v5, p0, v6

    if-gez v5, :cond_2

    .line 116
    neg-float p0, p0

    .line 117
    const/high16 v2, -0x40800000    # -1.0f

    .line 120
    .restart local v2    # "mul":F
    :goto_4
    const/4 v0, 0x0

    .restart local v0    # "add":F
    goto :goto_1

    .line 119
    .end local v0    # "add":F
    .end local v2    # "mul":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "mul":F
    goto :goto_4

    .restart local v0    # "add":F
    :cond_3
    move v5, p1

    .line 122
    goto :goto_2

    .line 126
    .restart local v1    # "invDiv":F
    :cond_4
    mul-float v5, p1, v1

    float-to-int v3, v5

    .line 127
    .local v3, "xi":I
    mul-float v5, p0, v1

    float-to-int v4, v5

    .line 128
    .local v4, "yi":I
    sget-object v5, Lcom/badlogic/gdx/math/MathUtils$Atan2;->table:[F

    sget v6, Lcom/badlogic/gdx/math/MathUtils;->ATAN2_DIM:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget v5, v5, v6

    add-float/2addr v5, v0

    mul-float/2addr v5, v2

    goto :goto_3
.end method

.method public static ceil(F)I
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 304
    float-to-double v0, p0

    const-wide v2, 0x40d0003fffffffffL    # 16384.999999999996

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static ceilPositive(F)I
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 310
    float-to-double v0, p0

    const-wide v2, 0x3fefffffca501acbL    # 0.9999999

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static clamp(DDD)D
    .locals 2
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .prologue
    .line 269
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 271
    .end local p2    # "min":D
    :goto_0
    return-wide p2

    .line 270
    .restart local p2    # "min":D
    :cond_0
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    .line 271
    goto :goto_0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 263
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 265
    .end local p1    # "min":F
    :goto_0
    return p1

    .line 264
    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 265
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 251
    if-ge p0, p1, :cond_0

    .line 253
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 252
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 253
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 257
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 259
    .end local p2    # "min":J
    :goto_0
    return-wide p2

    .line 258
    .restart local p2    # "min":J
    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    .line 259
    goto :goto_0
.end method

.method public static clamp(SSS)S
    .locals 0
    .param p0, "value"    # S
    .param p1, "min"    # S
    .param p2, "max"    # S

    .prologue
    .line 245
    if-ge p0, p1, :cond_0

    .line 247
    .end local p1    # "min":S
    :goto_0
    return p1

    .line 246
    .restart local p1    # "min":S
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    .line 247
    goto :goto_0
.end method

.method public static cos(F)F
    .locals 3
    .param p0, "radians"    # F

    .prologue
    .line 68
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x3fc90fdb

    add-float/2addr v1, p0

    const v2, 0x4522f983

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static cosDeg(F)F
    .locals 3
    .param p0, "degrees"    # F

    .prologue
    .line 78
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v1, p0

    const v2, 0x42360b61

    mul-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static floor(F)I
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 292
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floorPositive(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 298
    float-to-int v0, p0

    return v0
.end method

.method public static isEqual(FF)Z
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 339
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEqual(FFF)Z
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "tolerance"    # F

    .prologue
    .line 347
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 239
    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZero(F)Z
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 326
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZero(FF)Z
    .locals 1
    .param p0, "value"    # F
    .param p1, "tolerance"    # F

    .prologue
    .line 332
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "fromValue"    # F
    .param p1, "toValue"    # F
    .param p2, "progress"    # F

    .prologue
    .line 278
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static log(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "value"    # F

    .prologue
    .line 352
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static log2(F)F
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 357
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Lcom/badlogic/gdx/math/MathUtils;->log(FF)F

    move-result v0

    return v0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 228
    if-nez p0, :cond_0

    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    .line 229
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 230
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 231
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 232
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 233
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 234
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 235
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method public static random()F
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static random(F)F
    .locals 1
    .param p0, "range"    # F

    .prologue
    .line 172
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(FF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "end"    # F

    .prologue
    .line 177
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static random(I)I
    .locals 2
    .param p0, "range"    # I

    .prologue
    .line 137
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static random(II)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 142
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static random(J)J
    .locals 4
    .param p0, "range"    # J

    .prologue
    .line 147
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    long-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static random(JJ)J
    .locals 4
    .param p0, "start"    # J
    .param p2, "end"    # J

    .prologue
    .line 152
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-long v2, p2, p0

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static randomBoolean()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static randomBoolean(F)Z
    .locals 1
    .param p0, "chance"    # F

    .prologue
    .line 162
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static randomSign()I
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1f

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static randomTriangular()F
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static randomTriangular(F)F
    .locals 2
    .param p0, "max"    # F

    .prologue
    .line 199
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static randomTriangular(FF)F
    .locals 2
    .param p0, "min"    # F
    .param p1, "max"    # F

    .prologue
    .line 209
    sub-float v0, p1, p0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/MathUtils;->randomTriangular(FFF)F

    move-result v0

    return v0
.end method

.method public static randomTriangular(FFF)F
    .locals 4
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "mode"    # F

    .prologue
    .line 218
    sget-object v2, Lcom/badlogic/gdx/math/MathUtils;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 219
    .local v1, "u":F
    sub-float v0, p1, p0

    .line 220
    .local v0, "d":F
    sub-float v2, p2, p0

    div-float/2addr v2, v0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    mul-float v2, v1, v0

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, p0

    .line 221
    :goto_0
    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    sub-float v3, p1, p2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v2, p1, v2

    goto :goto_0
.end method

.method public static round(F)I
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 316
    float-to-double v0, p0

    const-wide v2, 0x40d0002000000000L    # 16384.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static roundPositive(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 321
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static sin(F)F
    .locals 2
    .param p0, "radians"    # F

    .prologue
    .line 63
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x4522f983

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method

.method public static sinDeg(F)F
    .locals 2
    .param p0, "degrees"    # F

    .prologue
    .line 73
    sget-object v0, Lcom/badlogic/gdx/math/MathUtils$Sin;->table:[F

    const v1, 0x42360b61

    mul-float/2addr v1, p0

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    aget v0, v0, v1

    return v0
.end method
