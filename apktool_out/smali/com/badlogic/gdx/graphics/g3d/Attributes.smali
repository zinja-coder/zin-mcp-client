.class public Lcom/badlogic/gdx/graphics/g3d/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field protected final attributes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mask:J

.field protected sorted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    return-void
.end method

.method private final disable(J)V
    .locals 5
    .param p1, "mask"    # J

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    .line 82
    return-void
.end method

.method private final enable(J)V
    .locals 3
    .param p1, "mask"    # J

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    .line 78
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 69
    return-void
.end method

.method public final compare(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)I
    .locals 4
    .param p1, "arg0"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "arg1"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 183
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    iget-wide v2, p2, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->compare(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    .line 207
    :cond_2
    instance-of v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 5
    .param p1, "type"    # J

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v2, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 48
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 46
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final get(Ljava/lang/Class;J)Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 2
    .param p2, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public final get(Lcom/badlogic/gdx/utils/Array;J)Lcom/badlogic/gdx/utils/Array;
    .locals 6
    .param p2, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;J)",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "out":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v2, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-object p1
.end method

.method public final getMask()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    return-wide v0
.end method

.method public final has(J)Z
    .locals 3
    .param p1, "type"    # J

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 195
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 196
    .local v2, "n":I
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x47

    .line 197
    .local v3, "result":I
    const/4 v1, 0x1

    .line 198
    .local v1, "m":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 199
    int-to-long v6, v3

    iget-wide v8, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v8

    mul-int/lit8 v8, v1, 0x7

    const v9, 0xffff

    and-int v1, v8, v9

    int-to-long v8, v1

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    long-to-int v3, v4

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return v3
.end method

.method protected indexOf(J)I
    .locals 5
    .param p1, "type"    # J

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v2, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 156
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 154
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(J)V
    .locals 7
    .param p1, "mask"    # J

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-wide v2, v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    .line 137
    .local v2, "type":J
    and-long v4, p1, v2

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 139
    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->disable(J)V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "type":J
    :cond_1
    return-void
.end method

.method public final same(Lcom/badlogic/gdx/graphics/g3d/Attributes;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z

    move-result v0

    return v0
.end method

.method public final same(Lcom/badlogic/gdx/graphics/g3d/Attributes;Z)Z
    .locals 10
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .param p2, "compareValues"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 164
    if-ne p1, p0, :cond_0

    move v1, v3

    .line 171
    :goto_0
    return v1

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    iget-wide v8, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->mask:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    :cond_1
    move v1, v4

    goto :goto_0

    .line 166
    :cond_2
    if-nez p2, :cond_3

    move v1, v3

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 168
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sort()V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->equals(Lcom/badlogic/gdx/graphics/g3d/Attribute;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_0

    .line 169
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v3

    .line 171
    goto :goto_0
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 4
    .param p1, "attribute"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 86
    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->indexOf(J)I

    move-result v0

    .line 87
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 88
    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/Attribute;->type:J

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->enable(J)V

    .line 89
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0, p1}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "attribute1"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "attribute2"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 100
    return-void
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "attribute1"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "attribute2"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p3, "attribute3"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 106
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 107
    return-void
.end method

.method public final set(Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 0
    .param p1, "attribute1"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p2, "attribute2"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p3, "attribute3"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .param p4, "attribute4"    # Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 114
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 115
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 116
    return-void
.end method

.method public final set(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "attributes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/Attribute;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .line 129
    .local v0, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto :goto_0

    .line 130
    .end local v0    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    :cond_0
    return-void
.end method

.method public final varargs set([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V
    .locals 4
    .param p1, "attributes"    # [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    .prologue
    .line 121
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/graphics/g3d/Attribute;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 122
    .local v1, "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "attr":Lcom/badlogic/gdx/graphics/g3d/Attribute;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public final sort()V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->attributes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/Attributes;->sorted:Z

    .line 36
    :cond_0
    return-void
.end method
