.class public Lcom/badlogic/gdx/utils/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ArrayMap$Keys;,
        Lcom/badlogic/gdx/utils/ArrayMap$Values;,
        Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field private keysIter2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public ordered:Z

.field public size:I

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

.field private valuesIter2:Lcom/badlogic/gdx/utils/ArrayMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 5
    .param p1, "array"    # Lcom/badlogic/gdx/utils/ArrayMap;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 80
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 82
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "keyArrayType"    # Ljava/lang/Class;
    .param p2, "valueArrayType"    # Ljava/lang/Class;

    .prologue
    .line 73
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I

    .prologue
    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 57
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 58
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "ordered"    # Z
    .param p2, "capacity"    # I
    .param p3, "keyArrayType"    # Ljava/lang/Class;
    .param p4, "valueArrayType"    # Ljava/lang/Class;

    .prologue
    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 67
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 68
    invoke-static {p4, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 331
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 332
    .local v1, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 333
    .local v3, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 334
    aput-object v4, v1, v0

    .line 335
    aput-object v4, v3, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 338
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .prologue
    .line 322
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 327
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x1

    .line 202
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 203
    .local v2, "keys":[Ljava/lang/Object;, "[TK;"
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 204
    .local v0, "i":I
    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    .line 205
    .end local v0    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 206
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_0

    .line 211
    :goto_0
    return v3

    :cond_1
    move v1, v0

    .line 208
    .end local v0    # "i":I
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    .line 209
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    move v0, v1

    .line 211
    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x1

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 217
    .local v2, "values":[Ljava/lang/Object;, "[TV;"
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v4, -0x1

    .line 218
    .local v0, "i":I
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    .line 219
    .end local v0    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 220
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_0

    .line 225
    :goto_0
    return v3

    :cond_1
    move v1, v0

    .line 222
    .end local v0    # "i":I
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    .line 223
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    move v0, v1

    .line 225
    .end local v1    # "i":I
    .restart local v0    # "i":I
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "additionalCapacity"    # I

    .prologue
    .line 350
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int v0, v1, p1

    .line 351
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 429
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    if-nez v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 433
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 434
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 435
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 440
    :goto_0
    return-object v0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->index:I

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries1:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->valid:Z

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries2:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public firstValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Map is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 129
    .local v1, "keys":[Ljava/lang/Object;
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v2, -0x1

    .line 130
    .local v0, "i":I
    if-nez p1, :cond_2

    .line 131
    :goto_0
    if-ltz v0, :cond_3

    .line 132
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 137
    :goto_1
    return-object v2

    .line 131
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 134
    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-ltz v0, :cond_3

    .line 135
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_1

    .line 137
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TK;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 145
    .local v1, "values":[Ljava/lang/Object;
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v2, -0x1

    .line 146
    .local v0, "i":I
    if-nez p2, :cond_0

    if-nez p1, :cond_3

    .line 147
    :cond_0
    :goto_0
    if-ltz v0, :cond_4

    .line 148
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 153
    :goto_1
    return-object v2

    .line 147
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-ltz v0, :cond_4

    .line 151
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    goto :goto_1

    .line 153
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getKeyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 230
    .local v1, "keys":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 232
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    move v3, v0

    .line 237
    :goto_1
    return v3

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2    # "n":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 235
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    .line 234
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public indexOfValue(Ljava/lang/Object;Z)I
    .locals 4
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)I"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 242
    .local v2, "values":[Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 243
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 244
    aget-object v3, v2, v0

    if-ne v3, p1, :cond_1

    move v3, v0

    .line 249
    :goto_1
    return v3

    .line 243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 247
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    .line 246
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 249
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 199
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ArrayMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 467
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 471
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 472
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 473
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 478
    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->index:I

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter1:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->valid:Z

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter2:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    goto :goto_0
.end method

.method public peekKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 89
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 90
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .end local v0    # "index":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 92
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 94
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 5
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)I"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "existingIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 103
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p3

    invoke-static {v1, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p3

    invoke-static {v1, p3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, p3

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, p3

    .line 107
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 108
    return p3

    .line 101
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 102
    const/16 v1, 0x8

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    goto :goto_0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/utils/ArrayMap;

    .prologue
    .line 112
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V

    .line 113
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/ArrayMap;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 116
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    add-int v1, p2, p3

    iget v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-le v1, v2, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset + length must be <= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v1, p3

    sub-int v0, v1, p2

    .line 119
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x8

    int-to-float v2, v0

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 120
    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 123
    return-void
.end method

.method public removeIndex(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 296
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 298
    .local v0, "keys":[Ljava/lang/Object;
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 299
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v1, :cond_1

    .line 300
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aput-object v5, v0, v1

    .line 307
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aput-object v5, v1, v2

    .line 308
    return-void

    .line 303
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v1, v0, v1

    aput-object v1, v0, p1

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    goto :goto_0
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 254
    .local v1, "keys":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 256
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_0

    .line 257
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 258
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 271
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v3

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v2    # "n":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 264
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 266
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_1

    .line 263
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 271
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x1

    .line 275
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 276
    .local v2, "values":[Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 277
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 278
    aget-object v4, v2, v0

    if-ne v4, p1, :cond_1

    .line 279
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 291
    :goto_1
    return v3

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .restart local v1    # "n":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 285
    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_1

    .line 284
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 291
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 355
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 356
    .local v0, "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 359
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 360
    .local v1, "newValues":[Ljava/lang/Object;, "[TV;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 362
    return-void
.end method

.method public reverse()V
    .locals 8

    .prologue
    .line 365
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v2, v6, -0x1

    .local v2, "lastIndex":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    div-int/lit8 v3, v6, 0x2

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 366
    sub-int v1, v2, v0

    .line 367
    .local v1, "ii":I
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v4, v6, v0

    .line 368
    .local v4, "tempKey":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v7, v7, v1

    aput-object v7, v6, v0

    .line 369
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v4, v6, v1

    .line 371
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v5, v6, v0

    .line 372
    .local v5, "tempValue":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v7, v7, v1

    aput-object v7, v6, v0

    .line 373
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v5, v6, v1

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "ii":I
    .end local v4    # "tempKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "tempValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 179
    return-void
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 184
    return-void
.end method

.method public shrink()V
    .locals 2

    .prologue
    .line 343
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ne v0, v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    goto :goto_0
.end method

.method public shuffle()V
    .locals 6

    .prologue
    .line 378
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 379
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 380
    .local v1, "ii":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .line 381
    .local v2, "tempKey":Ljava/lang/Object;, "TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    .line 382
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 384
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 385
    .local v3, "tempValue":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    .line 386
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 378
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 388
    .end local v1    # "ii":I
    .end local v2    # "tempKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "tempValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 402
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v4, :cond_0

    const-string v4, "{}"

    .line 417
    :goto_0
    return-object v4

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 404
    .local v2, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 405
    .local v3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 406
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 407
    aget-object v4, v2, v5

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 408
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 409
    aget-object v4, v3, v5

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 410
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v1, v4, :cond_1

    .line 411
    const-string v4, ", "

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 412
    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 413
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 414
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_1
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 417
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 3
    .param p1, "newSize"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 393
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v1, p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 396
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    goto :goto_0
.end method

.method public values()Lcom/badlogic/gdx/utils/ArrayMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/utils/ArrayMap;, "Lcom/badlogic/gdx/utils/ArrayMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 448
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 459
    :goto_0
    return-object v0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 458
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter1:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->valid:Z

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter2:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    goto :goto_0
.end method
