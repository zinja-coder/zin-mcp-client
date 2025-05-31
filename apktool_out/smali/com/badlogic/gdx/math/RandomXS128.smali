.class public Lcom/badlogic/gdx/math/RandomXS128;
.super Ljava/util/Random;
.source "RandomXS128.java"


# static fields
.field private static final NORM_DOUBLE:D = 1.1102230246251565E-16

.field private static final NORM_FLOAT:D = 5.960464477539063E-8


# instance fields
.field private seed0:J

.field private seed1:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;->setSeed(J)V

    .line 56
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "seed0"    # J
    .param p3, "seed1"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    .line 63
    return-void
.end method

.method private static final murmurHash3(J)J
    .locals 4
    .param p0, "x"    # J

    .prologue
    const/16 v2, 0x21

    .line 188
    ushr-long v0, p0, v2

    xor-long/2addr p0, v0

    .line 189
    const-wide v0, -0xae502812aa7333L

    mul-long/2addr p0, v0

    .line 190
    ushr-long v0, p0, v2

    xor-long/2addr p0, v0

    .line 191
    const-wide v0, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v0

    .line 192
    ushr-long v0, p0, v2

    xor-long/2addr p0, v0

    .line 194
    return-wide p0
.end method


# virtual methods
.method public getState(I)J
    .locals 2
    .param p1, "seed"    # I

    .prologue
    .line 184
    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    goto :goto_0
.end method

.method protected final next(I)I
    .locals 6
    .param p1, "bits"    # I

    .prologue
    const-wide/16 v4, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextBoolean()Z
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    const/16 v5, 0x8

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "n":I
    array-length v2, p1

    .line 152
    .local v2, "i":I
    :cond_0
    if-eqz v2, :cond_2

    .line 153
    if-ge v2, v5, :cond_1

    move v3, v2

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    .local v0, "bits":J
    move v4, v3

    .end local v3    # "n":I
    .local v4, "n":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "n":I
    .restart local v3    # "n":I
    if-eqz v4, :cond_0

    .line 155
    add-int/lit8 v2, v2, -0x1

    long-to-int v6, v0

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    .line 154
    shr-long/2addr v0, v5

    move v4, v3

    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_1

    .end local v0    # "bits":J
    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_1
    move v3, v5

    .line 153
    goto :goto_0

    .line 157
    :cond_2
    return-void
.end method

.method public nextDouble()D
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x28

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3e70000000000000L    # 5.960464477539063E-8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public nextInt()I
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public nextInt(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 99
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public nextLong()J
    .locals 8

    .prologue
    .line 70
    iget-wide v2, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 71
    .local v2, "s1":J
    iget-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    .line 72
    .local v0, "s0":J
    iput-wide v0, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 73
    const/16 v4, 0x17

    shl-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 74
    xor-long v4, v2, v0

    const/16 v6, 0x11

    ushr-long v6, v2, v6

    xor-long/2addr v4, v6

    const/16 v6, 0x1a

    ushr-long v6, v0, v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 110
    cmp-long v4, p1, v8

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "n must be positive"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextLong()J

    move-result-wide v4

    const/4 v6, 0x1

    ushr-long v0, v4, v6

    .line 113
    .local v0, "bits":J
    rem-long v2, v0, p1

    .line 114
    .local v2, "value":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    return-wide v2
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 166
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    .end local p1    # "seed":J
    :cond_0
    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/RandomXS128;->murmurHash3(J)J

    move-result-wide v0

    .line 167
    .local v0, "seed0":J
    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;->murmurHash3(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    .line 168
    return-void
.end method

.method public setState(JJ)V
    .locals 1
    .param p1, "seed0"    # J
    .param p3, "seed1"    # J

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed0:J

    .line 175
    iput-wide p3, p0, Lcom/badlogic/gdx/math/RandomXS128;->seed1:J

    .line 176
    return-void
.end method
