.class public Lcom/badlogic/gdx/utils/DataOutput;
.super Ljava/io/DataOutputStream;
.source "DataOutput.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    return-void
.end method

.method private writeString_slow(Ljava/lang/String;II)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "charCount"    # I
    .param p3, "charIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :goto_0
    if-ge p3, p2, :cond_2

    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    .local v0, "c":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 87
    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 84
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_1

    .line 89
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 90
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 91
    and-int/lit8 v1, v0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_1

    .line 93
    :cond_1
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 94
    and-int/lit8 v1, v0, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_1

    .line 97
    .end local v0    # "c":I
    :cond_2
    return-void
.end method


# virtual methods
.method public writeInt(IZ)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p2, :cond_0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int p1, v0, v1

    .line 36
    :cond_0
    ushr-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_1

    .line 37
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 38
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 40
    :cond_1
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 41
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_2

    .line 42
    ushr-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 43
    const/4 v0, 0x2

    goto :goto_0

    .line 45
    :cond_2
    ushr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 46
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_3

    .line 47
    ushr-int/lit8 v0, p1, 0xe

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 48
    const/4 v0, 0x3

    goto :goto_0

    .line 50
    :cond_3
    ushr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 51
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_4

    .line 52
    ushr-int/lit8 v0, p1, 0x15

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 53
    const/4 v0, 0x4

    goto :goto_0

    .line 55
    :cond_4
    ushr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 56
    ushr-int/lit8 v0, p1, 0x1c

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 57
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 63
    if-nez p1, :cond_1

    .line 64
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 68
    .local v1, "charCount":I
    if-nez v1, :cond_2

    .line 69
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/DataOutput;->writeInt(IZ)I

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "charIndex":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "c":I
    const/16 v3, 0x7f

    if-le v0, v3, :cond_4

    .line 80
    .end local v0    # "c":I
    :cond_3
    if-ge v2, v1, :cond_0

    invoke-direct {p0, p1, v1, v2}, Lcom/badlogic/gdx/utils/DataOutput;->writeString_slow(Ljava/lang/String;II)V

    goto :goto_0

    .line 78
    .restart local v0    # "c":I
    :cond_4
    int-to-byte v3, v0

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
