.class public Lcom/artemis/utils/TrigLUT;
.super Ljava/lang/Object;
.source "TrigLUT.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SIN_BITS:I

.field private static final SIN_COUNT:I

.field private static final SIN_MASK:I

.field private static final cos:[F

.field private static final degFull:F

.field private static final degToIndex:F

.field private static final radFull:F

.field private static final radToIndex:F

.field private static final sin:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 44
    const/16 v1, 0xc

    sput v1, Lcom/artemis/utils/TrigLUT;->SIN_BITS:I

    .line 45
    const/4 v1, -0x1

    sget v2, Lcom/artemis/utils/TrigLUT;->SIN_BITS:I

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    sput v1, Lcom/artemis/utils/TrigLUT;->SIN_MASK:I

    .line 46
    sget v1, Lcom/artemis/utils/TrigLUT;->SIN_MASK:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    .line 48
    const v1, 0x40c90fdb

    sput v1, Lcom/artemis/utils/TrigLUT;->radFull:F

    .line 49
    const/high16 v1, 0x43b40000    # 360.0f

    sput v1, Lcom/artemis/utils/TrigLUT;->degFull:F

    .line 50
    sget v1, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    int-to-float v1, v1

    sget v2, Lcom/artemis/utils/TrigLUT;->radFull:F

    div-float/2addr v1, v2

    sput v1, Lcom/artemis/utils/TrigLUT;->radToIndex:F

    .line 51
    sget v1, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    int-to-float v1, v1

    sget v2, Lcom/artemis/utils/TrigLUT;->degFull:F

    div-float/2addr v1, v2

    sput v1, Lcom/artemis/utils/TrigLUT;->degToIndex:F

    .line 53
    sget v1, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    new-array v1, v1, [F

    sput-object v1, Lcom/artemis/utils/TrigLUT;->sin:[F

    .line 54
    sget v1, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    new-array v1, v1, [F

    sput-object v1, Lcom/artemis/utils/TrigLUT;->cos:[F

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    if-ge v0, v1, :cond_0

    .line 57
    sget-object v1, Lcom/artemis/utils/TrigLUT;->sin:[F

    int-to-float v2, v0

    add-float/2addr v2, v4

    sget v3, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget v3, Lcom/artemis/utils/TrigLUT;->radFull:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 58
    sget-object v1, Lcom/artemis/utils/TrigLUT;->cos:[F

    int-to-float v2, v0

    add-float/2addr v2, v4

    sget v3, Lcom/artemis/utils/TrigLUT;->SIN_COUNT:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget v3, Lcom/artemis/utils/TrigLUT;->radFull:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cos(F)F
    .locals 3
    .param p0, "rad"    # F

    .prologue
    .line 27
    sget-object v0, Lcom/artemis/utils/TrigLUT;->cos:[F

    sget v1, Lcom/artemis/utils/TrigLUT;->radToIndex:F

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget v2, Lcom/artemis/utils/TrigLUT;->SIN_MASK:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public static final cosDeg(F)F
    .locals 3
    .param p0, "deg"    # F

    .prologue
    .line 35
    sget-object v0, Lcom/artemis/utils/TrigLUT;->cos:[F

    sget v1, Lcom/artemis/utils/TrigLUT;->degToIndex:F

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget v2, Lcom/artemis/utils/TrigLUT;->SIN_MASK:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const v1, 0x40490fdb    # (float)Math.PI

    invoke-static {v1}, Lcom/artemis/utils/TrigLUT;->cos(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(F)V

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1}, Lcom/artemis/utils/TrigLUT;->cosDeg(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(F)V

    .line 20
    return-void
.end method

.method public static final sin(F)F
    .locals 3
    .param p0, "rad"    # F

    .prologue
    .line 23
    sget-object v0, Lcom/artemis/utils/TrigLUT;->sin:[F

    sget v1, Lcom/artemis/utils/TrigLUT;->radToIndex:F

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget v2, Lcom/artemis/utils/TrigLUT;->SIN_MASK:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public static final sinDeg(F)F
    .locals 3
    .param p0, "deg"    # F

    .prologue
    .line 31
    sget-object v0, Lcom/artemis/utils/TrigLUT;->sin:[F

    sget v1, Lcom/artemis/utils/TrigLUT;->degToIndex:F

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget v2, Lcom/artemis/utils/TrigLUT;->SIN_MASK:I

    and-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method
