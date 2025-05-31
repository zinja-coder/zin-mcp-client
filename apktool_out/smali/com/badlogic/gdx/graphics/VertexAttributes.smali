.class public final Lcom/badlogic/gdx/graphics/VertexAttributes;
.super Ljava/lang/Object;
.source "VertexAttributes.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterator;,
        Lcom/badlogic/gdx/graphics/VertexAttributes$Usage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/graphics/VertexAttribute;",
        ">;"
    }
.end annotation


# instance fields
.field private final attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

.field private iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable",
            "<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mask:J

.field public final vertexSize:I


# direct methods
.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 4
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 60
    array-length v2, p1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "attributes must be >= 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    array-length v2, p1

    new-array v1, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 63
    .local v1, "list":[Lcom/badlogic/gdx/graphics/VertexAttribute;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 64
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 67
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->calculateOffsets()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    .line 68
    return-void
.end method

.method private calculateOffsets()I
    .locals 5

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v3, v2

    .line 91
    .local v0, "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    iput v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    .line 92
    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 93
    add-int/lit8 v1, v1, 0x4

    .line 89
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_1

    .line 98
    .end local v0    # "attribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    :cond_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 133
    instance-of v3, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 134
    check-cast v1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 135
    .local v1, "other":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v3, v3, v0

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 3
    .param p1, "usage"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    .line 82
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    .line 84
    :goto_1
    return-object v2

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMask()J
    .locals 8

    .prologue
    .line 146
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 147
    const-wide/16 v2, 0x0

    .line 148
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iput-wide v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    .line 153
    .end local v0    # "i":I
    .end local v2    # "result":J
    :cond_1
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->mask:J

    return-wide v4
.end method

.method public getOffset(I)I
    .locals 2
    .param p1, "usage"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 74
    .local v0, "vertexAttribute":Lcom/badlogic/gdx/graphics/VertexAttribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 75
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v1, v1, 0x4

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/graphics/VertexAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->iterable:Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes$ReadonlyIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 116
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttributes;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
