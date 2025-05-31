.class public Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field static final kBitModelTotal:I = 0x800

.field static final kNumBitModelTotalBits:I = 0xb

.field static final kNumMoveBits:I = 0x5

.field static final kTopMask:I = -0x1000000


# instance fields
.field Code:I

.field Range:I

.field Stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitBitModels([S)V
    .locals 2
    .param p0, "probs"    # [S

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 89
    const/16 v1, 0x400

    aput-short v1, p0, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public DecodeBit([SI)I
    .locals 5
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v3, -0x80000000

    .line 65
    aget-short v1, p1, p2

    .line 66
    .local v1, "prob":I
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    ushr-int/lit8 v2, v2, 0xb

    mul-int v0, v2, v1

    .line 67
    .local v0, "newBound":I
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    xor-int/2addr v2, v3

    xor-int/2addr v3, v0

    if-ge v2, v3, :cond_1

    .line 68
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 69
    rsub-int v2, v1, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 70
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    and-int/2addr v2, v4

    if-nez v2, :cond_0

    .line 71
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 72
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 74
    :cond_0
    const/4 v2, 0x0

    .line 83
    :goto_0
    return v2

    .line 76
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 77
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 78
    ushr-int/lit8 v2, v1, 0x5

    sub-int v2, v1, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 79
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    .line 80
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 81
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 83
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final DecodeDirectBits(I)I
    .locals 6
    .param p1, "numTotalBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "result":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    ushr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 52
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    sub-int/2addr v3, v4

    ushr-int/lit8 v2, v3, 0x1f

    .line 53
    .local v2, "t":I
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    iget v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 54
    shl-int/lit8 v3, v1, 0x1

    rsub-int/lit8 v4, v2, 0x1

    or-int v1, v3, v4

    .line 56
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 57
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 58
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    shl-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 50
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 61
    .end local v2    # "t":I
    :cond_1
    return v1
.end method

.method public final Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 45
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final ReleaseStream()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    .line 39
    return-void
.end method

.method public final SetStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    .line 35
    return-void
.end method
