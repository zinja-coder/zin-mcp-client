.class public Lcom/badlogic/gdx/utils/StringBuilder;
.super Ljava/lang/Object;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final INITIAL_CAPACITY:I = 0x10

.field private static final digits:[C


# instance fields
.field public chars:[C

.field public length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-gez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 74
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 88
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 101
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 5
    .param p1, "min"    # I

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x2

    .line 105
    .local v1, "newSize":I
    if-le p1, v1, :cond_0

    .end local p1    # "min":I
    :goto_0
    new-array v0, p1, [C

    .line 106
    .local v0, "newData":[C
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 108
    return-void

    .end local v0    # "newData":[C
    .restart local p1    # "min":I
    :cond_0
    move p1, v1

    .line 105
    goto :goto_0
.end method

.method private move(II)V
    .locals 8
    .param p1, "size"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 329
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v4, v4

    iget v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v4, v5

    if-lt v4, p1, :cond_0

    .line 330
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v6, p2, p1

    iget v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v7, p2

    invoke-static {v4, p2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    :goto_0
    return-void

    .line 333
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int v0, v4, p1

    .local v0, "a":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v4, 0x2

    .line 334
    .local v1, "b":I
    if-le v0, v1, :cond_1

    move v3, v0

    .line 335
    .local v3, "newSize":I
    :goto_1
    new-array v2, v3, [C

    .line 336
    .local v2, "newData":[C
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v4, v6, v2, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v5, p2, p1

    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v6, p2

    invoke-static {v4, p2, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    goto :goto_0

    .end local v2    # "newData":[C
    .end local v3    # "newSize":I
    :cond_1
    move v3, v1

    .line 334
    goto :goto_1
.end method

.method public static numChars(II)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "radix"    # I

    .prologue
    .line 37
    if-gez p0, :cond_0

    const/4 v0, 0x2

    .line 38
    .local v0, "result":I
    :goto_0
    div-int/2addr p0, p1

    if-eqz p0, :cond_1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    .restart local v0    # "result":I
    :cond_1
    return v0
.end method

.method public static numChars(JI)I
    .locals 6
    .param p0, "value"    # J
    .param p2, "radix"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    cmp-long v1, p0, v4

    if-gez v1, :cond_0

    const/4 v0, 0x2

    .line 46
    .local v0, "result":I
    :goto_0
    int-to-long v2, p2

    div-long/2addr p0, v2

    cmp-long v1, p0, v4

    if-eqz v1, :cond_1

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    .restart local v0    # "result":I
    :cond_1
    return v0
.end method


# virtual methods
.method public append(C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 721
    return-object p0
.end method

.method public append(D)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 861
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 862
    return-object p0
.end method

.method public append(F)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 850
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 851
    return-object p0
.end method

.method public append(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "minLength"    # I

    .prologue
    .line 742
    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 11
    .param p1, "value"    # I
    .param p2, "minLength"    # I
    .param p3, "prefix"    # C

    .prologue
    const/16 v10, 0xa

    const v9, 0x5f5e100

    const v8, 0x989680

    const v7, 0xf4240

    const v6, 0x186a0

    .line 754
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 755
    const-string v1, "-2147483648"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 778
    :goto_0
    return-object p0

    .line 758
    :cond_0
    if-gez p1, :cond_1

    .line 759
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 760
    neg-int p1, p1

    .line 762
    :cond_1
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    .line 763
    invoke-static {p1, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(II)I

    move-result v1

    sub-int v0, p2, v1

    .local v0, "j":I
    :goto_1
    if-lez v0, :cond_2

    .line 764
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 763
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 766
    .end local v0    # "j":I
    :cond_2
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_8

    .line 767
    const v1, 0x3b9aca00

    if-lt p1, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    int-to-long v2, p1

    const-wide v4, 0x2540be400L

    rem-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 768
    :cond_3
    if-lt p1, v9, :cond_4

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const v2, 0x3b9aca00

    rem-int v2, p1, v2

    div-int/2addr v2, v9

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 769
    :cond_4
    if-lt p1, v8, :cond_5

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v9

    div-int/2addr v2, v8

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 770
    :cond_5
    if-lt p1, v7, :cond_6

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v8

    div-int/2addr v2, v7

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 771
    :cond_6
    if-lt p1, v6, :cond_7

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v7

    div-int/2addr v2, v6

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 772
    :cond_7
    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v6

    div-int/lit16 v2, v2, 0x2710

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 774
    :cond_8
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_9

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v2, p1, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 775
    :cond_9
    const/16 v1, 0x64

    if-lt p1, v1, :cond_a

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v2, p1, 0x3e8

    div-int/lit8 v2, v2, 0x64

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 776
    :cond_a
    if-lt p1, v10, :cond_b

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 v2, p1, 0x64

    div-int/lit8 v2, v2, 0xa

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 777
    :cond_b
    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 v2, p1, 0xa

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    goto/16 :goto_0
.end method

.method public append(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(JI)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # J
    .param p3, "minLength"    # I

    .prologue
    .line 797
    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 7
    .param p1, "value"    # J
    .param p3, "minLength"    # I
    .param p4, "prefix"    # C

    .prologue
    .line 808
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 809
    const-string v1, "-9223372036854775808"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 841
    :goto_0
    return-object p0

    .line 812
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 813
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 814
    neg-long p1, p1

    .line 816
    :cond_1
    const/4 v1, 0x1

    if-le p3, v1, :cond_2

    .line 817
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(JI)I

    move-result v1

    sub-int v0, p3, v1

    .local v0, "j":I
    :goto_1
    if-lez v0, :cond_2

    .line 818
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 817
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 820
    .end local v0    # "j":I
    :cond_2
    const-wide/16 v2, 0x2710

    cmp-long v1, p1, v2

    if-ltz v1, :cond_11

    .line 821
    const-wide v2, 0xde0b6b3a7640000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    long-to-double v2, p1

    const-wide v4, 0x43e158e460913d00L    # 1.0E19

    rem-double/2addr v2, v4

    const-wide v4, 0x43abc16d674ec800L    # 1.0E18

    div-double/2addr v2, v4

    double-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 822
    :cond_3
    const-wide v2, 0x16345785d8a0000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0xde0b6b3a7640000L

    rem-long v2, p1, v2

    const-wide v4, 0x16345785d8a0000L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 823
    :cond_4
    const-wide v2, 0x2386f26fc10000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_5

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x16345785d8a0000L

    rem-long v2, p1, v2

    const-wide v4, 0x2386f26fc10000L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 824
    :cond_5
    const-wide v2, 0x38d7ea4c68000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_6

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x2386f26fc10000L

    rem-long v2, p1, v2

    const-wide v4, 0x38d7ea4c68000L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 825
    :cond_6
    const-wide v2, 0x5af3107a4000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_7

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x38d7ea4c68000L

    rem-long v2, p1, v2

    const-wide v4, 0x5af3107a4000L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 826
    :cond_7
    const-wide v2, 0x9184e72a000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_8

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x5af3107a4000L

    rem-long v2, p1, v2

    const-wide v4, 0x9184e72a000L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 827
    :cond_8
    const-wide v2, 0xe8d4a51000L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_9

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x9184e72a000L

    rem-long v2, p1, v2

    const-wide v4, 0xe8d4a51000L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 828
    :cond_9
    const-wide v2, 0x174876e800L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_a

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0xe8d4a51000L

    rem-long v2, p1, v2

    const-wide v4, 0x174876e800L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 829
    :cond_a
    const-wide v2, 0x2540be400L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_b

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x174876e800L

    rem-long v2, p1, v2

    const-wide v4, 0x2540be400L

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 830
    :cond_b
    const-wide/32 v2, 0x3b9aca00

    cmp-long v1, p1, v2

    if-ltz v1, :cond_c

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide v2, 0x2540be400L

    rem-long v2, p1, v2

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 831
    :cond_c
    const-wide/32 v2, 0x5f5e100

    cmp-long v1, p1, v2

    if-ltz v1, :cond_d

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v2, 0x3b9aca00

    rem-long v2, p1, v2

    const-wide/32 v4, 0x5f5e100

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 832
    :cond_d
    const-wide/32 v2, 0x989680

    cmp-long v1, p1, v2

    if-ltz v1, :cond_e

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v2, 0x5f5e100

    rem-long v2, p1, v2

    const-wide/32 v4, 0x989680

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 833
    :cond_e
    const-wide/32 v2, 0xf4240

    cmp-long v1, p1, v2

    if-ltz v1, :cond_f

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v2, 0x989680

    rem-long v2, p1, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 834
    :cond_f
    const-wide/32 v2, 0x186a0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_10

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v2, 0xf4240

    rem-long v2, p1, v2

    const-wide/32 v4, 0x186a0

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 835
    :cond_10
    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/32 v2, 0x186a0

    rem-long v2, p1, v2

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 837
    :cond_11
    const-wide/16 v2, 0x3e8

    cmp-long v1, p1, v2

    if-ltz v1, :cond_12

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/16 v2, 0x2710

    rem-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 838
    :cond_12
    const-wide/16 v2, 0x64

    cmp-long v1, p1, v2

    if-ltz v1, :cond_13

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/16 v2, 0x3e8

    rem-long v2, p1, v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 839
    :cond_13
    const-wide/16 v2, 0xa

    cmp-long v1, p1, v2

    if-ltz v1, :cond_14

    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/16 v2, 0x64

    rem-long v2, p1, v2

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 840
    :cond_14
    sget-object v1, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    const-wide/16 v2, 0xa

    rem-long v2, p1, v2

    long-to-int v2, v2

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    goto/16 :goto_0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 3
    .param p1, "builder"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .prologue
    .line 929
    if-nez p1, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 933
    :goto_0
    return-object p0

    .line 932
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    goto :goto_0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "builder"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 951
    if-nez p1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 955
    :goto_0
    return-object p0

    .line 954
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 925
    :goto_0
    return-object p0

    .line 923
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 946
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 947
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 877
    :goto_0
    return-object p0

    .line 875
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 885
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 886
    return-object p0
.end method

.method public append(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 709
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 710
    return-object p0

    .line 709
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public append([C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "ch"    # [C

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 897
    return-object p0
.end method

.method public append([CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 910
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 911
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method final append0(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char p1, v0, v1

    .line 152
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    const-string p1, "null"

    .line 172
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 176
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 166
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 160
    .local v0, "adding":I
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int v1, v2, v0

    .line 161
    .local v1, "newSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 162
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 164
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 165
    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_0
.end method

.method final append0([C)V
    .locals 5
    .param p1, "value"    # [C

    .prologue
    .line 122
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v2, p1

    add-int v0, v1, v2

    .line 123
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 126
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 128
    return-void
.end method

.method final append0([CII)V
    .locals 4
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 132
    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset out of bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_3

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length out of bounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int v0, v1, p3

    .line 140
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 141
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 145
    return-void
.end method

.method public appendCodePoint(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    .prologue
    .line 965
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 966
    return-object p0
.end method

.method final appendNull()V
    .locals 5

    .prologue
    const/16 v4, 0x6c

    .line 111
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v1, 0x4

    .line 112
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 113
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 116
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 117
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v4, v1, v2

    .line 118
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v4, v1, v2

    .line 119
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 194
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 650
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 665
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 666
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 682
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public delete(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 977
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->delete0(II)V

    .line 978
    return-object p0
.end method

.method final delete0(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 201
    if-ltz p1, :cond_3

    .line 202
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v1, :cond_0

    .line 203
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 205
    :cond_0
    if-ne p2, p1, :cond_1

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_1
    if-le p2, p1, :cond_3

    .line 209
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int v0, v1, p2

    .line 210
    .local v0, "count":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p2, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_0

    .line 215
    .end local v0    # "count":I
    :cond_3
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public deleteCharAt(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->deleteCharAt0(I)V

    .line 989
    return-object p0
.end method

.method final deleteCharAt0(I)V
    .locals 4
    .param p1, "location"    # I

    .prologue
    .line 219
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v1, :cond_1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 222
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 223
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 224
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 227
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "min"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le p1, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x2

    .line 238
    .local v0, "twice":I
    if-le v0, p1, :cond_1

    .end local v0    # "twice":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 240
    :cond_0
    return-void

    .restart local v0    # "twice":I
    :cond_1
    move v0, p1

    .line 238
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1186
    if-ne p0, p1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return v5

    .line 1187
    :cond_1
    if-nez p1, :cond_2

    move v5, v6

    goto :goto_0

    .line 1188
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    move-object v4, p1

    .line 1189
    check-cast v4, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1190
    .local v4, "other":Lcom/badlogic/gdx/utils/StringBuilder;
    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1191
    .local v3, "length":I
    iget v7, v4, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v3, v7, :cond_4

    move v5, v6

    goto :goto_0

    .line 1192
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1193
    .local v0, "chars":[C
    iget-object v1, v4, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1194
    .local v1, "chars2":[C
    if-eq v0, v1, :cond_0

    .line 1195
    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    :cond_5
    move v5, v6

    goto :goto_0

    .line 1196
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1197
    aget-char v7, v0, v2

    aget-char v8, v1, v2

    if-eq v7, v8, :cond_7

    move v5, v6

    goto :goto_0

    .line 1196
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I

    .prologue
    .line 252
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    return-void
.end method

.method final getValue()[C
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1178
    const/16 v0, 0x1f

    .line 1179
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1180
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v2, 0x1f

    .line 1181
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([C)I

    move-result v3

    add-int v1, v2, v3

    .line 1182
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v6, -0x1

    .line 538
    if-gez p2, :cond_0

    .line 539
    const/4 p2, 0x0

    .line 541
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 542
    .local v5, "subCount":I
    if-lez v5, :cond_9

    .line 543
    add-int v7, v5, p2

    iget v8, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le v7, v8, :cond_2

    move v2, v6

    .line 569
    :cond_1
    :goto_0
    return v2

    .line 546
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 548
    .local v0, "firstChar":C
    :goto_1
    move v2, p2

    .line 549
    .local v2, "i":I
    const/4 v1, 0x0

    .line 550
    .local v1, "found":Z
    :goto_2
    iget v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v2, v7, :cond_3

    .line 551
    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_5

    .line 552
    const/4 v1, 0x1

    .line 556
    :cond_3
    if-eqz v1, :cond_4

    add-int v7, v5, v2

    iget v8, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le v7, v8, :cond_6

    :cond_4
    move v2, v6

    .line 557
    goto :goto_0

    .line 550
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 559
    :cond_6
    move v3, v2

    .local v3, "o1":I
    const/4 v4, 0x0

    .line 560
    .local v4, "o2":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_8

    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_7

    .line 563
    :cond_8
    if-eq v4, v5, :cond_1

    .line 566
    add-int/lit8 p2, v2, 0x1

    .line 567
    goto :goto_1

    .line 569
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_9
    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v6, :cond_a

    if-nez p2, :cond_b

    :cond_a
    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_0

    :cond_b
    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_3
.end method

.method public insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    .line 1014
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(IC)V

    .line 1015
    return-object p0
.end method

.method public insert(ID)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 1066
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1067
    return-object p0
.end method

.method public insert(IF)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 1053
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1054
    return-object p0
.end method

.method public insert(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 1027
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1028
    return-object p0
.end method

.method public insert(IJ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 1040
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1041
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1134
    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1135
    return-object p0

    .line 1134
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 1152
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1079
    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1080
    return-object p0

    .line 1079
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1091
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1092
    return-object p0
.end method

.method public insert(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 1001
    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1002
    return-object p0

    .line 1001
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public insert(I[C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "ch"    # [C

    .prologue
    .line 1104
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[C)V

    .line 1105
    return-object p0
.end method

.method public insert(I[CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # [C
    .param p3, "strOffset"    # I
    .param p4, "strLen"    # I

    .prologue
    .line 1120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[CII)V

    .line 1121
    return-object p0
.end method

.method final insert0(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 286
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 290
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    .line 292
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 293
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 312
    if-nez p2, :cond_0

    .line 313
    const-string p2, "null"

    .line 315
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_2

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 318
    :cond_2
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 319
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 296
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v1, :cond_2

    .line 297
    if-nez p2, :cond_0

    .line 298
    const-string p2, "null"

    .line 300
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    .local v0, "min":I
    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 303
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 304
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 309
    :cond_1
    return-void

    .line 307
    .end local v0    # "min":I
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method final insert0(I[C)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # [C

    .prologue
    .line 259
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p1, v0, :cond_1

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 262
    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 263
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 264
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 267
    :cond_2
    return-void
.end method

.method final insert0(I[CII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    .prologue
    .line 270
    if-ltz p1, :cond_2

    if-gt p1, p4, :cond_2

    .line 272
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    .line 273
    if-eqz p4, :cond_0

    .line 274
    invoke-direct {p0, p4, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 278
    :cond_0
    return-void

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", char[].length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 581
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v6, -0x1

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 595
    .local v5, "subCount":I
    iget v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt v5, v7, :cond_9

    if-ltz p2, :cond_9

    .line 596
    if-lez v5, :cond_7

    .line 597
    iget v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v7, v5

    if-le p2, v7, :cond_0

    .line 598
    iget v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int p2, v7, v5

    .line 601
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 603
    .local v0, "firstChar":C
    :goto_0
    move v2, p2

    .line 604
    .local v2, "i":I
    const/4 v1, 0x0

    .line 605
    .local v1, "found":Z
    :goto_1
    if-ltz v2, :cond_1

    .line 606
    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v7, v7, v2

    if-ne v7, v0, :cond_3

    .line 607
    const/4 v1, 0x1

    .line 611
    :cond_1
    if-nez v1, :cond_4

    move v2, v6

    .line 626
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return v2

    .line 605
    .restart local v0    # "firstChar":C
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 614
    :cond_4
    move v3, v2

    .local v3, "o1":I
    const/4 v4, 0x0

    .line 615
    .local v4, "o2":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_6

    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v7, v7, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_5

    .line 618
    :cond_6
    if-eq v4, v5, :cond_2

    .line 621
    add-int/lit8 p2, v2, -0x1

    .line 622
    goto :goto_0

    .line 624
    .end local v0    # "firstChar":C
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "o1":I
    .end local v4    # "o2":I
    :cond_7
    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p2, v6, :cond_8

    move v6, p2

    :goto_3
    move v2, v6

    goto :goto_2

    :cond_8
    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    goto :goto_3

    :cond_9
    move v2, v6

    .line 626
    goto :goto_2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1166
    return-object p0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 343
    if-ltz p1, :cond_5

    .line 344
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v2, :cond_0

    .line 345
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 347
    :cond_0
    if-le p2, p1, :cond_3

    .line 348
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 349
    .local v1, "stringLength":I
    sub-int v2, p2, p1

    sub-int v0, v2, v1

    .line 350
    .local v0, "diff":I
    if-lez v0, :cond_2

    .line 352
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v4, p1, v1

    iget v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p3, v2, v1, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 358
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 366
    .end local v0    # "diff":I
    .end local v1    # "stringLength":I
    :goto_1
    return-void

    .line 353
    .restart local v0    # "diff":I
    .restart local v1    # "stringLength":I
    :cond_2
    if-gez v0, :cond_1

    .line 355
    neg-int v2, v0

    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    goto :goto_0

    .line 361
    .end local v0    # "diff":I
    .end local v1    # "stringLength":I
    :cond_3
    if-ne p1, p2, :cond_5

    .line 362
    if-nez p3, :cond_4

    .line 363
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 365
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_1

    .line 369
    :cond_5
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public reverse()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->reverse0()V

    .line 1174
    return-object p0
.end method

.method final reverse0()V
    .locals 13

    .prologue
    .line 373
    iget v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v11, -0x1

    .line 377
    .local v2, "end":I
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v12, 0x0

    aget-char v5, v11, v12

    .line 378
    .local v5, "frontHigh":C
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v4, v11, v2

    .line 379
    .local v4, "endLow":C
    const/4 v1, 0x1

    .local v1, "allowFrontSur":Z
    const/4 v0, 0x1

    .line 380
    .local v0, "allowEndSur":Z
    const/4 v7, 0x0

    .local v7, "i":I
    iget v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    div-int/lit8 v8, v11, 0x2

    .end local v1    # "allowFrontSur":Z
    .local v8, "mid":I
    :goto_1
    if-ge v7, v8, :cond_8

    .line 381
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v7, 0x1

    aget-char v6, v11, v12

    .line 382
    .local v6, "frontLow":C
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v2, -0x1

    aget-char v3, v11, v12

    .line 383
    .local v3, "endHigh":C
    if-eqz v1, :cond_3

    const v11, 0xdc00

    if-lt v6, v11, :cond_3

    const v11, 0xdfff

    if-gt v6, v11, :cond_3

    const v11, 0xd800

    if-lt v5, v11, :cond_3

    const v11, 0xdbff

    if-gt v5, v11, :cond_3

    const/4 v10, 0x1

    .line 385
    .local v10, "surAtFront":Z
    :goto_2
    if-eqz v10, :cond_2

    iget v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 388
    :cond_2
    if-eqz v0, :cond_4

    const v11, 0xd800

    if-lt v3, v11, :cond_4

    const v11, 0xdbff

    if-gt v3, v11, :cond_4

    const v11, 0xdc00

    if-lt v4, v11, :cond_4

    const v11, 0xdfff

    if-gt v4, v11, :cond_4

    const/4 v9, 0x1

    .line 389
    .local v9, "surAtEnd":Z
    :goto_3
    const/4 v0, 0x1

    move v1, v0

    .line 390
    .local v1, "allowFrontSur":I
    if-ne v10, v9, :cond_6

    .line 391
    if-eqz v10, :cond_5

    .line 393
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v11, v2

    .line 394
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v2, -0x1

    aput-char v5, v11, v12

    .line 395
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v3, v11, v7

    .line 396
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v7, 0x1

    aput-char v4, v11, v12

    .line 397
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v7, 0x2

    aget-char v5, v11, v12

    .line 398
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v12, v2, -0x2

    aget-char v4, v11, v12

    .line 399
    add-int/lit8 v7, v7, 0x1

    .line 400
    add-int/lit8 v2, v2, -0x1

    .line 380
    .end local v1    # "allowFrontSur":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 383
    .end local v9    # "surAtEnd":Z
    .end local v10    # "surAtFront":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 388
    .restart local v10    # "surAtFront":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 403
    .restart local v1    # "allowFrontSur":I
    .restart local v9    # "surAtEnd":Z
    :cond_5
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v5, v11, v2

    .line 404
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v4, v11, v7

    .line 405
    move v5, v6

    .line 406
    move v4, v3

    goto :goto_4

    .line 409
    :cond_6
    if-eqz v10, :cond_7

    .line 411
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v11, v2

    .line 412
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v4, v11, v7

    .line 413
    move v4, v3

    .line 414
    const/4 v1, 0x0

    .local v1, "allowFrontSur":Z
    goto :goto_4

    .line 417
    .local v1, "allowFrontSur":I
    :cond_7
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v5, v11, v2

    .line 418
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v3, v11, v7

    .line 419
    move v5, v6

    .line 420
    const/4 v0, 0x0

    goto :goto_4

    .line 424
    .end local v1    # "allowFrontSur":I
    .end local v3    # "endHigh":C
    .end local v6    # "frontLow":C
    .end local v9    # "surAtEnd":Z
    .end local v10    # "surAtFront":Z
    :cond_8
    iget v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    if-eqz v1, :cond_9

    if-nez v0, :cond_0

    .line 425
    :cond_9
    iget-object v11, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    if-eqz v1, :cond_a

    .end local v4    # "endLow":C
    :goto_5
    aput-char v4, v11, v2

    goto/16 :goto_0

    .restart local v4    # "endLow":C
    :cond_a
    move v4, v5

    goto :goto_5
.end method

.method public setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 435
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p1, v0, :cond_1

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    .line 439
    return-void
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "newLength"    # I

    .prologue
    .line 448
    if-gez p1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 452
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 458
    :cond_1
    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 459
    return-void

    .line 454
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v0, p1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 467
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    .line 468
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne p1, v0, :cond_0

    .line 469
    const-string v0, ""

    .line 473
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 475
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 486
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_1

    .line 487
    if-ne p1, p2, :cond_0

    .line 488
    const-string v0, ""

    .line 492
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 502
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 503
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public trimToSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 634
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 635
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    new-array v0, v1, [C

    .line 636
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 639
    .end local v0    # "newValue":[C
    :cond_0
    return-void
.end method
