.class public Lcom/badlogic/gdx/utils/DataInput;
.super Ljava/io/DataInputStream;
.source "DataInput.java"


# instance fields
.field private chars:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 30
    return-void
.end method

.method private readUtf8_slow(III)V
    .locals 3
    .param p1, "charCount"    # I
    .param p2, "charIndex"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 84
    .local v0, "chars":[C
    :goto_0
    shr-int/lit8 v1, p3, 0x4

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_1
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p1, :cond_0

    .line 106
    return-void

    .line 93
    :pswitch_1
    int-to-char v1, p3

    aput-char v1, v0, p2

    goto :goto_1

    .line 97
    :pswitch_2
    and-int/lit8 v1, p3, 0x1f

    shl-int/lit8 v1, v1, 0x6

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, p2

    goto :goto_1

    .line 100
    :pswitch_3
    and-int/lit8 v1, p3, 0xf

    shl-int/lit8 v1, v1, 0xc

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v0, p2

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v1

    and-int/lit16 p3, v1, 0xff

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public readInt(Z)I
    .locals 4
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 35
    .local v0, "b":I
    and-int/lit8 v1, v0, 0x7f

    .line 36
    .local v1, "result":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 38
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    .line 39
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 41
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v1, v2

    .line 42
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 44
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    .line 45
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 47
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .end local v1    # "result":I
    :goto_0
    return v1

    .restart local v1    # "result":I
    :cond_1
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    xor-int v1, v2, v3

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/DataInput;->readInt(Z)I

    move-result v1

    .line 59
    .local v1, "charCount":I
    packed-switch v1, :pswitch_data_0

    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    iget-object v5, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    array-length v5, v5

    if-ge v5, v1, :cond_0

    new-array v5, v1, [C

    iput-object v5, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/utils/DataInput;->chars:[C

    .line 69
    .local v4, "chars":[C
    const/4 v2, 0x0

    .line 70
    .local v2, "charIndex":I
    const/4 v0, 0x0

    .local v0, "b":I
    move v3, v2

    .line 71
    .end local v2    # "charIndex":I
    .local v3, "charIndex":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/DataInput;->read()I

    move-result v0

    .line 73
    const/16 v5, 0x7f

    if-le v0, v5, :cond_3

    .line 77
    :cond_1
    if-ge v3, v1, :cond_2

    invoke-direct {p0, v1, v3, v0}, Lcom/badlogic/gdx/utils/DataInput;->readUtf8_slow(III)V

    .line 78
    :cond_2
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v1}, Ljava/lang/String;-><init>([CII)V

    .end local v0    # "b":I
    .end local v3    # "charIndex":I
    .end local v4    # "chars":[C
    :goto_1
    return-object v5

    .line 61
    :pswitch_0
    const/4 v5, 0x0

    goto :goto_1

    .line 63
    :pswitch_1
    const-string v5, ""

    goto :goto_1

    .line 74
    .restart local v0    # "b":I
    .restart local v3    # "charIndex":I
    .restart local v4    # "chars":[C
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "charIndex":I
    .restart local v2    # "charIndex":I
    int-to-char v5, v0

    aput-char v5, v4, v3

    move v3, v2

    .end local v2    # "charIndex":I
    .restart local v3    # "charIndex":I
    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
