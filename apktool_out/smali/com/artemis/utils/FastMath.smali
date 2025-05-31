.class public Lcom/artemis/utils/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final HALF_PI:D = 1.5707963267948966

.field public static final PI:D = 3.141592653589793

.field public static final SQUARED_PI:D = 9.869604401089358

.field public static final THREE_PI_HALVES:D = 4.71238898038469

.field public static final TWO_PI:D = 6.283185307179586

.field private static final _asin_a:D = -0.048129527683101345

.field private static final _asin_b:D = -0.3438359939479152

.field private static final _asin_c:D = 0.9627618484259132

.field private static final _asin_d:D = 1.0013894086010704

.field private static final _atan_a:D = 0.280872

.field private static final _sin_a:D = -0.4052847345693511

.field private static final _sin_b:D = 1.2732395447351628

.field private static final _sin_p:D = 0.225


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final acos(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 49
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {p0, p1}, Lcom/artemis/utils/FastMath;->asin(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static final asin(D)D
    .locals 10
    .param p0, "x"    # D

    .prologue
    .line 45
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, -0x40575b910942205aL    # -0.048129527683101345

    mul-double/2addr v2, v4

    const-wide v4, -0x4029fe9750b39654L    # -0.3438359939479152

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide v2, 0x3feecef1ef9a6d01L    # 0.9627618484259132

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    const-wide v4, 0x3ff005b0e68809beL    # 1.0013894086010704

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v8, p0, p0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final atan(D)D
    .locals 6
    .param p0, "x"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fd1f9ce8d972cd8L    # 0.280872

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    mul-double v0, v4, p0

    mul-double/2addr v0, p0

    add-double/2addr v0, v2

    div-double v0, p0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    mul-double v2, p0, p0

    add-double/2addr v2, v4

    div-double v2, p0, v2

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public static final cos(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 32
    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const-wide v0, -0x3fed268380ccde2eL    # -4.71238898038469

    :cond_0
    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/artemis/utils/FastMath;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final inverseSqrt(D)D
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 57
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v4, p0

    .line 58
    .local v2, "xhalf":D
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 59
    .local v0, "i":J
    const-wide v4, 0x5fe6ec85e7de30daL    # 9.604984148591477E153

    const/4 v6, 0x1

    shr-long v6, v0, v6

    sub-long v0, v4, v6

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 61
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v6, v2, p0

    mul-double/2addr v6, p0

    sub-double/2addr v4, v6

    mul-double/2addr p0, v4

    .line 62
    return-wide p0
.end method

.method public static final sin(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 36
    const-wide v0, -0x40260fd09ddd38e0L    # -0.4052847345693511

    mul-double/2addr v0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff45f306dc9c883L    # 1.2732395447351628

    mul-double/2addr v2, p0

    add-double p0, v0, v2

    .line 37
    const-wide v0, 0x3fcccccccccccccdL    # 0.225

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, p0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static final sqrt(D)D
    .locals 2
    .param p0, "x"    # D

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/artemis/utils/FastMath;->inverseSqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static final tan(D)D
    .locals 4
    .param p0, "x"    # D

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/artemis/utils/FastMath;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/artemis/utils/FastMath;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method
