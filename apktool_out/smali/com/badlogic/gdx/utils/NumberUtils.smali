.class public final Lcom/badlogic/gdx/utils/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleToLongBits(D)J
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 43
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static floatToIntBits(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 21
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static floatToIntColor(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 29
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0
.end method

.method public static floatToRawIntBits(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 25
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0
.end method

.method public static intBitsToFloat(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 39
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static intToFloatColor(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 35
    const v0, -0x1000001

    and-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static longBitsToDouble(J)D
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 47
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
